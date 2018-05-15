library IEEE;
use IEEE.std_logic_1164.all;
library std;
use std.textio.all;

entity TB is
end entity TB;

architecture Simulator of TB is
begin
   do_read_write:
   process
      variable l  : line;
      variable lo : line;
      variable v  : integer;
   begin
      -- Read all the input lines
      while not(endfile(input)) loop
         readline(input,l);
         -- Extract an integer
         read(l,v);
         -- Write the value incremented
         write(lo,v+1);
         writeline(output,lo);
      end loop;
      wait;
   end process do_read_write;
end architecture Simulator; -- Entity: TB

