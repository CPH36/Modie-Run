Template Chicken Jumper
    • by Victor Schiavon (Gemaplys) and Luiz Alves

About

    • This template exists to assist people with little to no experience using Game Maker in creating their first 
	game without writing a single line of code.
    • Feel free to modify, extend, and create a complete game using the system in this project.
    • Please note that Super Chicken Jumper is a licensed game; any of the sprites and music used in this project 
	are only available as a learning tool, which means you're not allowed to use these contents in commercial projects.

How to modify the game
	
	• The room rm_menu MUST be the first room of the game, you can then change the order of the other rooms as you desire
    • The obstacles are distributed outside the room space in the levels. That's how the game works; the obstacles 
	come from outside and move in the direction where the player is placed.
    • The obj_player_parent is an object that you can use to create your own player. To do so, right-click your mouse 
	in the Objects folder and create an object. Then, click on "parent" and select obj_player_parent to inherit this 
	object's behaviors.
    • You can modify the keys to make the player move. To do so, right-click on the key you want to change in 
	obj_chicken and select the "change event" option.
    • The obj_chicken and obj_player_parent also have variables that you can change in every level. You can do this 
	by accessing the variable definitions button or in the inspector by selecting the object in the room.
    • You can create new obstacles by inheriting obj_obstacle_parent in the same way you can with obj_player_parent.
    • The obj_bird inherits from obj_obstacle_parent, but its step event is slightly different. You can also make the 
	bird fly in the Y-axis by checking the "move_y" option in the variable definitions button or in the inspector.
    • The rm_level3 room is a blank room for you to create your own level. To do so, you'll have to hide the 
	sequences that contain the text. Just click on the eye icon in the "Assets" layer in this room to hide the text. 
	You can also delete this layer by selecting it and pressing "delete."
    • The weapons work differently from the original game. You have a pickup object to get the desired weapon. 
	The way we designed this system allows you to create a level where, in the beginning, you can get the knife and 
	later on, you can grab the gun. If you want to delve deeper into the system, you can code your own weapons and 
	use them in your levels.
    • If you want to make more in-depth changes to the system, all of the code is well written and commented, so you 
	can understand what every line of code does.
    • You can modify the effects in the "Water" layer on rm_level1 and the "Heatwave" on rm_level2 and rm_level3.

Includes

    • A playable character for you to change its horizontal speed, gravity, jump force, and keys to control it.
    • A parent object for the player to create a child object to make your own playable character.
    • Three different obstacles to distribute in your levels.
    • Two unique weapons to distribute in your levels.
    • Easily modifiable variables are distributed in the variable definitions of each object.