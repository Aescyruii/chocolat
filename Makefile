##
## EPITECH PROJECT, 2024
## make
## File description:
## make
##

SRC		=	test.c

OBJ		=	$(SRC:.c=.o)

NAME	=	make_test

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(OBJ) -o $(NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
