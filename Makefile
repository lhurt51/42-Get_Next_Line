# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhurt <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/10/19 11:15:26 by lhurt             #+#    #+#              #
#    Updated: 2016/10/19 11:15:27 by lhurt            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC =	gcc

FLAG =	-Wall -Wextra -Werror -o

LIBFT = libft/

COMP =	make -C $(LIBFT) re

COMPC = make -C $(LIBFT) clean

COMPF = make -C $(LIBFT) fclean

NAME =	get_next_line

SRCS =	$(LIBFT)libft.a \
		get_next_line.c \
		main.c \

all: 	$(NAME)

$(NAME):
		@$(COMP)
		@$(CC) $(FLAG) $(NAME) $(SRCS)

clean:
		@$(COMPC)

fclean:	clean
		@$(COMPF)
		@/bin/rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
