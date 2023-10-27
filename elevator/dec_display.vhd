ENTITY dec_display IS
PORT (	fl	: IN BIT_VECTOR(3 DOWNTO 0);
	display		: OUT BIT_VECTOR(6 DOWNTO 0)
);
END dec_display;

ARCHITECTURE arch OF dec_display IS
BEGIN
	PROCESS(fl)
		BEGIN
			display(0) <= fl(3) OR fl(1) OR (fl(2) AND fl(0));
			display(1) <= fl(3) OR (NOT fl(2) AND (fl(1) OR fl(0))) OR (fl(1) AND fl(0)) OR (fl(2) AND NOT fl(1) AND NOT fl(0));
			display(2) <= fl(3) OR fl(2) OR fl(0);
			display(3) <= fl(3) OR (fl(1) AND NOT (fl(2) AND fl(0))) OR (fl(2) AND NOT fl(1) AND fl(0));
			display(4) <= fl(3) OR (fl(1) AND NOT fl(0));
			display(5) <= fl(3) OR (fl(2) AND NOT (fl(1) AND fl(0)));
			display(6) <= fl(3) OR (fl(1) AND NOT fl(0)) OR (fl(2) XOR fl(1));
	END PROCESS;
END arch;
