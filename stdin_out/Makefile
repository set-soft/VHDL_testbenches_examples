all: gen tb val
	./gen | ./tb | ./val

tb: tb.vhdl
	ghdl -i $<
	ghdl -m $@

clean:
	-rm -f *.o .*~ gen tb val *.cf
