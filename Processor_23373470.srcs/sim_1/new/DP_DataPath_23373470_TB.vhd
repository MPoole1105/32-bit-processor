----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 07.11.2024 17:37:14
-- Design Name: 
-- Module Name: DP_DataPath_23373470_TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DP_DataPath_23373470_TB is
--  Port ( );
end DP_DataPath_23373470_TB;

architecture Behavioral of DP_DataPath_23373470_TB is

component DP_DataPath_23373470 is
    Port ( 
           IR_IN : in std_logic_vector (31 downto 0);
           MB : in std_logic ;
           Data_IN : in std_logic_vector (31 downto 0);
           MD : in std_logic;
           FS : in std_logic_vector (4 downto 0);
           CLK : in std_logic ;
           DR : in std_logic_vector (4 downto 0);
           RW : in std_logic;
           Reset : in std_logic;
           SA : in std_logic_vector (4 downto 0);
           SB : in std_logic_vector (4 downto 0);
           TA : in std_logic_vector (3 downto 0);
           TB : in std_logic_vector (3 downto 0);
           TD : in std_logic_vector (3 downto 0);
           Data_out : out std_logic_vector (31 downto 0);
           C : out std_logic;
           N : out std_logic;
           V : out std_logic;
           Z : out std_logic;
           ADD : out std_logic_vector (31 downto 0)
    );
    
end component ;

signal IR_IN_Tb, Data_IN_tb, Data_out_tb, ADD_tb : std_logic_vector (31 downto 0) := (others => '0');
signal FS_tb, DR_tb, SA_tb, SB_tb : std_logic_vector (4 downto 0) := (others => '0');
signal TD_tb, TA_tb, TB_tb : std_logic_vector (3 downto 0) := (others => '0');
signal MB_tb, MD_tb, CLK_tb, RW_tb, Reset_tb, C_tb, N_tb, V_tb, Z_tb : std_logic := '0';
constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164A69E";
constant PERIOD : time := 400 ns;
constant FunctionTime : time := 1000 ns;

begin

uut : DP_DataPath_23373470 Port Map 
      ( IR_IN => IR_IN_Tb,
        MB => MB_tb,
        Data_In => Data_IN_tb, 
        MD => MD_tb, 
        FS => FS_tb,         
        CLK => CLK_tb,
        DR => DR_tb, 
        RW => RW_tb, 
        Reset => Reset_tb, 
        SA => SA_tb, 
        SB => SB_tb, 
        TD => TD_tb, 
        TA => TA_tb,  
        TB => TB_tb, 
        Data_out => Data_out_tb, 
        C => C_tb,
        N => N_tb, 
        V => V_tb, 
        Z => Z_tb,
        ADD => ADD_tb
      );

CLK_TB <= not ClK_TB after period/2; 
stim_proc : process 
begin 

Reset_tb <= '1';
MD_tb <= '1'; 
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00000";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A69E";  -- Data to load
sa_tb <= "00000";
sb_tb <= "00000";

wait for period;
RW_tb <= '1';
wait for period;


Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00001";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A69D";  -- Data to load
sa_tb <= "00001";
sb_tb <= "00001";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00010";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A69C";  -- Data to load
sa_tb <= "00010";
sb_tb <= "00010";
wait for period;
RW_tb <= '1';
wait for period;
 
Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00011";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A69B";  -- Data to load
sa_tb <= "00011";
sb_tb <= "00011";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00100";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A69A";  -- Data to load
sa_tb <= "00100";
sb_tb <= "00100";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00101";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A699";  -- Data to load
sa_tb <= "00101";
sb_tb <= "00101";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00110";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A698";  -- Data to load
sa_tb <= "00110";
sb_tb <= "00110";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00111";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A697";  -- Data to load
sa_tb <= "00111";
sb_tb <= "00111";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "01000";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A696";  -- Data to load
sa_tb <= "01000";
sb_tb <= "01000";
wait for period;
RW_tb <= '1';
wait for period;


Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "01001";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A695";  -- Data to load
sa_tb <= "01001";
sb_tb <= "01001";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "01010";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A694";  -- Data to load
sa_tb <= "01010";
sb_tb <= "01010";
wait for period;
RW_tb <= '1';
wait for period;
 
Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "01011";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A693";  -- Data to load
sa_tb <= "01011";
sb_tb <= "01011";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "01100";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A692";  -- Data to load
sa_tb <= "01100";
sb_tb <= "01100";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "01101";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A691";  -- Data to load
sa_tb <= "01101";
sb_tb <= "01101";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "01110";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A690";  -- Data to load
sa_tb <= "01110";
sb_tb <= "01110";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "01111";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A68F";  -- Data to load
sa_tb <= "01111";
sb_tb <= "01111";

wait for period;
RW_tb <= '1';
wait for period;
Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "10000";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A68E";  -- Data to load
sa_tb <= "10000";
sb_tb <= "10000";
wait for period;
RW_tb <= '1';
wait for period;


Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "10001";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A68D";  -- Data to load
sa_tb <= "10001";
sb_tb <= "10001";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "10010";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A68C";  -- Data to load
sa_tb <= "10010";
sb_tb <= "10010";
wait for period;
RW_tb <= '1';
wait for period;
 
Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "10011";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A68B";  -- Data to load
sa_tb <= "10011";
sb_tb <= "10011";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "10100";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A68A";  -- Data to load
sa_tb <= "10100";
sb_tb <= "10100";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "10101";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A689";  -- Data to load
sa_tb <= "10101";
sb_tb <= "10101";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "10110";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A688";  -- Data to load
sa_tb <= "10110";
sb_tb <= "10110";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "10111";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A687";  -- Data to load
sa_tb <= "10111";
sb_tb <= "10111";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "11000";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A686";  -- Data to load
sa_tb <= "11000";
sb_tb <= "11000";
wait for period;
RW_tb <= '1';
wait for period;


Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "11001";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A685";  -- Data to load
sa_tb <= "11001";
sb_tb <= "11001";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "11010";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A684";  -- Data to load
sa_tb <= "11010";
sb_tb <= "11010";
wait for period;
RW_tb <= '1';
wait for period;
 
Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "11011";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A683";  -- Data to load
sa_tb <= "11011";
sb_tb <= "11011";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "11100";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A682";  -- Data to load
sa_tb <= "11100";
sb_tb <= "11100";

wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "11101";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A681";  -- Data to load
sa_tb <= "11101";
sb_tb <= "11101";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "11110";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A680";  -- Data to load
sa_tb <= "11110";
sb_tb <= "11110";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "11111";  -- Register address in binary
TD_tb <= "0000";
DATA_IN_tb  <= x"0164A67F";  -- Data to load
sa_tb <= "11111";
sb_tb <= "11111";
wait for period;
RW_tb <= '1';
wait for period;


Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00000";  
TD_tb <= "0001";
DATA_IN_tb  <= x"0164A67E";  -- Data to load
sa_tb <= "00000";
sb_tb <= "00000";
ta_tb <= "0001";
tb_tb <= "0001";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00000";  
TD_tb <= "0010";
DATA_IN_tb  <= x"0164A67D";  -- Data to load
ta_tb <= "0010";
tb_tb <= "0010";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00000";  
TD_tb <= "0011";
DATA_IN_tb  <= x"0164A67C";  -- Data to load
ta_tb <= "0011";
tb_tb <= "0011";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00000";  
TD_tb <= "0100";
DATA_IN_tb  <= x"0164A67B";  -- Data to load
ta_tb <= "0100";
tb_tb <= "0100";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00000"; 
TD_tb <= "0101";
DATA_IN_tb  <= x"0164A67A";  -- Data to load
ta_tb <= "0101";
tb_tb <= "0101";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00000";  
TD_tb <= "0110";
DATA_IN_tb  <= x"0164A679";  -- Data to load
ta_tb <= "0110";
tb_tb <= "0110";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00000";  
TD_tb <= "0111";
DATA_IN_tb  <= x"0164A678";  -- Data to load
ta_tb <= "0111";
tb_tb <= "0111";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00000";  
TD_tb <= "1000";
DATA_IN_tb  <= x"0164A677";  -- Data to load
ta_tb <= "1000";
tb_tb <= "1000";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00000"; 
TD_tb <= "1001";
DATA_IN_tb  <= x"0164A676";  -- Data to load
ta_tb <= "1001";
tb_tb <= "1001";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00000"; 
TD_tb <= "1010";
DATA_IN_tb  <= x"0164A675";  -- Data to load
ta_tb <= "1010";
tb_tb <= "1010";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00000";  -- Register address in binary
TD_tb <= "1011";
DATA_IN_tb  <= x"0164A674";  -- Data to load
ta_tb <= "1011";
tb_tb <= "1011";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00000";  
TD_tb <= "1100";
DATA_IN_tb  <= x"0164A673";  -- Data to load
ta_tb <= "1100";
tb_tb <= "1100";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00000";  
TD_tb <= "1101";
DATA_IN_tb  <= x"0164A672";  -- Data to load
ta_tb <= "1101";
tb_tb <= "1101";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00000";  
TD_tb <= "1110";
DATA_IN_tb  <= x"0164A671";  -- Data to load
ta_tb <= "1110";
tb_tb <= "1110";
wait for period;
RW_tb <= '1';
wait for period;

Reset_tb <= '0';
wait for period;
RW_tb <= '0'; -- Enable write
DR_tb  <= "00000";  
TD_tb <= "1111";
DATA_IN_tb  <= x"0164A670";  -- Data to load
ta_tb <= "1111";
tb_tb <= "1111";
wait for period;
RW_tb <= '1';
wait for period;

        
    RW_tb <= '1';
    DR_tb  <= "00000";
    TD_tb <= "0000";
    ta_tb <= "0000";
    tb_tb <= "0000";
    sa_tb <= "00101";
    sb_tb <= "01111";
    wait for period; 

-- register operations
    MD_tb <= '0'; 
    MB_tb <= '0';
    FS_tb <= "00000"; --1
     
    wait for FunctionTime;
    
    FS_tb <= "11000"; --2

    wait for FunctionTime;
    
    FS_tb <= "00001"; --3

    wait for FunctionTime;

    FS_tb <= "01000"; --4

    wait for FunctionTime;
            
    FS_tb <= "00010"; --5
     
    wait for FunctionTime;
 
    FS_tb <= "10000"; --6
    wait for FunctionTime;
    
    FS_tb <= "00011"; --7
    wait for FunctionTime;
    
    FS_tb <= "10100"; --8
    wait for FunctionTime;
    
    FS_tb <= "00100"; --9
    wait for FunctionTime;
    
    FS_tb <= "01110"; --10
    wait for FunctionTime;
    
    FS_tb <= "00111"; --11
    wait for FunctionTime;
    
    FS_tb <= "01010"; --12
    wait for FunctionTime;
    
    FS_tb <= "00110"; --13
    wait for FunctionTime;
    
    FS_tb <= "00101"; --14
    wait for FunctionTime;

     FS_tb <= "01100"; --15
    wait for FunctionTime;

-- register operations with constant in.
    MD_tb <= '0'; 
    MB_tb <= '1';
    IR_In_TB <= x"0164A69E";
    FS_tb <= "11000"; --2

    wait for FunctionTime;

    FS_tb <= "01000"; --4

    wait for FunctionTime;
            
    FS_tb <= "00010"; --5
     
    wait for FunctionTime;
 
    FS_tb <= "10000"; --6
    wait for FunctionTime;
    
    FS_tb <= "00011"; --7
    wait for FunctionTime;
    
    FS_tb <= "10100"; --8
    wait for FunctionTime;
    
    FS_tb <= "00100"; --9
    wait for FunctionTime;
    
    FS_tb <= "01010"; --12
    wait for FunctionTime;

    FS_tb <= "00101"; --14
    wait for FunctionTime;

     FS_tb <= "01100"; --15
    wait for FunctionTime;
    

end process;

end Behavioral;
