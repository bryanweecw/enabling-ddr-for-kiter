// (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:module_ref:axi_fifo_v3:1.0
// IP Revision: 1

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
dram_v3_async_axi_fifo_v3_0_0 your_instance_name (
  .buffer_in_ready(buffer_in_ready),            // output wire buffer_in_ready
  .buffer_in_valid(buffer_in_valid),            // input wire buffer_in_valid
  .buffer_in_data(buffer_in_data),              // input wire [33 : 0] buffer_in_data
  .buffer_out_ready(buffer_out_ready),          // input wire buffer_out_ready
  .buffer_out_valid(buffer_out_valid),          // output wire buffer_out_valid
  .buffer_out_data(buffer_out_data),            // output wire [33 : 0] buffer_out_data
  .op_in_ready_1(op_in_ready_1),                // output wire op_in_ready_1
  .op_in_valid_1(op_in_valid_1),                // input wire op_in_valid_1
  .op_in_data_1(op_in_data_1),                  // input wire [33 : 0] op_in_data_1
  .m_axi_aclk(m_axi_aclk),                      // input wire m_axi_aclk
  .m_axi_aresetn(m_axi_aresetn),                // input wire m_axi_aresetn
  .md_error(md_error),                          // output wire md_error
  .m_axi_arready(m_axi_arready),                // input wire m_axi_arready
  .m_axi_arvalid(m_axi_arvalid),                // output wire m_axi_arvalid
  .m_axi_araddr(m_axi_araddr),                  // output wire [31 : 0] m_axi_araddr
  .m_axi_arlen(m_axi_arlen),                    // output wire [7 : 0] m_axi_arlen
  .m_axi_arsize(m_axi_arsize),                  // output wire [2 : 0] m_axi_arsize
  .m_axi_arburst(m_axi_arburst),                // output wire [1 : 0] m_axi_arburst
  .m_axi_arprot(m_axi_arprot),                  // output wire [2 : 0] m_axi_arprot
  .m_axi_arcache(m_axi_arcache),                // output wire [3 : 0] m_axi_arcache
  .m_axi_rready(m_axi_rready),                  // output wire m_axi_rready
  .m_axi_rvalid(m_axi_rvalid),                  // input wire m_axi_rvalid
  .m_axi_rdata(m_axi_rdata),                    // input wire [31 : 0] m_axi_rdata
  .m_axi_rresp(m_axi_rresp),                    // input wire [1 : 0] m_axi_rresp
  .m_axi_rlast(m_axi_rlast),                    // input wire m_axi_rlast
  .m_axi_awready(m_axi_awready),                // input wire m_axi_awready
  .m_axi_awvalid(m_axi_awvalid),                // output wire m_axi_awvalid
  .m_axi_awaddr(m_axi_awaddr),                  // output wire [31 : 0] m_axi_awaddr
  .m_axi_awlen(m_axi_awlen),                    // output wire [7 : 0] m_axi_awlen
  .m_axi_awsize(m_axi_awsize),                  // output wire [2 : 0] m_axi_awsize
  .m_axi_awburst(m_axi_awburst),                // output wire [1 : 0] m_axi_awburst
  .m_axi_awprot(m_axi_awprot),                  // output wire [2 : 0] m_axi_awprot
  .m_axi_awcache(m_axi_awcache),                // output wire [3 : 0] m_axi_awcache
  .m_axi_wready(m_axi_wready),                  // input wire m_axi_wready
  .m_axi_wvalid(m_axi_wvalid),                  // output wire m_axi_wvalid
  .m_axi_wdata(m_axi_wdata),                    // output wire [31 : 0] m_axi_wdata
  .m_axi_wstrb(m_axi_wstrb),                    // output wire [3 : 0] m_axi_wstrb
  .m_axi_wlast(m_axi_wlast),                    // output wire m_axi_wlast
  .m_axi_bready(m_axi_bready),                  // output wire m_axi_bready
  .m_axi_bvalid(m_axi_bvalid),                  // input wire m_axi_bvalid
  .m_axi_bresp(m_axi_bresp),                    // input wire [1 : 0] m_axi_bresp
  .avg_read_cycles_out(avg_read_cycles_out),    // output wire [31 : 0] avg_read_cycles_out
  .avg_write_cycles_out(avg_write_cycles_out),  // output wire [31 : 0] avg_write_cycles_out
  .max_read_cycles_out(max_read_cycles_out),    // output wire [31 : 0] max_read_cycles_out
  .max_write_cycles_out(max_write_cycles_out),  // output wire [31 : 0] max_write_cycles_out
  .min_read_cycles_out(min_read_cycles_out),    // output wire [31 : 0] min_read_cycles_out
  .min_write_cycles_out(min_write_cycles_out)  // output wire [31 : 0] min_write_cycles_out
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file dram_v3_async_axi_fifo_v3_0_0.v when simulating
// the core, dram_v3_async_axi_fifo_v3_0_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

