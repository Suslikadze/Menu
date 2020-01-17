`timescale 1ns / 1ps
module vga_TOP(
        input clk,
        input rst,
        output R,
        output G,
        output B,
        output hsync,
        output vsync
);
//////////////////////////////////////////////////////////  
wire valid;
wire [9:0] x;
wire [9:0] y;
wire newframe;
wire newline;
wire VGA_clk;
wire [19:0] exit_value;
wire [19:0] exit_value1;
reg [15:0] counter_value;
reg [15:0] counter_value1;
reg [19:0] counter_clk, counter_clk1;
//////////////////////////////////////////////////////////  

//////////////////////////////////////////////////////////
vga vga(
    .clk(clk),
    .rst(rst),
    .x(x[9:0]),
    .y(y[9:0]),
    .valid(valid),
    .hsync(hsync),
    .vsync(vsync),
    .newframe(newframe),
    .newline(newline),
    .clk25_out(VGA_clk)
);

ROM ROM(
    .clk(VGA_clk),
    .rst(rst),
    .newline(newline),
    .newframe(newframe),
    .x(x[9:0]),
    .y(y[9:0]),
    .x0(10'd400),
    .y0(10'd50),
    .input_mode(exit_value[19:0]),
    .input_Type_AGC(exit_value1[19:0]),
    .input_Set_LVL1(exit_value1[19:0]),
    .input_Set_LVL2(exit_value1[19:0]),
    .input_Time_int(exit_value[19:0]),
    .out_R(R),
    .out_G(G),
    .out_B(B)
);

until_99999_conventer other(
    .some_value(counter_value[11:0]),
    .en(valid),
    .trigger(newframe),
    .exit_value(exit_value[19:0])
);

until_99999_conventer SetLVL1_conventer(
    .some_value(counter_value1[11:0]),
    .en(valid),
    .trigger(newframe), 
    .exit_value(exit_value1[19:0])
);


//////////////////////////////////////////////////////////
always @(posedge newframe) begin
    if (counter_clk != 50) begin
        counter_clk <= counter_clk + 1;
    end else if (counter_value != 7'd77) begin
        counter_clk <= 0;
        counter_value <= counter_value + 1;
    end else begin
        counter_value <= 0;
        counter_clk <= 0;
    end
end
//////////////////////////////////////////////////////////
always @(posedge newframe) begin
    if (counter_clk1 != 1) begin
        counter_clk1 <= counter_clk1 + 1;
    end else if (counter_value1 != 12'd200) begin
        counter_clk1 <= 0;
        counter_value1 <= counter_value1 + 1'd1;
    end else begin
        counter_value1 <= 1524;
        counter_clk1 <= 0;
    end
end
endmodule