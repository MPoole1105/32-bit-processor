----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 31.10.2024 02:24:26
-- Design Name: 
-- Module Name: DP_FunctionalUnit_23373470 - Behavioral
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


entity DP_FunctionalUnit_23373470 is
    Port ( A : in std_logic_vector (31 downto 0);
           B : in std_logic_vector (31 downto 0); 
           FS : in std_logic_vector (4 downto 0);
           F : out std_logic_vector (31 downto 0);
           N : out std_logic;
           C : out std_logic;
           Z : out std_logic;
           V : out std_logic
           );
           
end DP_FunctionalUnit_23373470;

architecture Behavioral of DP_FunctionalUnit_23373470 is

component DP_ZeroDetection_23373470 is
       Port (A : in std_logic_vector (31 downto 0);
             Y : out std_logic );
end component;

component DP_Shifter_23373470 is
    Port ( B : in std_logic_vector (31 downto 0);
           S0 : in std_logic; 
           S1 : in std_logic;
           G : out std_logic_vector (31 downto 0);
           C : out std_logic);
           
end component;

component DP_CFlagMux2_1Bit_23373470 is
    Port ( F4 : in std_logic;
           C_A : in std_logic;
           C_Shift : in std_logic;
           C : out std_logic  );
end component ;

component CPU_Mux2_32Bit_23373470 is
    Port ( I0 : in std_logic_vector (31 downto 0);
           I1 : in std_logic_vector (31 downto 0); 
           S  : in std_logic;
           Y  : out std_logic_vector (31 downto 0) );
end component;

component DP_ArithmeticLogicUnit_23373470 is
    Port ( A : in std_logic_vector (31 downto 0);
           C_In : in std_logic;
           B : in std_logic_vector (31 downto 0);
           S0 : in std_logic;
           S1 : in std_logic;
           S2 : in std_logic;
           C : out std_logic;
           V : out std_logic;
           g : out std_logic_vector (31 downto 0)
           );
           
end component;

signal G0, G1 ,Y: std_logic_vector (31 downto 0);
signal C0, C1 : std_logic;


begin

Shifter : DP_Shifter_23373470 port Map (
           B => B,
           S0 => FS(2), 
           S1 => FS(3),
           G => G0,
           C => C0
); 

ALU : DP_ArithmeticLogicUnit_23373470 Port Map (
    
           A => A ,
           C_In => FS(0) ,
           B => B ,
           S0 => FS(1) ,
           S1 => FS(2),
           S2 => FS(3),
           C => C1,
           V => V,
           g => g1
);

MuxF : CPU_Mux2_32Bit_23373470 Port Map (
           I0 => G1 ,
           I1 => G0 , 
           S  => FS(4),
           Y  => Y
);

C_Flag : DP_CFlagMux2_1Bit_23373470 Port Map (
           F4 => FS(4) ,
           C_A => C1 ,
           C_Shift => C0  ,
           C => C
);

Z_Flag : DP_ZeroDetection_23373470 Port Map (
           A => Y,
           Y => Z  
);

F <= Y;
N <= Y(31);

end Behavioral;
