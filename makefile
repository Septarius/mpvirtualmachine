all: prebuild mpvm.exe

clean:
	rm mpvm.exe

prebuild:
	flex src/uscan.l
	mv lex.yy.c src/uscan.c

mpvm.exe:
	g++ -O3 -o mpvm.exe src/*.c -L "C:\GnuWin32\lib" -lfl