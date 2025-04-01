module divider_256(in, out);

input wire in;
output reg out;

reg [7:0] counter = 8'd0;

always @(posedge in)
begin

counter <= counter + 8'd1;
out <= (counter & 8'b1000_0000) ? 1'b1 : 1'b0;

end

endmodule