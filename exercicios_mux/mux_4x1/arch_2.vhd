ARCHITECTURE arch_2 OF mux_4x1 IS

COMPONENT mux_2x1
PORT (  a, b : IN BIT; -- data inputs
	sel : IN BIT; -- selector
	s : OUT BIT); -- data output
END COMPONENT;

SIGNAL x,y : BIT;

BEGIN
	u0 : mux_2x1 PORT MAP (a0, a1, sel(0), x);
	u1 : mux_2x1 PORT MAP (a2, a3, sel(0), y);
	u2 : mux_2x1 PORT MAP (x, y, sel(1), s);
END arch_2;
