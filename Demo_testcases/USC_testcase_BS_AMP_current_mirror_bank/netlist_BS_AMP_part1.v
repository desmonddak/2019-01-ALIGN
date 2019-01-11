//Verilog block level netlist file for netlist_BS_AMP
//Generated by UMN for ALIGN project 

module netlist_BS_AMP ( VDD ); 
input VDD;
Amp_diff_norm_rvt I37 ( .IBSn(net022), .IN(net019), .IP(net020), .ON(rON), .OP(rOP), .VDD(VDD), .VSS(gnd!) ); 
IBS_norm_rvt I34 ( .IBS_IN(net021), .IBSn_OUT(net038), .IBSp_OUT(net022), .VDD(VDD), .VSS(gnd!) );
IBS_norm_rvt I6 ( .IBS_IN(net013), .IBSn_OUT(net06), .IBSp_OUT(net032), .VDD(VDD), .VSS(gnd!) );
res_3K RR8 ( .net014(net014), .gnd!(gnd!) ); 

endmodule

module SCM_BANK ( IBS_IN, IBSp_OUT, VDD, net7 ); 
input IBS_IN, IBSp_OUT, VDD, net7;

Switch_PMOS_1_4x3 MP0 ( .net7(net7), .IBS_IN(IBS_IN), .VDD(VDD) ); 
Switch_PMOS_1_4x3 MP1 ( .IBS_IN(IBS_IN), .IBS_IN(IBS_IN), .VDD(VDD) ); 
Switch_PMOS_4_4x3 MP2 ( .IBSp_OUT(IBS_IN), .IBS_IN(IBSp_OUT), .VDD(VDD) ); 
  
endmodule

module IBS_norm_rvt ( IBS_IN, IBSn_OUT, IBSp_OUT, VDD, VSS ); 
input IBS_IN, IBSn_OUT, IBSp_OUT, VDD, VSS;

SCM_BANK MP0_MP1_MP2 ( .IBS_IN(IBS_IN), .IBSp_OUT(IBSp_OUT), .VDD(VDD), .net7(net7) ); 
SCM_NMOS_1x4_4x3 MN1_MN2 ( .D1(net7), .D2(IBSn_OUT), .S(VSS) ); 

endmodule

module Amp_diff_norm_rvt ( IBSn, IN, IP, ON, OP, VDD, VSS ); 
input IBSn, IN, IP, ON, OP, VDD, VSS;

res_3p83 RR0 ( .ON(ON), .VDD(VDD) ); 
res_3p83 RR9 ( .OP(OP), .VDD(VDD) ); 
SCM_NMOS_4x4_4x3 MN3_MN0 ( .D1(IBSn), .D2(net39), .S(VSS) ); 
DP_NMOS_2x2_4x3 MN1_MN2 ( .D1(ON), .G1(IP), .S(net39), .D2(OP), .G2(IN) ); 

endmodule


// End HDL models
// Global nets module
`celldefine
module cds_globals;

supply0 VDD;
supply1 VSS;

endmodule
`endcelldefine
