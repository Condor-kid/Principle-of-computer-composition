`timescale 1ns / 1ps
module SignZeroExtend(
	input[15:0] immediate,
	input ExtSel,
	output[31:0] extendImmediate
);
	assign extendImmediate=	{ExtSel&&immediate[15]?16'hffff:16'h0000,immediate};
endmodule
