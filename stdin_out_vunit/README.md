PIPE example using VUnit (UNIX only!)

The gen.c prints 0 to 9 to a named pipe provided as argument.

The example_tb.vhdl reads the input named pipe and adds 1 to all input values,
results are printed to the output named pipe.

The val.c verifies that the values are 1 to 10. It reads a provided named pipe.

Here run.py creates the named pipes using mkfifo.

Example provided by @kraigher
