`timescale 1ns / 1ps
module chars(
   // input VGA_clk,
    //input en,
    input [5:0] char,
    input [2:0] rownum,
    output reg [7:0] pixels
    );

always @(*)
   // if (en) begin
        case ({char, rownum})
        ///////////////////////0//////////////////////////
            9'b000000000: pixels = 8'b01111100; //  XXXXX  
            9'b000000001: pixels = 8'b11000110; // XX   XX 
            9'b000000010: pixels = 8'b11001110; // XX  XXX 
            9'b000000011: pixels = 8'b11011110; // XX XXXX 
            9'b000000100: pixels = 8'b11110110; // XXXX XX 
            9'b000000101: pixels = 8'b11100110; // XXX  XX 
            9'b000000110: pixels = 8'b01111100; //  XXXXX  
            9'b000000111: pixels = 8'b00000000; //         
        ///////////////////////1//////////////////////////
            9'b000001000: pixels = 8'b00110000; //   XX    
            9'b000001001: pixels = 8'b01110000; //  XXX    
            9'b000001010: pixels = 8'b00110000; //   XX    
            9'b000001011: pixels = 8'b00110000; //   XX    
            9'b000001100: pixels = 8'b00110000; //   XX    
            9'b000001101: pixels = 8'b00110000; //   XX    
            9'b000001110: pixels = 8'b11111100; // XXXXXX  
            9'b000001111: pixels = 8'b00000000; //         
        ///////////////////////2//////////////////////////
            9'b000010000: pixels = 8'b01111000; //  XXXX   
            9'b000010001: pixels = 8'b11001100; // XX  XX  
            9'b000010010: pixels = 8'b00001100; //     XX  
            9'b000010011: pixels = 8'b00111000; //   XXX   
            9'b000010100: pixels = 8'b01100000; //  XX     
            9'b000010101: pixels = 8'b11001100; // XX  XX  
            9'b000010110: pixels = 8'b11111100; // XXXXXX  
            9'b000010111: pixels = 8'b00000000; //         
        ///////////////////////3//////////////////////////
            9'b000011000: pixels = 8'b01111000; //  XXXX   
            9'b000011001: pixels = 8'b11001100; // XX  XX  
            9'b000011010: pixels = 8'b00001100; //     XX  
            9'b000011011: pixels = 8'b00111000; //   XXX   
            9'b000011100: pixels = 8'b00001100; //     XX  
            9'b000011101: pixels = 8'b11001100; // XX  XX  
            9'b000011110: pixels = 8'b01111000; //  XXXX   
            9'b000011111: pixels = 8'b00000000; //         
        ///////////////////////4//////////////////////////
            9'b000100000: pixels = 8'b00011100; //    XXX  
            9'b000100001: pixels = 8'b00111100; //   XXXX  
            9'b000100010: pixels = 8'b01101100; //  XX XX  
            9'b000100011: pixels = 8'b11001100; // XX  XX  
            9'b000100100: pixels = 8'b11111110; // XXXXXXX 
            9'b000100101: pixels = 8'b00001100; //     XX  
            9'b000100110: pixels = 8'b00011110; //    XXXX 
            9'b000100111: pixels = 8'b00000000; //         
        ///////////////////////5//////////////////////////
            9'b000101000: pixels = 8'b11111100; // XXXXXX  
            9'b000101001: pixels = 8'b11000000; // XX      
            9'b000101010: pixels = 8'b11111000; // XXXXX   
            9'b000101011: pixels = 8'b00001100; //     XX  
            9'b000101100: pixels = 8'b00001100; //     XX  
            9'b000101101: pixels = 8'b11001100; // XX  XX  
            9'b000101110: pixels = 8'b01111000; //  XXXX   
            9'b000101111: pixels = 8'b00000000; //         
        ///////////////////////6//////////////////////////
            9'b000110000: pixels = 8'b00111000; //   XXX   
            9'b000110001: pixels = 8'b01100000; //  XX     
            9'b000110010: pixels = 8'b11000000; // XX      
            9'b000110011: pixels = 8'b11111000; // XXXXX   
            9'b000110100: pixels = 8'b11001100; // XX  XX  
            9'b000110101: pixels = 8'b11001100; // XX  XX  
            9'b000110110: pixels = 8'b01111000; //  XXXX   
            9'b000110111: pixels = 8'b00000000; //         
        ///////////////////////7//////////////////////////
            9'b000111000: pixels = 8'b11111100; // XXXXXX  
            9'b000111001: pixels = 8'b11001100; // XX  XX  
            9'b000111010: pixels = 8'b00001100; //     XX  
            9'b000111011: pixels = 8'b00011000; //    XX   
            9'b000111100: pixels = 8'b00110000; //   XX    
            9'b000111101: pixels = 8'b00110000; //   XX    
            9'b000111110: pixels = 8'b00110000; //   XX    
            9'b000111111: pixels = 8'b00000000; //         
        ///////////////////////8//////////////////////////
            9'b001000000: pixels = 8'b01111000; //  XXXX   
            9'b001000001: pixels = 8'b11001100; // XX  XX  
            9'b001000010: pixels = 8'b11001100; // XX  XX  
            9'b001000011: pixels = 8'b01111000; //  XXXX   
            9'b001000100: pixels = 8'b11001100; // XX  XX  
            9'b001000101: pixels = 8'b11001100; // XX  XX  
            9'b001000110: pixels = 8'b01111000; //  XXXX   
            9'b001000111: pixels = 8'b00000000; //         
        ///////////////////////9//////////////////////////
            9'b001001000: pixels = 8'b01111000; //  XXXX   
            9'b001001001: pixels = 8'b11001100; // XX  XX  
            9'b001001010: pixels = 8'b11001100; // XX  XX  
            9'b001001011: pixels = 8'b01111100; //  XXXXX  
            9'b001001100: pixels = 8'b00001100; //     XX  
            9'b001001101: pixels = 8'b00011000; //    XX   
            9'b001001110: pixels = 8'b01110000; //  XXX    
            9'b001001111: pixels = 8'b00000000; //  
        ///////////////////////10/////////////////////////
            9'b001010000: pixels = 8'b00011000; //   ХХ     
            9'b001010001: pixels = 8'b00100100; //  Х  Х   
            9'b001010010: pixels = 8'b01100110; // ХХ  ХХ  
            9'b001010011: pixels = 8'b01100110; // ХХ  ХХ   
            9'b001010100: pixels = 8'b01111110; // ХХХХХХ  
            9'b001010101: pixels = 8'b01111110; // ХХХХХХ  
            9'b001010110: pixels = 8'b01100110; // ХХ  ХХ  
            9'b001010111: pixels = 8'b01100110; // ХХ  ХХ        
        ///////////////////////11/////////////////////////
            9'b001011000: pixels = 8'b11111100; // XXXXXX  
            9'b001011001: pixels = 8'b01100110; //  XX  XX 
            9'b001011010: pixels = 8'b01100110; //  XX  XX 
            9'b001011011: pixels = 8'b01111100; //  XXXXX  
            9'b001011100: pixels = 8'b01100110; //  XX  XX 
            9'b001011101: pixels = 8'b01100110; //  XX  XX 
            9'b001011110: pixels = 8'b11111100; // XXXXXX  
            9'b001011111: pixels = 8'b00000000; //         
        ///////////////////////12/////////////////////////
            9'b001100000: pixels = 8'b00111100; //   ****
            9'b001100001: pixels = 8'b01100110; //  **  **
            9'b001100010: pixels = 8'b11000010; // **    *
            9'b001100011: pixels = 8'b11000000; // **
            9'b001100100: pixels = 8'b11000000; // **
            9'b001100101: pixels = 8'b11000010; // **    *
            9'b001100110: pixels = 8'b01100110; //  **  **
            9'b001100111: pixels = 8'b00111100; //   ****
        ///////////////////////13/////////////////////////
            9'b001101000: pixels = 8'b11111000; // *****
            9'b001101001: pixels = 8'b01101100; //  ** **
            9'b001101010: pixels = 8'b01100110; //  **  **
            9'b001101011: pixels = 8'b01100110; //  **  **
            9'b001101100: pixels = 8'b01100110; //  **  **
            9'b001101101: pixels = 8'b01100110; //  **  **
            9'b001101110: pixels = 8'b01101100; //  ** **
            9'b001101111: pixels = 8'b11111000; // *****
        ///////////////////////14/////////////////////////
            9'b001110000: pixels = 8'b11111110; // *******
            9'b001110001: pixels = 8'b01100110; //  **  **
            9'b001110010: pixels = 8'b01100000; //  ** 
            9'b001110011: pixels = 8'b01111100; //  *****
            9'b001110100: pixels = 8'b01111100; //  *****
            9'b001110101: pixels = 8'b01100000; //  **
            9'b001110110: pixels = 8'b01100110; //  **  **
            9'b001110111: pixels = 8'b11111110; // *******
        ///////////////////////15/////////////////////////
            9'b001111000: pixels = 8'b11111110; // XXXXXXX 
            9'b001111001: pixels = 8'b01100010; //  XX   X 
            9'b001111010: pixels = 8'b01101000; //  XX X   
            9'b001111011: pixels = 8'b01111000; //  XXXX   
            9'b001111100: pixels = 8'b01101000; //  XX X   
            9'b001111101: pixels = 8'b01100000; //  XX     
            9'b001111110: pixels = 8'b11110000; // XXXX    
            9'b001111111: pixels = 8'b00000000; //       
        ///////////////////////16///////////////////////// 
            9'b010000000: pixels = 8'b00111100; //    **** 
            9'b010000001: pixels = 8'b01100110; //   **  ** 
            9'b010000010: pixels = 8'b11000010; //  **    * 
            9'b010000011: pixels = 8'b11000000; //  ** 
            9'b010000100: pixels = 8'b11011110; //  ** **** 
            9'b010000101: pixels = 8'b11000110; //  **   ** 
            9'b010000110: pixels = 8'b01100110; //   **  ** 
            9'b010000111: pixels = 8'b00111010; //    *** *  
        ///////////////////////17///////////////////////// 
            9'b010001000: pixels = 8'b11000110; // **   **
            9'b010001001: pixels = 8'b11000110; // **   **
            9'b010001010: pixels = 8'b11000110; // **   **
            9'b010001011: pixels = 8'b11111110; // *******
            9'b010001100: pixels = 8'b11111110; // *******
            9'b010001101: pixels = 8'b11000110; // **   **
            9'b010001110: pixels = 8'b11000110; // **   **
            9'b010001111: pixels = 8'b11000110; // **   **
        ///////////////////////18///////////////////////// 
            9'b010010000: pixels = 8'b00110000; //   XX
            9'b010010001: pixels = 8'b00000000; //
            9'b010010010: pixels = 8'b01110000; //  XXX
            9'b010010011: pixels = 8'b00110000; //   XX
            9'b010010100: pixels = 8'b00110000; //   XX
            9'b010010101: pixels = 8'b00110000; //   XX
            9'b010010110: pixels = 8'b01111000; //  XXXX
            9'b010010111: pixels = 8'b00000000; //
        ///////////////////////19///////////////////////// 
            9'b010011000: pixels = 8'b00011110; //    ****
            9'b010011001: pixels = 8'b00001100; //     **
            9'b010011010: pixels = 8'b00001100; //     **
            9'b010011011: pixels = 8'b00001100; //     **
            9'b010011100: pixels = 8'b11001100; // **  **
            9'b010011101: pixels = 8'b11001100; // **  **
            9'b010011110: pixels = 8'b11001100; // **  **
            9'b010011111: pixels = 8'b01111000; //  ****
        ///////////////////////20///////////////////////// 
            9'b010100000: pixels = 8'b11100110; //***  **
            9'b010100001: pixels = 8'b01100110; // **  **
            9'b010100010: pixels = 8'b01101100; // ** **
            9'b010100011: pixels = 8'b01111000; // ****
            9'b010100100: pixels = 8'b01111000; // ****
            9'b010100101: pixels = 8'b01101100; // ** **
            9'b010100110: pixels = 8'b01100110; // **  **
            9'b010100111: pixels = 8'b11100110; //***  **
        ///////////////////////21///////////////////////// 
            9'b010101000: pixels = 8'b11110000; // ****
            9'b010101001: pixels = 8'b01100000; //  **
            9'b010101010: pixels = 8'b01100000; //  **
            9'b010101011: pixels = 8'b01100000; //  **
            9'b010101100: pixels = 8'b01100000; //  **
            9'b010101101: pixels = 8'b01100010; //  **   *
            9'b010101110: pixels = 8'b01100110; //  **  **
            9'b010101111: pixels = 8'b11111110; // *******
        ///////////////////////22///////////////////////// 
            9'b010110000: pixels = 8'b11000011; // **    **
            9'b010110001: pixels = 8'b11100111; // ***  ***
            9'b010110010: pixels = 8'b11111111; // ********
            9'b010110011: pixels = 8'b11111111; // ********
            9'b010110100: pixels = 8'b11011011; // ** ** **
            9'b010110101: pixels = 8'b11000011; // **    **
            9'b010110110: pixels = 8'b11000011; // **    **
            9'b010110111: pixels = 8'b11000011; // **    **
        ///////////////////////23///////////////////////// 
            9'b010111000: pixels = 8'b11000110; // **   **
            9'b010111001: pixels = 8'b11100110; // ***  **
            9'b010111010: pixels = 8'b11110110; // **** **
            9'b010111011: pixels = 8'b11111110; // *******
            9'b010111100: pixels = 8'b11011110; // ** ****
            9'b010111101: pixels = 8'b11001110; // **  ***
            9'b010111110: pixels = 8'b11000110; // **   **
            9'b010111111: pixels = 8'b11000110; // **   **
        ///////////////////////24///////////////////////// 
            9'b011000000: pixels = 8'b01111100; //  *****
            9'b011000001: pixels = 8'b11000110; // **   **
            9'b011000010: pixels = 8'b11000110; // **   **
            9'b011000011: pixels = 8'b11000110; // **   **
            9'b011000100: pixels = 8'b11000110; // **   **
            9'b011000101: pixels = 8'b11000110; // **   **
            9'b011000110: pixels = 8'b11000110; // **   **
            9'b011000111: pixels = 8'b01111100; //  *****
        ///////////////////////25///////////////////////// 
            9'b011001000: pixels = 8'b11111100; // ******
            9'b011001001: pixels = 8'b01100110; //  **  **
            9'b011001010: pixels = 8'b01100110; //  **  **
            9'b011001011: pixels = 8'b01100110; //  **  **
            9'b011001100: pixels = 8'b01111100; //  *****
            9'b011001101: pixels = 8'b01100000; //  **
            9'b011001110: pixels = 8'b01100000; //  **
            9'b011001111: pixels = 8'b11110000; // ****
        ///////////////////////26///////////////////////// 
            9'b011010000: pixels = 8'b01111100; //  *****
            9'b011010001: pixels = 8'b11000110; // **   **
            9'b011010010: pixels = 8'b11000110; // **   **
            9'b011010011: pixels = 8'b11000110; // **   **
            9'b011010100: pixels = 8'b11010110; // ** * **
            9'b011010101: pixels = 8'b11011110; // ** ****
            9'b011010110: pixels = 8'b01111100; //  *****
            9'b011010111: pixels = 8'b00001110; //     ***
        ///////////////////////27///////////////////////// 
            9'b011011000: pixels = 8'b11111100; // ******
            9'b011011001: pixels = 8'b01100110; //  **  **
            9'b011011010: pixels = 8'b01100110; //  **  **
            9'b011011011: pixels = 8'b01111100; //  *****
            9'b011011100: pixels = 8'b01101100; //  ** **
            9'b011011101: pixels = 8'b01100110; //  **  **
            9'b011011110: pixels = 8'b01100110; //  **  **
            9'b011011111: pixels = 8'b11100110; // ***  **
        ///////////////////////28///////////////////////// 
            9'b011100000: pixels = 8'b01111100; //  *****
            9'b011100001: pixels = 8'b11000110; // **   **
            9'b011100010: pixels = 8'b11000110; // **   **
            9'b011100011: pixels = 8'b01100000; //  **
            9'b011100100: pixels = 8'b00011000; //    **
            9'b011100101: pixels = 8'b11000110; // **   **
            9'b011100110: pixels = 8'b11000110; // **   **
            9'b011100111: pixels = 8'b01111100; //  *****
        ///////////////////////29///////////////////////// 
            9'b011101000: pixels = 8'b11111111; // ********
            9'b011101001: pixels = 8'b11011011; // ** ** **
            9'b011101010: pixels = 8'b10011001; // *  **  *
            9'b011101011: pixels = 8'b00011000; //    **
            9'b011101100: pixels = 8'b00011000; //    **
            9'b011101101: pixels = 8'b00011000; //    **
            9'b011101110: pixels = 8'b00011000; //    **
            9'b011101111: pixels = 8'b00111100; //   ****
        ///////////////////////30///////////////////////// 
            9'b011110000: pixels = 8'b00000000; //
            9'b011110001: pixels = 8'b00000000; //
            9'b011110010: pixels = 8'b11001100; // XX  XX
            9'b011110011: pixels = 8'b11001100; // XX  XX
            9'b011110100: pixels = 8'b11001100; // XX  XX
            9'b011110101: pixels = 8'b11001100; // XX  XX
            9'b011110110: pixels = 8'b01110110; //  XXX XX
            9'b011110111: pixels = 8'b00000000; //
        ///////////////////////31///////////////////////// 
            9'b011111000: pixels = 8'b11000011; // **    **
            9'b011111001: pixels = 8'b11000011; // **    **
            9'b011111010: pixels = 8'b11000011; // **    **
            9'b011111011: pixels = 8'b11000011; // **    **
            9'b011111100: pixels = 8'b11000011; // **    **
            9'b011111101: pixels = 8'b01100110; //  **  **
            9'b011111110: pixels = 8'b00111100; //   ****
            9'b011111111: pixels = 8'b00011000; //    **
        ///////////////////////32///////////////////////// 
            9'b100000000: pixels = 8'b11000011; // **    **
            9'b100000001: pixels = 8'b11000011; // **    **
            9'b100000010: pixels = 8'b11000011; // **    **
            9'b100000011: pixels = 8'b11011011; // ** ** **
            9'b100000100: pixels = 8'b11011011; // ** ** **
            9'b100000101: pixels = 8'b11111111; // ********
            9'b100000110: pixels = 8'b01100110; //  **  **
            9'b100000111: pixels = 8'b01100110; //  **  **
        ///////////////////////33///////////////////////// 
            9'b100001000: pixels = 8'b11000011; //  **    **
            9'b100001001: pixels = 8'b01100110; //   **  **
            9'b100001010: pixels = 8'b00111100; //    ****
            9'b100001011: pixels = 8'b00011000; //     **
            9'b100001100: pixels = 8'b00011000; //     **
            9'b100001101: pixels = 8'b00111100; //    ****
            9'b100001110: pixels = 8'b01100110; //   **  **
            9'b100001111: pixels = 8'b11000011; //  **    **
        ///////////////////////34///////////////////////// 
            9'b100010000: pixels = 8'b11000011; //  **    **
            9'b100010001: pixels = 8'b11000011; //  **    **
            9'b100010010: pixels = 8'b01100110; //   **  **
            9'b100010011: pixels = 8'b00111100; //    ****
            9'b100010100: pixels = 8'b00011000; //     **
            9'b100010101: pixels = 8'b00011000; //     **
            9'b100010110: pixels = 8'b00011000; //     **
            9'b100010111: pixels = 8'b00111100; //    ****
        ///////////////////////35///////////////////////// 
            9'b100011000: pixels = 8'b00000000; //
            9'b100011001: pixels = 8'b00000000; //
            9'b100011010: pixels = 8'b11111100; // XXXXXX
            9'b100011011: pixels = 8'b10011000; // X  XX
            9'b100011100: pixels = 8'b00110000; //   XX
            9'b100011101: pixels = 8'b01100100; //  XX  X
            9'b100011110: pixels = 8'b11111100; // XXXXXX
            9'b100011111: pixels = 8'b00000000; //

        default: pixels = 8'b00000000;
        endcase
    //end
endmodule