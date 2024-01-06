module day7(
input     wire      clk,
input     wire      reset,

  output    reg[3:0] lfsr_o);
  reg [3:0]temp;
  
  always@(posedge clk)begin
    if(reset)
      lfsr_o<=4'he;
    else
      lfsr_o<=temp;
    assign temp={lfsr_o[2:0],lfsr_o[1]^lfsr_o[3]};
  end
  
  
endmodule
