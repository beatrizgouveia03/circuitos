ENTITY comp_andares IS
PORT (  a, b : IN BIT_VECTOR(3 DOWNTO 0);
        result : OUT BIT_VECTOR (1 DOWNTO 0)
);
END comp_andares;

ARCHITECTURE behavior OF comp_andares IS
BEGIN
    PROCESS( a, b)
    BEGIN  
        IF a > b THEN
            result <= "10";
           ELSIF a < b THEN
            result <= "01";
        ELSE
            result <= "00";
        END IF;
    END PROCESS;
END behavior;