CC	= gcc
CFLAGS	= -Wall -Werror -pedantic -m32
OBJS	= prodcons.o sem.o yield.o hw.o start_schedule.o
EXEC	= prodcons

all: $(EXEC)

prodcons: $(OBJS)
	$(CC) $(OBJS) -o $@

prodcons.o: prodcons.c
sem.o: sem.c sem.h
tw.o: tw.c tw.h
start_schedule.o: start_schedule.c start_schedule.h
yield.o: yield.c yield.h

.PHONY: clean
clean:
	rm -f $(OBJS) $(EXEC) *~
