CC 		?= gcc
CFLAGS 	?= -Wall -Werror
SRC = $(wildcard *.c)
OBJ = hello

all: $(OBJ)

$(OBJ): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(OBJ)

clean:
	rm -f $(OBJ)

