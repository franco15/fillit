# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mikim <mikim@student.42.us.org>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/03/16 16:44:18 by mikim             #+#    #+#              #
#    Updated: 2017/03/19 00:45:09 by mikim            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fillit

SRC = main.c		\
	  ft_fill.c		\
	  ft_create.c	\
	  ft_check.c	\
	  ft_valid.c	\
	  ft_print.c	\
	  ft_tools.c

FLAGS = -Wall -Wextra -Werror

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME):
	gcc -c $(FLAGS) $(SRC)
	gcc $(OBJ) -o $(NAME)

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
