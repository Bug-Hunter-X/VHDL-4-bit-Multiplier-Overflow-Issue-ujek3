```vhdl
entity multiplier is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           product : out  STD_LOGIC_VECTOR (7 downto 0));
end entity;

architecture behavioral of multiplier is
    signal temp_product : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
begin
    process (clk, rst) is
    begin
        if rst = '1' then
            temp_product <= (others => '0');
        elsif rising_edge(clk) then
            temp_product <= std_logic_vector(unsigned(a) * unsigned(b));
        end if;
    end process;
    product <= temp_product;
end architecture;
```