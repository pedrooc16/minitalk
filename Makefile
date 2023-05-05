CLIENT = client 
SERVER = server
CC = CC
CFLAGS = -Wall -Werror -Wextra -g

all: $S(SERVER) $(CLIENT)

$(NAME): all
