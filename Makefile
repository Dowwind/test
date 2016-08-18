NAME	=	test

SRC	=	main.c \

OBJ	=	$(SRC:.c=.o)

CC	=	gcc

CFLAGS	=	-W -Wall -Wextra -Werror

all:		$(NAME)

$(NAME):	$(OBJ)
		$(CC) $(OBJ) -o $(NAME)

clean:
		rm -rf $(OBJ)

fclean:		clean
		rm -rf $(NAME)

re:		fclean all

.PHONY:		all clean fclean re
