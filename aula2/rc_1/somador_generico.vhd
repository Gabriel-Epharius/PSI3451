entity fa is
  port (
    a, b, ci : in  bit;
    r, co : out bit
  );
end entity;

architecture structural of fa is
begin
  r <= a xor b xor ci;
  co <= (a and b) or (a and ci) or (b and ci);
end architecture;


entity somador is
  generic(
    bits: natural := 8
  );
  port(
    a, b: in  bit_vector(bits-1 downto 0);
    ci: in bit;
    s:   out bit_vector(bits-1 downto 0);
    co:  out bit
  );
end entity;

architecture estrutural of somador is
  component ha is
    port (
      a, b : in  bit;
      r, co : out bit
    );
  end component;
  component fa is
    port (
      a, b, ci : in  bit;
      r, co : out bit
    );
  end component;
  signal cots: bit_vector(bits-1 downto 0);
begin
  fas: for i in bits-1 downto 0 generate
    lsb: if i=0 generate
      hai: fa port map(a(i), b(i), ci, s(i), cots(i));
    end generate;
    msb: if i>0 generate 
      fai: fa port map(a(i),b(i),cots(i-1),s(i),cots(i));
    end generate;
  end generate fas;
  co <= cots(bits-1);
end architecture;

