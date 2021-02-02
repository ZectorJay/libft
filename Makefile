# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hmickey <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/03 15:52:53 by hmickey           #+#    #+#              #
#    Updated: 2021/01/18 15:39:18 by hmickey          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	libft.a

SRCS		=	ft_strlen.c ft_strncmp.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_toupper.c ft_tolower.c ft_isprint.c ft_strchr.c ft_strrchr.c ft_memmove.c ft_memchr.c ft_memcmp.c ft_strlcpy.c ft_strdup.c ft_calloc.c ft_strnstr.c ft_strlcat.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_split.c ft_itoa.c ft_strmapi.c ft_isspace.c

BONUS		=	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

OBJS		= ${SRCS:.c=.o}

OBJS_BONUS	= ${BONUS:.c=.o}

CC			= gcc
RM			= rm -f

CFLAGS		= -Wall -Wextra -Werror

.c.o:		= ${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

$(NAME):		${OBJS}
				ar rc ${NAME} ${OBJS}


bonus:			${OBJS_BONUS} ${NAME}
				ar rc ${NAME} ${OBJS_BONUS}

all:			${NAME}

clean:
				${RM} ${OBJS} ${OBJS_BONUS}

fclean:			clean
				${RM} ${NAME}

re:				fclean all

.PHONY:			all bonus clean fclean re
