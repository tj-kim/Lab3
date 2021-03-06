//------------------------------------------------------------------------
// Data Memory
//   Positive edge triggered
//   dataOut always has the value mem[address]
//   If writeEnable is true, writes dataIn to mem[address]
//------------------------------------------------------------------------

module datamemory
(
  input clk, regWE,
  input[31:0] Addr,
  input[31:0] DataIn,
  output[31:0]  DataOut
);

  reg [31:0] mem[16'hffff:16'h1000];
  reg dataOutReg;

  always @(posedge clk) begin
    if (regWE) begin
      mem[Addr] <= DataIn;
    end
  end

  assign DataOut = mem[Addr];
endmodule
