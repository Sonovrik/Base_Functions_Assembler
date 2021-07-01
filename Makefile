
NAME = libasm.a

SRC = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_read.s ft_write.s ft_strdup.s

OBJ = $(SRC:.s=.o)

CC = gcc -Wall -Wextra -Werror

NASM_COMPILE = nasm -f macho64

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)
	ranlib $(NAME)

%.o: %.s
	$(NASM_COMPILE) $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all

test:
	$(CC) main.c -L. -lasm -o test

clean_test:
	rm -rf test

.PHONY: all clean fclean re
