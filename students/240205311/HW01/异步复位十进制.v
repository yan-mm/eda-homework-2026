module counter10_r(clk,reset,out);
input clk,reset;
output[3:0] out;
reg[3:0]out;
always@(posedge clk or negedge reset)
begin
   if(!reset) out<=4'h00;
   else begin
     if(out==4'd9)
       out<=4'd0;
     else
       out<=out+1'b1;
  end
end
endmodule