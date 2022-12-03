// This is the unpowered netlist.
module user_project_wrapper (user_clock2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 wire \csa_wire[10] ;
 wire \csa_wire[11] ;
 wire \csa_wire[12] ;
 wire \csa_wire[13] ;
 wire \csa_wire[14] ;
 wire \csa_wire[15] ;
 wire \csa_wire[1] ;
 wire \csa_wire[2] ;
 wire \csa_wire[3] ;
 wire \csa_wire[4] ;
 wire \csa_wire[5] ;
 wire \csa_wire[6] ;
 wire \csa_wire[7] ;
 wire \csa_wire[8] ;
 wire \csa_wire[9] ;

 top_wrapper dut_top (.BL0(analog_io[19]),
    .REF_CSA(analog_io[15]),
    .SL0(analog_io[17]),
    .V0_REF_ADC(analog_io[12]),
    .V1_BL(analog_io[8]),
    .V1_REF_ADC(analog_io[13]),
    .V1_SL(analog_io[4]),
    .V1_WL(analog_io[0]),
    .V2_BL(analog_io[9]),
    .V2_REF_ADC(analog_io[14]),
    .V2_SL(analog_io[5]),
    .V2_WL(analog_io[1]),
    .V3_BL(analog_io[10]),
    .V3_SL(analog_io[6]),
    .V3_WL(analog_io[2]),
    .V4_BL(analog_io[11]),
    .V4_SL(analog_io[7]),
    .V4_WL(analog_io[3]),
    .VDD_PRE(analog_io[16]),
    .WL0(analog_io[18]),
    .clk(wb_clk_i),
    .enable_IM(la_data_in[0]),
    .rst(wb_rst_i),
    .wbs_we_i(wbs_we_i),
    .ADC_OUT_OBS({analog_io[22],
    analog_io[21],
    analog_io[20]}),
    .CSA({\csa_wire[15] ,
    \csa_wire[14] ,
    \csa_wire[13] ,
    \csa_wire[12] ,
    \csa_wire[11] ,
    \csa_wire[10] ,
    \csa_wire[9] ,
    \csa_wire[8] ,
    \csa_wire[7] ,
    \csa_wire[6] ,
    \csa_wire[5] ,
    \csa_wire[4] ,
    \csa_wire[3] ,
    \csa_wire[2] ,
    \csa_wire[1] ,
    analog_io[20]}),
    .wishbone_address_bus({wbs_adr_i[31],
    wbs_adr_i[30],
    wbs_adr_i[29],
    wbs_adr_i[28],
    wbs_adr_i[27],
    wbs_adr_i[26],
    wbs_adr_i[25],
    wbs_adr_i[24],
    wbs_adr_i[23],
    wbs_adr_i[22],
    wbs_adr_i[21],
    wbs_adr_i[20],
    wbs_adr_i[19],
    wbs_adr_i[18],
    wbs_adr_i[17],
    wbs_adr_i[16],
    wbs_adr_i[15],
    wbs_adr_i[14],
    wbs_adr_i[13],
    wbs_adr_i[12],
    wbs_adr_i[11],
    wbs_adr_i[10],
    wbs_adr_i[9],
    wbs_adr_i[8],
    wbs_adr_i[7],
    wbs_adr_i[6],
    wbs_adr_i[5],
    wbs_adr_i[4],
    wbs_adr_i[3],
    wbs_adr_i[2],
    wbs_adr_i[1],
    wbs_adr_i[0]}),
    .wishbone_data_in({wbs_dat_i[31],
    wbs_dat_i[30],
    wbs_dat_i[29],
    wbs_dat_i[28],
    wbs_dat_i[27],
    wbs_dat_i[26],
    wbs_dat_i[25],
    wbs_dat_i[24],
    wbs_dat_i[23],
    wbs_dat_i[22],
    wbs_dat_i[21],
    wbs_dat_i[20],
    wbs_dat_i[19],
    wbs_dat_i[18],
    wbs_dat_i[17],
    wbs_dat_i[16],
    wbs_dat_i[15],
    wbs_dat_i[14],
    wbs_dat_i[13],
    wbs_dat_i[12],
    wbs_dat_i[11],
    wbs_dat_i[10],
    wbs_dat_i[9],
    wbs_dat_i[8],
    wbs_dat_i[7],
    wbs_dat_i[6],
    wbs_dat_i[5],
    wbs_dat_i[4],
    wbs_dat_i[3],
    wbs_dat_i[2],
    wbs_dat_i[1],
    wbs_dat_i[0]}),
    .wishbone_data_out({wbs_dat_o[31],
    wbs_dat_o[30],
    wbs_dat_o[29],
    wbs_dat_o[28],
    wbs_dat_o[27],
    wbs_dat_o[26],
    wbs_dat_o[25],
    wbs_dat_o[24],
    wbs_dat_o[23],
    wbs_dat_o[22],
    wbs_dat_o[21],
    wbs_dat_o[20],
    wbs_dat_o[19],
    wbs_dat_o[18],
    wbs_dat_o[17],
    wbs_dat_o[16],
    wbs_dat_o[15],
    wbs_dat_o[14],
    wbs_dat_o[13],
    wbs_dat_o[12],
    wbs_dat_o[11],
    wbs_dat_o[10],
    wbs_dat_o[9],
    wbs_dat_o[8],
    wbs_dat_o[7],
    wbs_dat_o[6],
    wbs_dat_o[5],
    wbs_dat_o[4],
    wbs_dat_o[3],
    wbs_dat_o[2],
    wbs_dat_o[1],
    wbs_dat_o[0]}));
endmodule

