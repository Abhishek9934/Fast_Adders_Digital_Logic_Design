module mole_generator(input clk, input restart, input [3:0] level,
							 output a_mole, b_mole, c_mole, d_mole, e_mole, f_mole, g_mole, 
							 output [3:0] anode_en_mole,
							 output [2:0] type_of_mole);

wire [14:0] rand;
wire [9:0] plague;
wire [7:0]  location;
reg [6:0] temp_mole;	
reg [3:0] temp_anode;	
reg [2:0] temp_typeofmole;

//instantiate the lfsrs
lfsr_15bit mole_generation(.clk(clk), .restart(restart), .rand(rand));
lfsr_8bit  mole_location(.clk(clk), .restart(restart), .rand(location));
lfsr_10bit plaguemole(.clk(clk), .restart(restart), .rand(plague));

always @(rand)
begin
	if(rand <= 3283) 
		begin
			temp_mole = 7'b0000000;
			temp_typeofmole = 3;
		end
	else if(rand >328 && rand <= 9831) 
		begin
			temp_mole = 7'b0100100;
			temp_typeofmole = 2;
		end
	
	else if(rand > 9831 && rand <= 32767)
		begin
			case(level)
				1:
					begin
						
						if(plague < 51)
						begin
							temp_mole = 7'b1000000;
							temp_typeofmole = 0;
						end
						else
						begin
							temp_mole = 7'b1111001;
							temp_typeofmole = 1;
						end
					end
				2:
					begin
						
						if(plague <103)
						begin
							temp_mole = 7'b1000000;
							temp_typeofmole = 0;
						end
						else
						begin
							temp_mole = 7'b1111001;
							temp_typeofmole = 1;
						end
					end

				endcase
				
		end
	else 
		begin
			temp_mole = 7'b0111111;
			temp_typeofmole = 6; 
		end
	
	if(location >= 0 && location < 64)
		temp_anode <= 4'b1110;
	else if(location >= 64 && location < 128)
		temp_anode <= 4'b1101;
	else if(location >= 128 && location < 192)
		temp_anode <= 4'b1011;
	else
		temp_anode <= 4'b0111;
end

assign {g_mole, f_mole, e_mole, d_mole, c_mole, b_mole, a_mole} = temp_mole;
assign anode_en_mole = temp_anode;
assign type_of_mole = temp_typeofmole;
			
endmodule 
