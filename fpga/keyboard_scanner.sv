module keyboard_scanner(clock, rows, columns, keys);

input wire clock;

input wire [3:0] rows;
output reg [3:0] columns;
output reg [3:0][3:0] keys;

reg [3:0] current_column;

always @(posedge clock) begin

current_column <= current_column + 4'd1;
columns <= 4'b1 << current_column;

end

always @(negedge clock) begin

keys[current_column - 4'd1] <= rows;

end

endmodule