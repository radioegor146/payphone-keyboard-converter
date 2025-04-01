module keyboard_emulator(buttons_input, buttons_output, state);

input wire [5:0] buttons_input;
output wire [6:0] buttons_output;
input wire [5:0][6:0] state;

assign buttons_output = ((buttons_input[0] == 1'b0) ? ~state[0] : 7'b1111111) &
								((buttons_input[1] == 1'b0) ? ~state[1] : 7'b1111111) &
								((buttons_input[2] == 1'b0) ? ~state[2] : 7'b1111111) &
								((buttons_input[3] == 1'b0) ? ~state[3] : 7'b1111111) &
								((buttons_input[4] == 1'b0) ? ~state[4] : 7'b1111111) &
								((buttons_input[5] == 1'b0) ? ~state[5] : 7'b1111111);

endmodule

