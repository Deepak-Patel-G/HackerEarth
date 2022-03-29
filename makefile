# Compiler used 
CC = clang
CPP = g++

# Compiler flags 
# -g adds debugging information to the executable file 
# -Wall turns on most, but not all, compiler warnings

CFLAG = -g -Wall

fileName = $(word 2, $(MAKECMDGOALS))

c:
	$(CC) $(CFLAG) $(fileName).c -o $(fileName)
cpp:
	$(CPP) $(fileName).cpp -o $(fileName)
run:
	./$(fileName)