CC= cc
CFLAGS= -Wall -Werror -Wextra -g

SRC= ft_printf.c \
	src/print_utils.c \
	src/utils.c \
	src/utils2.c \
	src/ft_strlen.c \
	src/ft_toupper.c \
	src/ft_strdup.c \
	src/ft_calloc.c \
	src/ft_bzero.c \
	
NAME= libftprintf.a

OFILES = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OFILES)
	ar rcs $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OFILES) $(SRC:.c=.d)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re