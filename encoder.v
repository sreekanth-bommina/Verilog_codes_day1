 //with if condition
 
module pri_enc(input [7:0]i,output reg [2:0]y);
    always@(*)begin
	    if(i[7]==1) y=3'b111;
	    else if(i[6]==1) y=3'b110;
	    else if(i[5]==1) y=3'b101;
	    else if(i[4]==1) y=3'b100;
	    else if(i[3]==1) y=3'b011;
	    else if(i[2]==1) y=3'b010;
	    else if(i[1]==1) y=3'b001;
	    else if(i[0]==1) y=3'b000;
		else y=3'bzzz;
	end
endmodule

//with casex

module pri_enc(input [7:0]i,output reg [2:0]y);
     always(*)begin
	    casex(i)
		   8'b1xxxxxxx:y=3'b111;
		   8'b01xxxxxx:y=3'b111;
		   8'b001xxxxx:y=3'b111;
		   8'b0001xxxx:y=3'b111;
		   8'b00001xxx:y=3'b111;
		   8'b000001xx:y=3'b111;
		   8'b0000001x:y=3'b111;
		   8'b00000001:y=3'b111;
		   default y=3'bzzz;
		endcase
	 end
endmodule 
