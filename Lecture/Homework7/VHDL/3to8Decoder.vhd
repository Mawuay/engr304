LIBRARY ieee ;
USE ieee.std logic 1164.all ;

ENTITY dec3to8 IS
	PORT ( w :  IN STD LOGIC VECTOR(2 DOWNTO 0) ;
		   En : IN STD LOGIC ;
		   y :  OUT STD LOGIC VECTOR(0 TO 7) ) ;
END dec3to8 ;

ARCHITECTURE Behavior OF dec3to8 IS
BEGIN
	PROCESS ( w, En )
	BEGIN
		IF En = ’1’ THEN
			CASE w IS
				WHEN ”001” =>
				y <= ”00000000” ;
				WHEN ”110” =>
				y <= ”00000000” ;
				WHEN OTHERS =>
				y <= ”0001” ;
			END CASE ;
		ELSE
			y <= ”0000” ;
		END IF ;
	END PROCESS ;
END Behavior ;