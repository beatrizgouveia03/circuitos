ENTITY fabrica IS
PORT (  e : IN BIT;	-- end of expedient
	m : IN BIT;	-- machines off
	p : IN BIT;	-- production done
	f : IN BIT; 	-- friday
	a : OUT BIT);	-- alarm
END fabrica;

ARCHITECTURE arch OF fabrica IS
BEGIN
	PROCESS( e, m, p, f)
	BEGIN
		a <= (e AND m) OR (f AND p AND m);
	END PROCESS;
END arch; 