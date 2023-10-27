ENTITY carro IS 
PORT (  c : IN BIT; 	-- car headlight
	i : IN BIT;	-- ignition
	d : IN BIT;	-- car door
	a : OUT BIT);	-- alarm
END carro;

ARCHITECTURE arch OF carro IS
BEGIN
	PROCESS( c, i, d)
	BEGIN
		 a <= i AND ( c OR d);
	END PROCESS;
END arch;
