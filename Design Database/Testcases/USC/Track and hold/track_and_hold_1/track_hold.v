//Verilog block level netlist file for netlist_TH
//Generated by UMN for ALIGN project 


module top ( CN, CP, IN, IP, ON, OP, VCM, VDD, VSS );
Cap_30f_1x3 CC0 ( .MINUS(VCM), .PLUS(OP) ); 
Cap_30f_1x3 CC1 ( .MINUS(VCM), .PLUS(OP) ); 
Cap_30f_1x3 CC2 ( .MINUS(VCM), .PLUS(OP) ); 
Cap_30f_1x3 CC3 ( .MINUS(VCM), .PLUS(OP) ); 
Cap_30f_1x3 CC4 ( .MINUS(VCM), .PLUS(ON) ); 
Cap_30f_1x3 CC5 ( .MINUS(VCM), .PLUS(ON) ); 
Cap_30f_1x3 CC6 ( .MINUS(VCM), .PLUS(ON) ); 
Cap_30f_1x3 CC7 ( .MINUS(VCM), .PLUS(ON) ); 
Switch_NMOS_16x8 MN0 ( .D(OP), .G(CP), .S(IP) ); 
Switch_PMOS_16x8 MN1 ( .D(IP), .G(CN), .S(OP) ); 
Switch_NMOS_16x8 MN2 ( .D(ON), .G(CP), .S(IN) ); 
Switch_PMOS_16x8 MP0 ( .D(IN), .G(CN), .S(ON) ); 

endmodule


// End HDL models
// Global nets module
`celldefine
module cds_globals;

supply0 VDD;
supply1 VSS;

endmodule
`endcelldefine
