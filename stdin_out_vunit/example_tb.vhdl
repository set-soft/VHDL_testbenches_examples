library std;
use std.textio.all;
library vunit_lib;
context vunit_lib.vunit_context;

entity Example_TB is
  generic (runner_cfg : string);
end entity Example_TB;

architecture Simulator of Example_TB is
begin
   do_read_write:
   process
      variable l  : line;
      variable lo : line;
      variable v  : integer;
      file ifile  : text;
      file ofile  : text;
   begin
      test_runner_setup(runner,runner_cfg);
  
      file_open(ifile,output_path(runner_cfg)&"/input",read_mode);
      file_open(ofile,output_path(runner_cfg)&"/output",write_mode);
      -- Read all the input lines
      while not(endfile(ifile)) loop
         readline(ifile,l);
         -- Extract an integer
         read(l,v);
         -- Write the value incremented
         write(lo,v+1);
         writeline(ofile,lo);
      end loop;
      file_close(ifile);
      file_close(ofile);
      test_runner_cleanup(runner);
   end process do_read_write;
end architecture Simulator; -- Entity: Example_TB

