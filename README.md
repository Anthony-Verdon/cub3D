# cub3D 

## Because Wolfenstein was incredible

This project is part of the fourth circle of projects of the 42 common core, and it's the second one in group. The goal is to implement Raycasting. For that, I was with my friend Nathan Locussol (login 42 : nlocusso, Github account : https://github.com/Skylow667). You will find the subject of the project into the repository. My grade : 125/100

## How to use it

1. Clone it `git clone git@github.com:AnthonyVerdon-42Projects/cub3D.git`.
2. Compile it `make`, but we recommand to compile with `make bonus` to play a better game.
3. Start the program by giving a map in argument. You can find some examples in `maps/`. Some got `_bonus` at the end, the only difference is another variable texture : the door.

## Dependencies

This game has been made with the MinilibX library. You can find into the repository. It use X11.

## How to play

- Movements of the player : `WASD`.
- Movements of the camera : left and right arrow keys. Bonus : you can move the camera with the mouse.
- Interactions with items or door : `E`.
- Quit the game : Echap or the red cross.

## Condition of the map

1. The file must has a `.cub` extension.
2. The map can have any shape but need to be close.
3. The map contains only `0` and `1`. Bonus : `D` symbolizes a door.
4. The player position is defined by the letter `NSEW`. The letter change the initial orientation of the player.
5. At the top of the file, you need to specify each texture for each side of walls, and color of floor and ceiling (this two takes RGB color) :

Example :
```
NO ./path_to_the_north_texture
SO ./path_to_the_south_texture
WE ./path_to_the_west_texture
EA ./path_to_the_east_texture

F 220,100,0
C 225,30,0
```

## Assets

I forgot where we take them. If you are the author or knows the author, please contact me.

## Friends work

If you got time, please take a look at the cub3d of my friends https://github.com/LouisTruch and https://github.com/TheoGuerin64 !

## Find a bug ?

If you find an undefined behaviour (crash, leaks, ...), please submit an issue or contact me
