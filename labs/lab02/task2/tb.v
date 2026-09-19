// tb.v
// Starter testbench template -- YOU complete this file.

module tb;

  // TODO: declare the inputs and outputs
  localparam WIDTH = 8;
  localparam DEPTH = 4;

  reg  [$clog2(DEPTH)-1:0] t_sel;
  wire [WIDTH-1:0]        t_dout;
  // TODO: instantiate DUT here
  lut #(
    .WIDTH(WIDTH),
    .DEPTH(DEPTH)
  ) DUT (
    .sel  (t_sel),
    .dout (t_dout)
  );
  // Waveform dump configuration (DO NOT CHANGE)
  string vcd_file;
  initial begin
    if ($value$plusargs("vcd=%s", vcd_file)) begin
      $dumpfile(vcd_file);
      $dumpvars(0, DUT);
    end
  end

  initial begin
    // TODO: apply different input combinations
    t_sel = 0; #5;
    t_sel = 1; #5;
    t_sel = 2; #5;
    t_sel = 3; #5;
    $finish;
  end

  initial
    $monitor($time, " I0=%b I1=%b S=%b | Y=%b", t_i0, t_i1, t_s, t_y); // change as required

endmodule
