Name_C = client 
Name_S = server
CC = cc
CFLAGS = -Wall -Werror -Wextra -g
Rm = rm -rf

# Define source files
SRC_C = client.c
SRC_S = server.c

# Define object files
OBJ_C = $(SRC_C:.c=.o)
OBJ_S = $(SRC_S:.c=.o)

all: $(Name_C) $(Name_S)

$(Name_C): $(OBJ_C)
	$(CC) $(CFLAGS) $(OBJ_C) -o $(Name_C)

$(Name_S):	$(OBJ_S)
	$(CC) $(CFLAGS) $(OBJ_S) -o $(Name_S)

%.o: %.c
	$(CC) $(CFLAGS) -c 

clean:
	$(Rm) $(OBJ_S) $(OBJ_C)

fclean:	clean
	$(Rm) $(Name_C) $(Name_S)

re:
	fclean	all
