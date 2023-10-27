ARCHITECTURE arch_5 OF mux_4x1 IS
BEGIN
	PROCESS ( a0, a1, a2, a3, sel)
	BEGIN
	IF sel(1) = '0' THEN
		IF sel(0) = '0' THEN
			s <= a0;
		ELSE
			s <= a1;
		END IF;
	ELSE
		IF sel(0) = '0' THEN
			s <= a2;
		ELSE
		 	s <= a3;
		END IF;
	END IF;
END PROCESS;
END arch_5; 
