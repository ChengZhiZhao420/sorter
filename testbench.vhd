library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sorter_tb is
end sorter_tb;

architecture tb of sorter_tb is
signal clk, reset:std_logic;
signal weight: std_logic_vector(0 to 11);
signal grp1, grp2, grp3, grp4, grp5, grp6: std_logic_vector(0 to 7);
signal currentGrp: std_logic_vector(0 to 2);
begin
	UUT: entity work.sorter port map(clk => clk, reset => reset, weight => weight, grp1 => grp1,
		grp2 => grp2, grp3 => grp3, grp4 => grp4, grp5 => grp5, grp6 => grp6, currentGrp => currentGrp);
		
		process
		constant period : time := 10 ns;
		begin
--------------Grp1
			reset <= '0';
			clk <= '0';
        		wait for period;

        		clk <= '1';
			weight <= std_logic_vector(to_unsigned(50, weight'length));
			wait for period;
			assert((grp1 = "00000001") and (currentGrp = "001")) 
				report "test failed for weight is 50lb" severity error;

			clk <= '0';
        		wait for period;

        		clk <= '1';
			weight <= std_logic_vector(to_unsigned(88, weight'length));
			wait for period;
			assert((grp1 = "00000010") and (currentGrp = "001")) 
				report "test failed for weight is 88lb" severity error;

			clk <= '0';
        		wait for period;

			clk <= '1';
			weight <= std_logic_vector(to_unsigned(200, weight'length));
			wait for period;
			assert((grp1 = "00000011") and (currentGrp = "001")) 
				report "test failed for weight is 200lb" severity error;
-----------------------------------------------------------------------------------------------
			clk <= '0';
			reset <= '1';
			wait for period;
			assert((grp1 = "00000000") and (currentGrp = "000"))
				report "test failed for reset = 1" severity error;

------------------Grp2
			reset <= '0';
			clk <= '1';
			weight <= std_logic_vector(to_unsigned(250, weight'length));
			wait for period;
			assert((grp2 = "00000001") and (currentGrp = "010")) 
				report "test failed for weight is 250lb" severity error;
			
			clk <= '0';
        		wait for period;

        		clk <= '1';
			weight <= std_logic_vector(to_unsigned(300, weight'length));
			wait for period;
			assert((grp2 = "00000010") and (currentGrp = "010")) 
				report "test failed for weight is 300lb" severity error;

			clk <= '0';
        		wait for period;

        		clk <= '1';
			weight <= std_logic_vector(to_unsigned(500, weight'length));
			wait for period;
			assert((grp2 = "00000011") and (currentGrp = "010")) 
				report "test failed for weight is 500lb" severity error;

----------------------------------------------------------------------------------------------------
			clk <= '0';
			reset <= '1';
			wait for period;
			assert((grp2 = "00000000") and (currentGrp = "000"))
				report "test failed for reset = 1" severity error;

--------------------Grp3
			reset <= '0';
			clk <= '1';
			weight <= std_logic_vector(to_unsigned(504, weight'length));
			wait for period;
			assert((grp3 = "00000001") and (currentGrp = "011")) 
				report "test failed for weight is 504lb" severity error;
			
			clk <= '0';
        		wait for period;

        		clk <= '1';
			weight <= std_logic_vector(to_unsigned(615, weight'length));
			wait for period;
			assert((grp3 = "00000010") and (currentGrp = "011")) 
				report "test failed for weight is 615lb" severity error;

			clk <= '0';
        		wait for period;

        		clk <= '1';
			weight <= std_logic_vector(to_unsigned(789, weight'length));
			wait for period;
			assert((grp3 = "00000011") and (currentGrp = "011")) 
				report "test failed for weight is 789lb" severity error;
				
---------------------------------------------------------------------------------------------------------
			clk <= '0';
			reset <= '1';
			wait for period;
			assert((grp3 = "00000000") and (currentGrp = "000"))
				report "test failed for reset = 1" severity error;

--------------------Grp4
			reset <= '0';
			clk <= '1';
			weight <= std_logic_vector(to_unsigned(855, weight'length));
			wait for period;
			assert((grp4 = "00000001") and (currentGrp = "100")) 
				report "test failed for weight is 855lb" severity error;
			
			clk <= '0';
        		wait for period;

        		clk <= '1';
			weight <= std_logic_vector(to_unsigned(930, weight'length));
			wait for period;
			assert((grp4 = "00000010") and (currentGrp = "100")) 
				report "test failed for weight is 930lb" severity error;

			clk <= '0';
        		wait for period;

        		clk <= '1';
			weight <= std_logic_vector(to_unsigned(1000, weight'length));
			wait for period;
			assert((grp4 = "00000011") and (currentGrp = "100")) 
				report "test failed for weight is 1000lb" severity error;
				
---------------------------------------------------------------------------------------------------------
			clk <= '0';
			reset <= '1';
			wait for period;
			assert((grp4 = "00000000") and (currentGrp = "000"))
				report "test failed for reset = 1" severity error;

--------------------Grp5
			reset <= '0';
			clk <= '1';
			weight <= std_logic_vector(to_unsigned(1002, weight'length));
			wait for period;
			assert((grp5 = "00000001") and (currentGrp = "101")) 
				report "test failed for weight is 1002lb" severity error;
			
			clk <= '0';
        		wait for period;

        		clk <= '1';
			weight <= std_logic_vector(to_unsigned(1339, weight'length));
			wait for period;
			assert((grp5 = "00000010") and (currentGrp = "101")) 
				report "test failed for weight is 1339lb" severity error;

			clk <= '0';
        		wait for period;

        		clk <= '1';
			weight <= std_logic_vector(to_unsigned(2000, weight'length));
			wait for period;
			assert((grp5 = "00000011") and (currentGrp = "101")) 
				report "test failed for weight is 2000lb" severity error;
				
	---------------------------------------------------------------------------------------------------------
			clk <= '0';
			reset <= '1';
			wait for period;
			assert((grp5 = "00000000") and (currentGrp = "000"))
				report "test failed for reset = 1" severity error;

--------------------Grp6
			reset <= '0';
			clk <= '1';
			weight <= std_logic_vector(to_unsigned(2055, weight'length));
			wait for period;
			assert((grp6 = "00000001") and (currentGrp = "110")) 
				report "test failed for weight is 2055lb" severity error;
			
			clk <= '0';
        		wait for period;

        		clk <= '1';
			weight <= std_logic_vector(to_unsigned(3000, weight'length));
			wait for period;
			assert((grp6 = "00000010") and (currentGrp = "110")) 
				report "test failed for weight is 3000lb" severity error;

			clk <= '0';
        		wait for period;

        		clk <= '1';
			weight <= std_logic_vector(to_unsigned(2899, weight'length));
			wait for period;
			assert((grp6 = "00000011") and (currentGrp = "110")) 
				report "test failed for weight is 2899lb" severity error;
			
			wait;
		end process;
			
end tb;
		
		
