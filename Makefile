CLIENT = client 
SERVER = server
CC = CC
CFLAGS = -Wall -Werror -Wextra -g
//g for debugging

all: $S(SERVER) $(CLIENT)

$(NAME): all

$(SERVER)
	$(CC) - $(CFLAGS) 

$(CLIENT)