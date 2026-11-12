`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2026 15:09:33
// Design Name: 
// Module Name: mult_float_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mult_float_tb(

    );
    parameter integer C_S00_AXI_DATA_WIDTH	= 32;
    parameter integer C_S00_AXI_ADDR_WIDTH	= 4;
    
    wire  s00_axi_aclk;
    wire  s00_axi_aresetn;
    wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr;
    wire [2 : 0] s00_axi_awprot;
    wire  s00_axi_awvalid;
    wire  s00_axi_awready;
    wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata;
    wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb;
    wire  s00_axi_wvalid;
    wire  s00_axi_wready;
    wire [1 : 0] s00_axi_bresp;
    wire  s00_axi_bvalid;
    wire  s00_axi_bready;
    wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr;
    wire [2 : 0] s00_axi_arprot;
    wire  s00_axi_arvalid;
    wire  s00_axi_arready;
    wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata;
    wire [1 : 0] s00_axi_rresp;
    wire  s00_axi_rvalid;
    wire  s00_axi_rready;
    
    mult_float32 #
(
		// Parameters of Axi Slave Bus Interface S00_AXI
		.C_S00_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S00_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	)
DUT(
		// Ports of Axi Slave Bus Interface S00_AXI
		.s00_axi_aclk(s00_axi_aclk),
		.s00_axi_aresetn(s00_axi_aresetn),
		.s00_axi_awaddr(s00_axi_awaddr),
		.s00_axi_awprot(s00_axi_awprot),
		.s00_axi_awvalid(s00_axi_awvalid),
		.s00_axi_awready(s00_axi_awready),
		.s00_axi_wdata(s00_axi_wdata),
		.s00_axi_wstrb(s00_axi_wstrb),
		.s00_axi_wvalid(s00_axi_wvalid),
		.s00_axi_wready(s00_axi_wready),
		.s00_axi_bresp(s00_axi_bresp),
		.s00_axi_bvalid(s00_axi_bvalid),
		.s00_axi_bready(s00_axi_bready),
		.s00_axi_araddr(s00_axi_araddr),
		.s00_axi_arprot(s00_axi_arprot),
		.s00_axi_arvalid(s00_axi_arvalid),
		.s00_axi_arready(s00_axi_arready),
		.s00_axi_rdata(s00_axi_rdata),
		.s00_axi_rresp(s00_axi_rresp),
		.s00_axi_rvalid(s00_axi_rvalid),
		.s00_axi_rready(s00_axi_rready)
	);
    
    always #5 s00_axi_aclk = ~s00_axi_aclk;
    
    initial begin
		// Initialisation des signaux
		s00_axi_aclk = 0;
		s00_axi_aresetn = 0;
		s00_axi_awaddr = 0;
		s00_axi_awprot = 0;
		s00_axi_awvalid = 0;
		s00_axi_wdata = 0;
		s00_axi_wstrb = 4'hF;
		s00_axi_wvalid = 0;
		s00_axi_bready = 0;
		s00_axi_araddr = 0;
		s00_axi_arprot = 0;
		s00_axi_arvalid = 0;
		s00_axi_rready = 0;

		// Application du reset
		#20;
		s00_axi_aresetn = 1;
		#20;

		// 1. Écriture de l'opérande A = 2.0 (0x40000000) dans slv_reg0 (Adresse 0x0)
		axi_write(4'h0, 32'h40000000); 
		
		// 2. Écriture de l'opérande B = 3.0 (0x40400000) dans slv_reg1 (Adresse 0x4)
		axi_write(4'h4, 32'h40400000); 

		// Attente du calcul par le bloc IP Floating Point (latence de quelques cycles)
		#100;

		// 3. Lecture du résultat (slv_reg2 / result_reg) à l'adresse 0x8 avec vérification
		axi_read_and_check(4'h8, 32'h40C00000); // 32'h40C00000 correspond à 6.0 en FP32

		#50;
		$display("Fin de la simulation.");
		$finish;
	end

	// Tâche d'écriture AXI-Lite
	task axi_write;
		input [3:0] addr;
		input [31:0] data;
		begin
			@(posedge s00_axi_aclk);
			s00_axi_awaddr  <= addr;
			s00_axi_awvalid <= 1'b1;
			s00_axi_wdata   <= data;
			s00_axi_wstrb   <= 4'hF;
			s00_axi_wvalid  <= 1'b1;
			s00_axi_bready  <= 1'b1;
			
			@(posedge s00_axi_aclk);
			while (!s00_axi_awready || !s00_axi_wready) @(posedge s00_axi_aclk);
			
			s00_axi_awvalid <= 1'b0;
			s00_axi_wvalid  <= 1'b0;
			
			while (!s00_axi_bvalid) @(posedge s00_axi_aclk);
			s00_axi_bready  <= 1'b0;
		end
	endtask

	// Tâche de lecture AXI-Lite avec assertion intégrée
	task axi_read_and_check;
		input [3:0] addr;
		input [31:0] expected_data;
		begin
			@(posedge s00_axi_aclk);
			s00_axi_araddr  <= addr;
			s00_axi_arvalid <= 1'b1;
			s00_axi_rready  <= 1'b1;
			
			@(posedge s00_axi_aclk);
			while (!s00_axi_arready) @(posedge s00_axi_aclk);
			s00_axi_arvalid <= 1'b0;
			
			while (!s00_axi_rvalid) @(posedge s00_axi_aclk);
			
			$display("Time=%0t | Adresse=0x%h | Valeur lue=0x%h | Attendue=0x%h", $time, addr, s00_axi_rdata, expected_data);
			
			if (s00_axi_rdata === expected_data) begin
				$display("[SUCCÈS] Le résultat de la multiplication flotante est correct !");
			end else begin
				$display("[ERREUR] Échec de la vérification : valeur obtenue différente de la valeur attendue.");
			end
			
			s00_axi_rready  <= 1'b0;
		end
	endtask

endmodule
    
