import serial
import numpy as np

#PORT = "/dev/tty.usbmodem1422303"
PORT = "COM5"
Baudrate = 115200


def synchronise_UART(serial_port):
    """
    Synchronizes the UART communication by sending a byte and waiting for a response.

    Args:
        serial_port (serial.Serial): The serial port object to use for communication.

    Returns:
        None
    """
    while (1):
        serial_port.write(b"\xAB")
        ret = serial_port.read(1)
        if (ret == b"\xCD"):
            serial_port.reset_input_buffer()
            break


def send_inputs_to_FPGA(inputs, serial_port):
    """
    Sends a numpy array of inputs to the FPGA via a serial port.

    Args:
        inputs (numpy.ndarray): The inputs to send to the FPGA.
        serial_port (serial.Serial): The serial port to use for communication.

    Returns:
        None
    """
    inputs = inputs.astype(np.float32)
    buffer = b""
    for x in inputs:
        buffer += x.tobytes()
    serial_port.write(buffer)


def read_output_from_FPGA(serial_port):
    """
    Reads 40 bytes from the given serial port and returns a list of float values obtained by dividing each byte by 255.

    Args:
    serial_port: A serial port object.

    Returns:
    A list of float values obtained by dividing each byte by 255.
    """
    output = serial_port.read(40)
    if(len(output) != 40):
        raise TimeoutError(f"Received {len(output)} bytes received from FPGA instead of 40 bytes")
    return np.frombuffer(output, dtype="<f4").tolist()  # Convert bytes to list of floats   



def evaluate_model_on_FPGA(iterations, serial_port):
    """
    Evaluates the accuracy of a machine learning model on an FPGA device.

    Args:
        iterations (int): The number of iterations to run the evaluation for.
        serial_port (Serial): The serial port object used to communicate with the FPGA device.

    Returns:
        float: The accuracy of the model, as a percentage.
    """
    accuracy = 0
    for i in range(iterations):
        print(f"----- Iteration {i+1} -----")
        send_inputs_to_FPGA(X_test[i], serial_port)
        output = read_output_from_FPGA(serial_port)
        if (np.argmax(output) == np.argmax(Y_test[i])):
            accuracy += 1 / iterations
        print(f"   Expected output: {Y_test[i]}")
        print(f"   Received output: {output}")
        print(f"----------------------- Accuracy: {accuracy:.2f}\n")
    return accuracy


if __name__ == '__main__':
    X_test = np.load("data/MNIST_xtest_NN_C2_16_10.npy")
    Y_test = np.load("data/MNIST_ytest_NN_C2_16_10.npy")

    with serial.Serial(PORT, 115200, timeout=5) as ser:
        print("Synchronising...")
        synchronise_UART(ser)
        print("Synchronised")

        print("Evaluating model on FPGA...")
        error = evaluate_model_on_FPGA(100, ser)