module qiangda8(clk,rst_n,key,sel);
    input clk；
    input rst_n；
    input [7:0] key；
    output reg [3:0] sel;
reg flag;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        flag <= 1'b0;
        sel <= 4'd0;
    end
    else begin
        if(flag == 1'b0) begin
            if(key != 8'd0) begin
                flag <= 1'b1;
                case(key)
                    8'b00000001: sel <=4'd0;
                    8'b00000010: sel <=4'd1;
                    8'b00000100: sel <=4'd2;
                    8'b00001000: sel <=4'd3;
                    8'b00010000: sel <=4'd4;
                    8'b00100000: sel <=4'd5;
                    8'b01000000: sel <=4'd6;
                    8'b10000000: sel <=4'd7;
                    default: sel <=4'd0;
                endcase
            end
        end
    end
end
endmodule