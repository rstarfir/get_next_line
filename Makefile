# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rstarfir <rstarfir@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/28 11:50:47 by aagrivan          #+#    #+#              #
#    Updated: 2019/10/09 16:32:57 by rstarfir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY = all clean fclean re
NAME = gnl
FLAGS = -Wall -Wextra -Werror
FILES = get_next_line.c main.c
LIBFT = libft/*.c
LIBFT2 = libft/
HEADER = get_next_line.h 

all: $(NAME)

$(NAME):
	gcc $(FLAGS) -o $(NAME) $(FILES) $(LIBFT) -I $(HEADER) -L $(LIBFT2)

clean: 
	/bin/rm -f $(NAME)

re: clean all
