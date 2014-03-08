SRC	=$(wildcard *.c)
OBJ	=$(SRC:.c=.o)
CC	=cc
CFLAGS	=-Wall -g -c
hpath	=-I ./
vpath %.h ./

all:main

main:$(OBJ)
	$(CC) $^ -o $@
$(OBJ):%.o:%.c
	$(CC) $(CFLAGS) $< -o $@ $(hpath)
clean:
	-rm -vf *.o .*.swp

.PHONY:all clean
