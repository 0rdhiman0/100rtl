module tb;
  logic clk,reset;
  logic [3:0]lfsr_o;
  day7 dut(.*);
  initial begin
    reset='b1;
    repeat(2)begin
      @(posedge clk);
    end
    reset='b0;
    for(int i=0;i<10;i++)begin
      @(posedge clk);
    end
    $finish();
  end
  initial begin
    clk='b1;
    
  end
  always #5 clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
