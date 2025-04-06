`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.01.2024 11:36:29
// Design Name: 
// Module Name: sim_AXIMasterPlugModel
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

module sim_AXIMasterPlugModel(
input wire          Clk, 
input wire          ResetL,

// IPIC Command Interface Signals
input wire          ip2bus_mstrd_req,
input wire          ip2bus_mstwr_req,
input wire  [31:0]  ip2bus_mst_addr,
input wire  [11:0]  ip2bus_mst_length,
input wire  [3:0]   ip2bus_mst_be,
input wire          ip2bus_mst_type,
input wire          ip2bus_mst_lock,
input wire          ip2bus_mst_reset,
output reg          bus2ip_mst_cmdack,
output reg          bus2ip_mst_cmplt,
output reg          bus2ip_mst_error,
output wire         bus2ip_mst_rearbitrate,
output wire         bus2ip_mst_cmd_timeout,

// IPIC Read LocalLink Data Interface Signals
output reg  [31:0]  bus2ip_mstrd_d,
output wire [3:0]   bus2ip_mstrd_rem,
output reg          bus2ip_mstrd_sof_n,
output reg          bus2ip_mstrd_eof_n,
output reg          bus2ip_mstrd_src_rdy_n,
output reg          bus2ip_mstrd_src_dsc_n,
input wire          ip2bus_mstrd_dst_rdy_n,
input wire          ip2bus_mstrd_dst_dsc_n,

input wire  [31:0]  ip2bus_mstwr_d,
input wire  [3:0]   ip2bus_mstwr_rem,
input wire          ip2bus_mstwr_sof_n, 
input wire          ip2bus_mstwr_eof_n,
input wire          ip2bus_mstwr_src_rdy_n,
input wire          ip2bus_mstwr_src_dsc_n, 
output reg          bus2ip_mstwr_dst_rdy_n, 
output wire         bus2ip_mstwr_dst_dsc_n
    );
    
//Definitions
`define MASTER_LATENCY 40 
`define BURST_COUNT 10
`define C_NATIVE_DATA_WIDTH 32 

integer burst_count;
assign burst_count = ip2bus_mst_length / (`C_NATIVE_DATA_WIDTH/8);
// make the edged single cycle pulse out of these two 
reg ip2bus_mstrd_reqR;
reg ip2bus_mstwr_reqR;
reg ip2bus_mstrd_req_edge;
reg ip2bus_mstwr_req_edge;

always @(posedge Clk)
        if (! ResetL) begin
            ip2bus_mstrd_reqR <= 0;
            ip2bus_mstwr_reqR <= 0;
            ip2bus_mstrd_req_edge <= 0;
            ip2bus_mstwr_req_edge <= 0;
        end
        else begin
            ip2bus_mstrd_reqR <= ip2bus_mstrd_req;
            ip2bus_mstwr_reqR <= ip2bus_mstwr_req;
            
            // Read Request: ip2bus_mstrd_req goes from 0 to 1
            if ( (! ip2bus_mstrd_reqR)&& ip2bus_mstrd_req )
                ip2bus_mstrd_req_edge <= 1;
            else
                ip2bus_mstrd_req_edge <= 0;
            
            // Write Request: ip2bus_mstwr_req goes from 0 to 1
            if ( (! ip2bus_mstwr_reqR)&& ip2bus_mstwr_req )
                ip2bus_mstwr_req_edge <= 1;
            else
                ip2bus_mstwr_req_edge <= 0;
        end



//////////////////////////////////////////////
//
// Read Request
//
//////////////////////////////////////////////

reg   [7:0]   masterReadTransactionCounter;
reg           masterReadTransactionCounterEn;

integer fileH;

always @(posedge Clk)
        if (! ResetL) begin
            masterReadTransactionCounter <= 0;
            masterReadTransactionCounterEn <= 0;
        end
        else begin
            //If read requested, Enable read counter
            if (ip2bus_mstrd_req_edge) begin
                fileH = $fopen("C:/Users/user/Documents/FPGA/test.txt", "r");
                masterReadTransactionCounterEn <= 1;
            end
            else if (masterReadTransactionCounter == `MASTER_LATENCY) begin
                $fclose(fileH);
                masterReadTransactionCounterEn <= 0;
            end
            
            //Increment counter every clk cycle
            if (masterReadTransactionCounterEn)
                masterReadTransactionCounter <= masterReadTransactionCounter + 1;
            else
                masterReadTransactionCounter <= 0;
        end

reg     bus2ip_mstrd_cmdackR;
reg     bus2ip_mstrd_cmpltR;

integer readStatus;

//initial begin 
//        fileH = $fopen("C:/Users/user/Documents/FPGA/test.txt", "r");
//end

always @(posedge Clk) 
        if (! ResetL) begin
            bus2ip_mstrd_cmdackR <= 0; 
            bus2ip_mstrd_cmpltR <= 0;
            bus2ip_mstrd_sof_n <= 1;
            bus2ip_mstrd_eof_n <= 1;
            bus2ip_mstrd_src_rdy_n <= 1;
            bus2ip_mstrd_d <= 0;
        end
        // Send Send Acknowledgement of Read Request (bus2ip_mstrd_cmdackR)
        else if ( masterReadTransactionCounter == 3 ) begin
           bus2ip_mstrd_cmdackR <= 1; 
           bus2ip_mstrd_cmpltR <= 0;
           bus2ip_mstrd_sof_n <= 1;
           bus2ip_mstrd_eof_n <= 1;
           bus2ip_mstrd_src_rdy_n <= 1;
           bus2ip_mstrd_d <= 0;
        end
        else if ( masterReadTransactionCounter == 4 ) begin
           bus2ip_mstrd_cmdackR <= 0; 
           bus2ip_mstrd_cmpltR <= 0;
           bus2ip_mstrd_sof_n <= 1;
           bus2ip_mstrd_eof_n <= 1;
           bus2ip_mstrd_src_rdy_n <= 1;
           bus2ip_mstrd_d <= 0;
        end
        // For special case when only sending 1 data, both sof & eof are held low
        else if ( masterReadTransactionCounter == 20 && burst_count == 1) begin
           bus2ip_mstrd_cmdackR <= 0; 
           bus2ip_mstrd_cmpltR <= 0;
           bus2ip_mstrd_sof_n <= 0;
           bus2ip_mstrd_eof_n <= 0;
           bus2ip_mstrd_src_rdy_n <= 0;
           readStatus = $fscanf(fileH, "%h\n", bus2ip_mstrd_d);
        end
        // Read data from .txt into bus2ip_mstrd_d 
        // On clk cycle 20, Pull start of frame low for 1 cycle (bus2ip_mstrd_sof_n)
        else if ( masterReadTransactionCounter == 20 ) begin
           bus2ip_mstrd_cmdackR <= 0; 
           bus2ip_mstrd_cmpltR <= 0;
           bus2ip_mstrd_sof_n <= 0;
           bus2ip_mstrd_eof_n <= 1;
           bus2ip_mstrd_src_rdy_n <= 0;
           readStatus = $fscanf(fileH, "%h\n", bus2ip_mstrd_d);
        end
        else if ( masterReadTransactionCounter == 21 & burst_count > 2) begin
           bus2ip_mstrd_cmdackR <= 0; 
           bus2ip_mstrd_cmpltR <= 0;
           bus2ip_mstrd_sof_n <= 1;
           bus2ip_mstrd_eof_n <= 1;
           bus2ip_mstrd_src_rdy_n <= 0;
           readStatus = $fscanf(fileH, "%h\n", bus2ip_mstrd_d);
        end
        // Burst read for 10 data
        else if ( (masterReadTransactionCounter > 21) &&  (masterReadTransactionCounter < 21 + (burst_count - 2) ) ) begin
           bus2ip_mstrd_cmdackR <= 0; 
           bus2ip_mstrd_cmpltR <= 0;
           bus2ip_mstrd_sof_n <= 1;
           bus2ip_mstrd_eof_n <= 1;
           bus2ip_mstrd_src_rdy_n <= 0;
           readStatus = $fscanf(fileH, "%h\n", bus2ip_mstrd_d);
        end
        // On cycle 49, Pull end of frame low (bus2ip_mstrd_eof_n)
        else if ( masterReadTransactionCounter == 21 + (burst_count - 2) ) begin //29
           bus2ip_mstrd_cmdackR <= 0; 
           bus2ip_mstrd_cmpltR <= 0;
           bus2ip_mstrd_sof_n <= 1;
           bus2ip_mstrd_eof_n <= 0;
           bus2ip_mstrd_src_rdy_n <= 0;
           readStatus = $fscanf(fileH, "%h\n", bus2ip_mstrd_d);
        end
        // Send Completion of Data Transferl (bus2ip_mstrd_cmpltR)
        else if ( masterReadTransactionCounter == `MASTER_LATENCY - 2 ) begin
           bus2ip_mstrd_cmdackR <= 0; 
           bus2ip_mstrd_cmpltR <= 1;
           bus2ip_mstrd_sof_n <= 1;
           bus2ip_mstrd_eof_n <= 1;
           bus2ip_mstrd_src_rdy_n <= 1;
           bus2ip_mstrd_d <= 0;
        end
        else if ( masterReadTransactionCounter == `MASTER_LATENCY - 1 ) begin
           bus2ip_mstrd_cmdackR <= 0; 
           bus2ip_mstrd_cmpltR <= 0;
           bus2ip_mstrd_sof_n <= 1;
           bus2ip_mstrd_eof_n <= 1;
           bus2ip_mstrd_src_rdy_n <= 1;
           bus2ip_mstrd_d <= 0;
        end
        else begin
           bus2ip_mstrd_cmdackR <= 0; 
           bus2ip_mstrd_cmpltR <= 0;
           bus2ip_mstrd_sof_n <= 1;
           bus2ip_mstrd_eof_n <= 1;
           bus2ip_mstrd_src_rdy_n <= 1;
           bus2ip_mstrd_d <= 0;
        end

//////////////////////////////////////////////
//
// Write Request
//
//////////////////////////////////////////////
 

reg bus2ip_mstwr_cmdackR;
reg bus2ip_mstwr_cmpltR;

// cmd ack, after 3 clock cycles. And this one is used for both of the read and write transactions.
assign bus2ip_mst_cmdack = ( bus2ip_mstrd_cmdackR || bus2ip_mstwr_cmdackR) ? 1 : 0;
assign bus2ip_mst_cmplt = ( bus2ip_mstrd_cmpltR || bus2ip_mstwr_cmpltR ) ? 1 : 0;

assign bus2ip_mst_rearbitrate = 0;
assign bus2ip_mst_cmd_timeout = 0;
assign bus2ip_mstrd_rem = 0;
assign bus2ip_mst_error = 0;

reg [7:0] masterWriteTransactionCounter;
reg       masterWriteTransactionCounterEn;
reg [7:0] masterWriteBurstCounter;

integer writeFileH;

always @(posedge Clk) 
        if (! ResetL) begin
            masterWriteTransactionCounter <= 0;
            masterWriteTransactionCounterEn <= 0;
            masterWriteBurstCounter <= 0;
        end
        else begin
            //If write requested, Enable write counter
            if ( ip2bus_mstwr_req_edge ) begin
                writeFileH = $fopen("C:/Users/user/Documents/FPGA/test.txt", "w");
                masterWriteTransactionCounterEn <= 1;
            end
            else if ( masterWriteTransactionCounter == `MASTER_LATENCY ) begin 
                $fclose(writeFileH);
                masterWriteTransactionCounterEn <= 0; 
            end
            
            //Increment counter every clk cycle
            if ( masterWriteTransactionCounterEn ) 
                masterWriteTransactionCounter <= masterWriteTransactionCounter + 1;
            else
                masterWriteTransactionCounter <= 0;
            
            //Increment Burst Counter
            if ( ip2bus_mstwr_req_edge ) begin
                masterWriteBurstCounter <= 0;
            end 
            else begin
                //Increment Burst Counter if both src & dst is ready (active low)
                if ( (! ip2bus_mstwr_src_rdy_n) && (! bus2ip_mstwr_dst_rdy_n) )
                    masterWriteBurstCounter <= masterWriteBurstCounter + 1;
                else if (masterWriteBurstCounter == `BURST_COUNT) 
                    masterWriteBurstCounter <= 0;
                else
                    masterWriteBurstCounter <= masterWriteBurstCounter;
            end  
        end

always@(posedge Clk) 
        if (! ResetL) begin
            bus2ip_mstwr_cmdackR <= 0;
            bus2ip_mstwr_cmpltR <= 0;
        end
        else begin
            // Send Acknowledgement of Write Request (bus2ip_mstwr_cmdackR)
            if (masterWriteTransactionCounter == 3) begin
                bus2ip_mstwr_cmdackR <= 1;
                bus2ip_mstwr_cmpltR <= 0;
            end
            else if (masterWriteTransactionCounter == 4) begin
                bus2ip_mstwr_cmdackR <= 0;
                bus2ip_mstwr_cmpltR <= 0;
            end
            // Send Completion of Data Transfer (bus2ip_mstwr_cmpltR)
            else if (masterWriteTransactionCounter == `MASTER_LATENCY) begin
                bus2ip_mstwr_cmdackR <= 0;
                bus2ip_mstwr_cmpltR <= 1;
            end
            else begin
                bus2ip_mstwr_cmdackR <= 0;
                bus2ip_mstwr_cmpltR <= 0;
            end
        end

// Never discountinue a transfer
assign bus2ip_mstrd_src_dsc_n = 1;
assign bus2ip_mstwr_dst_dsc_n = 1;

//////////////////////////////////////////////
//
// Sending data to DRAM: bus2ip_mstwr_dst_rdy_n
//
//////////////////////////////////////////////
// Simulate AXI Write Bursts of 16 data beats
// This is set by (C_MAX_BURST_LEN => 16) when instantiating entity work.axi_master_burst
reg [3:0] burstCounter; //Max of 16

always @(posedge Clk)
        if (! ResetL) begin
            bus2ip_mstwr_dst_rdy_n <= 1;
            burstCounter <= 0;
        end
        // Pull low bus2ip_mstwr_dst_rdy_n to indicate Ready to receive data from IP
        else begin
            if (! ip2bus_mstwr_src_rdy_n) begin
                // If burstCounter = 16, then Pull high bus2ip_mstwr_dst_rdy_n
                if ( (ip2bus_mstwr_eof_n == 0) && (bus2ip_mstwr_dst_rdy_n == 0) )
                    bus2ip_mstwr_dst_rdy_n <= 1;
//                if (burstCounter < 9)
//                    bus2ip_mstwr_dst_rdy_n <= 1;
                else 
                    bus2ip_mstwr_dst_rdy_n <= 0;
                
                if (! bus2ip_mstwr_dst_rdy_n)
                    burstCounter <= burstCounter + 1;
            end
            else begin
                bus2ip_mstwr_dst_rdy_n <= 1;
                burstCounter <= 0;
            end 
        end

//////////////////////////////////////////////
//
// Write data to a .txt file
//
//////////////////////////////////////////////

//integer writeFileH;

//initial begin
//        writeFileH = $fopen("C:/Users/user/Documents/FPGA/test.txt", "w");
//end

always @(posedge Clk) begin
        if ( (! ip2bus_mstwr_src_rdy_n) && (! bus2ip_mstwr_dst_rdy_n) ) begin
            $fwrite( writeFileH, "%h\n", ip2bus_mstwr_d);          
        end
end

endmodule
