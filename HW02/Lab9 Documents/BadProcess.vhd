signal a, b, c, d : integer;

process(a,b,c,d) is
begin
  a <= 1;
  b <= 2;
  c <= 3;
  d <= 4;
  if (a = 1) then
    b <= 4;
  end if;
  if (b = 4) then
    c <= 6;
  end if;
  if (c = 6) then
    d <= 8;
  end if;
end process;
