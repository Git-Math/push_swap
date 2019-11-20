#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnguyen <mnguyen@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/06 18:25:29 by mnguyen           #+#    #+#              #
#    Updated: 2015/03/25 15:09:50 by mnguyen          ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = push_swap

FLAGS = -Wall -Wextra -Werror

FILES = ./src/push_swap.c ./src/moove.c ./src/init.c ./src/algo.c \
        ./src/error.c ./src/useless.c ./src/lib.c ./src/options.c


all : $(NAME)

$(NAME) : $(FILES)
	@gcc $(FLAGS) $(FILES) -o $(NAME)

clean :
	@touch useless; rm -r useless

fclean : clean
	@rm -f $(NAME)

re : fclean all