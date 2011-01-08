# Makefile for: MinUnit: a minimal unit testing framework for C99
# Data created: 8 Jan 2011
# Whom: Jun Namikawa

TARGET = minunit-example

CC = gcc
CFLAGS = -std=c99 -pedantic -O -Wall -Wextra -g

SRCS = main.c minunit.c
OBJS = $(SRCS:.c=.o)

.PHONY: all
all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) -o $@ $(OBJS) $(CFLAGS)

main.o: main.c minunit.c minunit.h
	$(CC) -c $< -o $@ $(CFLAGS)

minunit.o: minunit.c minunit.h
	$(CC) -c $< -o $@ $(CFLAGS)

.PHONY: clean
clean:
	-@ rm -rf $(OBJS) $(TARGET)

