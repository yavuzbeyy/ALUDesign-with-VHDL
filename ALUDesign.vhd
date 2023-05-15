library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ALUDesign is
  port(
    DR: in std_logic_vector(15 downto 0);
    AC: in std_logic_vector(15 downto 0);
    inp: in std_logic_vector(7 downto 0);
    ld: in std_logic;
    S5, S4, S3: in std_logic;
    ALU_Select: in std_logic_vector(2 downto 0);
    alu_sonuc: out std_logic_vector(15 downto 0);
    ALU_out: out std_logic_vector(7 downto 0)
  );
end entity ALUDesign;

architecture arch of ALUDesign is
  signal temp: std_logic_vector(15 downto 0);
  signal elde: std_logic_vector(16 downto 0); -- elde 
  signal sum_unsigned : unsigned(16 downto 0);
  signal temp_unsigned: unsigned(15 downto 0);
begin

  process (ALU_Select, DR, AC, inp, ld, elde) 
  begin
  --Aritmetik İşlemler
    if ld = '1' then
      -- Topla
      if ALU_Select = "000" then
		sum_unsigned <= unsigned('0' & AC) + unsigned('0' & DR); 
		temp_unsigned <= sum_unsigned(15 downto 0);
		temp <= std_logic_vector(temp_unsigned);
      -- Çıkarma
      elsif ALU_Select = "001" then
        sum_unsigned <= unsigned('0' & AC) - unsigned('0' & DR); 
		  temp_unsigned <= sum_unsigned(15 downto 0);
		  temp <= std_logic_vector(temp_unsigned);
		  -- AC' nin aktarımı
		  elsif ALU_Select = "011" then
		  	temp <= AC;
      -- AC + DR
      elsif ALU_Select = "010" then
        elde <= (others => '0');
        for i in 0 to 15 loop
          elde(i+1) <= (AC(i) and DR(i)) or (elde(i) and (AC(i) xor DR(i)));
          temp(i) <= AC(i) xor DR(i) xor elde(i);
        end loop;
      -- DR'yi Aktar
      elsif ALU_Select = "011" then
        temp <= DR;
      -- AC'yi Tersle
      elsif ALU_Select = "100" then
        temp <= not AC;
      -- INP AC'ye Aktar
		elsif ALU_Select = "101" then
		temp(7 downto 0) <= inp;
		temp(15 downto 8) <= (others => '0');
      -- Sağa Kaydır
      elsif ALU_Select = "110" then
        temp <= '0' & AC(15 downto 1);
      -- Sola Kaydır
      elsif ALU_Select = "111" then
        temp <= AC(14 downto 0) & '0';
      else
        temp <= (others => '0');
      end if;
      -- Mantıksal İşlemler
      if S5 = '0' and S4 = '0' and S3 = '0' then -- AC <- AC ^ DR (Logical AND)
        temp <= AC and DR;
      elsif S5 = '0' and S4 = '0' and S3 = '1' then -- AC <- AC v DR (Logical OR)
        temp <= AC or DR;
      elsif S5 = '0' and S4 = '1' and S3 = '0' then -- AC <- AC XOR DR (Logical XOR)
        temp <= AC xor DR;
      elsif S5 = '1' and S4 = '0' and S3 = '1' then -- AC <- shl AC (Shift Left)
        temp <= AC(14 downto 0) & '0';
       elsif S5 = '1' and S4 = '1' and S3 = '1' then -- AC <- SHR AC (Shift Right)
        temp <= '0' & AC(15 downto 1);
      else
        temp <= (others => '0');
      end if;
    else
      temp <= (others => '0');
    end if;
    alu_sonuc <= temp;
    ALU_out <= (others => '0'); 
  end process;

end architecture arch;