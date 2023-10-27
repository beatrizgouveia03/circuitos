ENTITY more_less IS
PORT (  a : IN BIT_VECTOR (3 DOWNTO 0);	-- data input
	s : OUT BIT);			-- data output
END more_less;

ARCHITECTURE arch OF more_less IS 
BEGIN
	PROCESS(a)
	BEGIN
		IF(a > "0010" AND a < "1110") THEN
			s <= '1';
		ELSE
			s <= '0';
		END IF;
	END PROCESS;
END arch;
