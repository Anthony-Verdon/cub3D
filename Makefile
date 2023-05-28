# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nlocusso <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/26 17:13:34 by nlocusso          #+#    #+#              #
#    Updated: 2023/05/28 18:37:28 by averdon          ###   ########.fr        #
#    Updated: 2023/01/10 15:15:05 by nlocusso         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS		:= srcs/mandatory/main.c \
			   srcs/mandatory/parsing/early_parsing.c \
			   srcs/mandatory/parsing/utils_pars.c \
			   srcs/mandatory/parsing/pars_texture.c \
			   srcs/mandatory/parsing/pars_map.c \
			   srcs/mandatory/parsing/pars_rgb.c \
			   srcs/mandatory/game/start_game.c \
			   srcs/mandatory/game/initialize_game.c \
			   srcs/mandatory/game/game_utils.c \
			   srcs/mandatory/game/key_functions.c \
			   srcs/mandatory/game/display.c \
			   srcs/mandatory/game/calculate_display.c \
			   srcs/mandatory/game/draw_display.c \
			   srcs/mandatory/game/parse_image.c \
			   srcs/mandatory/game/create_border.c

BSRCS		:= 	srcs/bonus/main_bonus.c \
				srcs/bonus/parsing/early_parsing_bonus.c \
				srcs/bonus/parsing/utils_pars_bonus.c \
				srcs/bonus/parsing/pars_texture_bonus.c \
				srcs/bonus/parsing/pars_map_bonus.c \
				srcs/bonus/parsing/pars_rgb_bonus.c \
				srcs/bonus/game/start_game_bonus.c \
				srcs/bonus/game/initialize_game_bonus.c \
				srcs/bonus/game/move_camera_bonus.c \
				srcs/bonus/game/song_bonus.c \
				srcs/bonus/game/key_functions/animations_bonus.c \
				srcs/bonus/game/key_functions/update_song_bonus.c \
				srcs/bonus/game/key_functions/launch_animations_and_movement_bonus.c \
				srcs/bonus/game/key_functions/player_movement_bonus.c \
				srcs/bonus/game/key_functions/player_actions_bonus.c \
				srcs/bonus/game/key_functions/utils_bonus.c \
				srcs/bonus/game/key_functions/interactions_bonus.c \
				srcs/bonus/game/display/display_bonus.c \
				srcs/bonus/game/display/door_recessed_bonus.c \
				srcs/bonus/game/display/calculate_display_bonus.c \
				srcs/bonus/game/display/draw_display_bonus.c \
				srcs/bonus/game/display/draw_image_bonus.c \
				srcs/bonus/game/display/parse_image_bonus.c \
				srcs/bonus/game/display/launch_parsing_image_bonus.c \
				srcs/bonus/game/display/parse_image_utils_bonus.c \
			   	srcs/bonus/game/display/inventory_bar_bonus.c \
			   	srcs/bonus/game/display/put_case_bar_bonus.c \
			   	srcs/bonus/game/display/minimap_bonus.c \
			   	srcs/bonus/game/display/put_minimap_textures_bonus.c \
				srcs/bonus/game/utils/calculation_bonus.c \
				srcs/bonus/game/utils/close_game_bonus.c \
				srcs/bonus/game/utils/suppress_nodes_bonus.c \
				srcs/bonus/so_long/main_so_long_bonus.c \
				srcs/bonus/so_long/parsing/check_valid_path/check_components_bonus.c \
				srcs/bonus/so_long/parsing/check_valid_path/check_valid_path_bonus.c \
				srcs/bonus/so_long/parsing/check_valid_path/fload_map_bonus.c \
				srcs/bonus/so_long/parsing/check_valid_path/set_up_copy_bonus.c \
				srcs/bonus/so_long/parsing/initialize_map/check_outline_bonus.c \
				srcs/bonus/so_long/parsing/initialize_map/initialize_map_bonus.c \
				srcs/bonus/so_long/parsing/check_argument_bonus.c \
				srcs/bonus/so_long/parsing/check_valid_map_bonus.c \
				srcs/bonus/so_long/parsing/parsing_bonus.c \
				srcs/bonus/so_long/game/display_map/check_walls_bonus.c \
				srcs/bonus/so_long/game/display_map/check_walls_2_bonus.c \
				srcs/bonus/so_long/game/display_map/display_good_walls_bonus.c \
				srcs/bonus/so_long/game/display_map/display_map_bonus.c \
				srcs/bonus/so_long/game/enemies/enemies_bonus.c \
				srcs/bonus/so_long/game/enemies/enemies_movements_bonus.c \
				srcs/bonus/so_long/game/enemies/enemies_utils_bonus.c \
				srcs/bonus/so_long/game/enemies/randomize_enemies_bonus.c \
				srcs/bonus/so_long/game/enemies/randomize_enemies_utils_bonus.c \
				srcs/bonus/so_long/game/keys/actions_key_bonus.c \
				srcs/bonus/so_long/game/keys/check_key_bonus.c \
				srcs/bonus/so_long/game/keys/key_utils_bonus.c \
				srcs/bonus/so_long/game/keys/keyhook_bonus.c \
				srcs/bonus/so_long/game/set_up_game/divise_map_bonus.c \
				srcs/bonus/so_long/game/set_up_game/set_up_sprite_bonus.c \
				srcs/bonus/so_long/game/set_up_game/set_up_var_bonus.c \
				srcs/bonus/so_long/game/game_utils_bonus.c \
				srcs/bonus/so_long/game/launch_animation_and_movement_bonus.c \
				srcs/bonus/so_long/game/calculate_utils_bonus.c \

OBJS		:= ${SRCS:.c=.o}

NAME		:= ./cub3D

BOBJS		:= ${BSRCS:.c=.o}

NAME_BONUS	:= ./cub3D_bonus

COMPILER	?= clang

RM			:= @rm -f

CFLAGS		:= -Wall -Wextra -Werror -g -Ilibraries

LIBRARY     := -Lincludes/libraries/libft -lft \
			   -Lincludes/libraries/libft/ft_fdprintf -lftfdprintf \
			   -Lincludes/libraries/minilibx -lmlx -lXext -lX11 -lm

all :        ${NAME}

.c.o :		${OBJS}
			@(${COMPILER} ${CFLAGS} -c $< -o ${<:.c=.o} || (clear -x; printf "\033[0;31;1mcompilation failed\n\033[0m"; ${COMPILER} ${CFLAGS} -c $< -o ${<:.c=.o} ; exit 1))
	
${NAME}:	${OBJS}
			@clear -x
			@printf "\033[93;1;5mCompiling ...\n\033[0m"
			@make -C includes/libraries/libft
			@make -C includes/libraries/minilibx
			@${COMPILER} ${CFLAGS} -o ${NAME} ${OBJS} ${LIBRARY}
			@clear -x
			@printf '\033[0;92;1mCompilation finished\n\033[0m'

clear:
			@clear -x

compiling:
			@printf "\033[93;1;5mCompiling ...\n\033[0m"

cleaning:
			@printf "\033[93;1;5mCleaning ...\n\033[0m"

clean :		clear cleaning
			${RM} ${OBJS} ${BOBJS} 
			@make -C includes/libraries/libft clean
			@make -C includes/libraries/minilibx clean
			@clear -x
			@printf '\033[0;92;1mCleaning finished\n\033[0m'

fclean :	clear clean cleaning 
			${RM} ${NAME} ${NAME_BONUS}
			@clear -x
			@printf '\033[0;92;1mCleaning finished\n\033[0m'

re :		fclean all


${NAME_BONUS}:	${BOBJS}
			@clear -x
			@printf "\033[93;1;5mCompiling ...\n\033[0m"
			@make -C includes/libraries/libft
			@make -C includes/libraries/minilibx
			@${COMPILER} ${CFLAGS} -o ${NAME_BONUS} ${BOBJS} ${LIBRARY}
			@clear -x
			@printf '\033[0;92;1mCompilation finished\n\033[0m'

bonus: ${NAME_BONUS}

.PHONY : all clean fclean re clear compiling cleaning bonus
