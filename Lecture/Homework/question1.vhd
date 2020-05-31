


entity Problem_1 is 
  port (
    A, B, C, D :IN bit;
    F : OUT bit
  );
  
end entity Problem_1 ;

architecture Behavioral of Problem_1 is
begin 
  process(A,B,C,D) is 
    F <= ((( (B and (not C)) and (not D) ) or ((B and (not A)) and D)) or (( (B and (not A)) and C)) or ( (A and C) and B )    );
end process;
end Behavioral;