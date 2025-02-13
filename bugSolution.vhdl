```vhdl
entity multiplier is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           product : out  STD_LOGIC_VECTOR (7 downto 0);
           overflow : out STD_LOGIC); -- Added overflow flag
end entity;

architecture behavioral of multiplier is
    signal temp_product : unsigned(7 downto 0);
    signal ovf : STD_LOGIC := '0';
begin
    process (clk, rst) is
    begin
        if rst = '1' then
            temp_product <= (others => '0');
            ovf <= '0';
        elsif rising_edge(clk) then
            if (unsigned(a) * unsigned(b)) > 255 then  -- check for overflow
                temp_product <= to_unsigned(255, 8); -- saturate the output
                ovf <= '1';
            else
                temp_product <= unsigned(a) * unsigned(b);
                ovf <= '0';
            end if;
        end if;
    end process;
    product <= std_logic_vector(temp_product);
    overflow <= ovf; -- Assign overflow flag
end architecture;
```