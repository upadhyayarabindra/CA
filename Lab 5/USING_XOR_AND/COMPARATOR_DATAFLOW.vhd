library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity COMPARATOR_DATAFLOW is
    Port (
        A  : in  STD_LOGIC_VECTOR(1 downto 0);
        B  : in  STD_LOGIC_VECTOR(1 downto 0);
        EQ : out STD_LOGIC;
        GT : out STD_LOGIC;
        LT : out STD_LOGIC
    );
end COMPARATOR_DATAFLOW;

architecture Dataflow of COMPARATOR_DATAFLOW is
begin

    -- A = B
    EQ <= (A(1) xnor B(1)) and
          (A(0) xnor B(0));

    -- A > B
    GT <= (A(1) and not B(1)) or
          ((A(1) xnor B(1)) and A(0) and not B(0));

    -- A < B
    LT <= (not A(1) and B(1)) or
          ((A(1) xnor B(1)) and not A(0) and B(0));

end Dataflow;