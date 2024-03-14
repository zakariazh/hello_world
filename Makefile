CC 		?= gcc
CFLAGS 	?= -Wall -Werror
SRC = $(wildcard *.c)
OBJ = hello

all: $(OBJ)

$(OBJ): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(OBJ) $(LDFLAGS)

install: $(OBJ)
	install -d $(DESTDIR)
	install -m 0755 $(OBJ) $(DESTDIR)

clean:
	rm -f $(OBJ)

