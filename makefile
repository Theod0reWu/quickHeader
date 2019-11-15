 
ifeq ($(DEBUG), true)
	CC = gcc -g
else
	CC = gcc
endif

all:
	$(CC) -o program 

.o: .c .h
	$(CC) -c .c
  
run:
	./program

clean:
	rm*.o
	rm*~
