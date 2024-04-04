##
## EPITECH PROJECT, 2024
## make
## File description:
## make
##

SRC		=	test.c

OBJ		=	$(SRC:.c=.o)

NAME	=	make_test

TEST_NAME	=	unit_test

TEST	=	tests/test.c

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(OBJ) -o $(NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

tests_run:
	$(CC) -o $(TEST_NAME) -lcriterion $(TEST)
	./(TEST_NAME)

.PHONY: all clean fclean re
