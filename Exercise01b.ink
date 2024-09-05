/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 + Basic Choices
 + Knot structure
 + Recurring choices
 + Conditionals in descriptions
 + Conditionals in choices
 + Variable types: integer, float, boolean
 + Variable assignment
 + Printing Variables
 + Variable checking
 
 In the assignment:
 + Add four more knots (and feel free to change any of the example text, this is YOUR story)
 + Add at least one more conditional
 + Add four new knots
 + Assign at least two new variables through player choices
 + Print at least one of the variables to the player in a passage
 - Check if the value of a variable and have it do something
 
 
 Variable Checking:
 
 Equality: "Oreo" == "Oreo"
 Not equality: 1 != 2
 Greater: >
 Less: <
 Greater or equal: >=
 Less or equal: <=
 
 
 
*/

VAR health = 5
VAR pet_name = ""
VAR friend_name = ""
VAR your_name = ""
VAR torches = 0
VAR food = 0



-> memory1

== memory1 ==
What is your name?

* [Mark]
~ your_name = "Mark"
Welcome esteemed king...
-> memory2
* [Jack]
~ your_name = "Jack"
Bottom of the evening...
-> memory2
* [Skyler]
~ your_name = "Skyler"
Ok then...
-> memory2
* [Susan]
~ your_name = "Susan"
Ok then...
-> memory2
* [Jackson Arthur]
~ your_name = "Jackson Arthur"
Really!?!? Jackson Arthur!?!? What kind of goofy ah name is Jackson Arthur!?!?
-> memory2

== memory2 ==
Hello {your_name}! Before you stands the cavern of Charlie. You wish your childhood pet was with you now. The cave might be less intimidating then. What was your pet's name?

* [Charlie]
    ~ pet_name = "Charlie"
    -> cave_mouth
* [Cosmo]
    ~ pet_name = "Cosmo"
    -> cave_mouth
* [Oreo]
    ~ pet_name = "Oreo"
    -> cave_mouth
* [Gamton S Gamton]
    ~ pet_name = "Gamton S Gamton"
    -> cave_mouth




== cave_mouth ==
You are at the entrance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.

You made it to the cave. If only {pet_name} could see you now!

You have {torches} torches

+[Take the east tunnel] -> east_tunnel
+[Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
+ {torches > 0} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west tunnel. There is a small hole in the ceiling allowing light from the outside to shine through. In front of you is a medium-sized gap between you and what looks to be a ledge with a large wodden door. On your side of the gap there is an old dust covered ladder leading somewhere below.

{pet_name == "Gamton S Gamton": That's a real [BIG SHOT] move kid! Keep going like that and your sure to find that sweet sweet [hyperlink blocked]!}
* [Jump across the gap] -> over_gap
* [Go down the ladder] -> ladder
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
~ torches = torches + 1
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END 

=== east_tunnel_lit ===
The light of your torch glints off of the thousands of coins in the room. 

Pick up the treasure?
* [Yes] -> ending_1
* [No] -> keep_going
-> END

=== ending_1 ===
You fill up your sack with gold coins and become mad with power.
* [Ending #1: Prospector] -> END
-> END

=== keep_going ===
You decide to keep looking around. You find a lever and pull it, revealing a small tunnel in wich you crawl through. -> lever_room
-> END

=== lever_room ===
Inside the room there are wooden doors to the north, south, and east. To the west is a small tunnel. In the middle is a rusted children's playset.
* [Go to the playset] -> playset
* [Go north] -> north_lever_door
* [Go south] -> south_lever_door
* [Go east] -> east_lever_door
* [Go west] you've already made your choice -> lever_room
-> END

=== playset ===
The playset reminds you of your best friend. What was their name again?
* [Freddy]
~ friend_name = "Freddy"
har har har har har... very funny... lets just go north
-> lever_room
* [Rhett]
~ friend_name = "Rhett"
Lets not talk about that.
-> lever_room
* [Jeremy]
~ friend_name = "Jeremy"
I guess you really did "think fast"...
-> lever_room
* [Jerry]
N-no it isn't. -> lever_room
-> END

=== north_lever_door ===
This is the content of the knot.
-> END

=== south_lever_door ===
This is the content of the knot.
-> END

=== east_lever_door ===
This is the content of the knot.
-> END

-> END

=== over_gap ===
To the north there is a small puddle of water, to the south there is a small mouse hole, to the west there is a large wooden door and to the east is a gap.

You have {torches} torches.

You have {food} food.

*[Go North] -> puddle
*[Go South] -> mouse_hole
*[Go West] -> wooden_door
*[Go Back] -> west_tunnel
-> END

=== puddle ===
Drink the water?
* [Yes] Despite being in a spooky cave, the water tastes oddly refreshing. -> over_gap
* [No] You decide that you probably shouldn't drink the water. -> over_gap
-> END

=== mouse_hole ===
Reach in the mouse hole?
+ [Yes] -> cheese_pickup
* [No] You don't have anytime for this cat and mouse game. -> over_gap
-> END

=== cheese_pickup ===
~ food = food + 1
A piece of cheese was added to your food! -> over_gap
-> END

=== wooden_door ===
After a small amount of force the door opens with ease. {not epicsword_pickup: In Front of you is an epic looking sword on a pedestal.}
+[Pick up sword] -> epicsword_pickup
*[Go Back] -> over_gap
-> END

=== epicsword_pickup ===
The epic sword was added to your inventory!
+ [Go back] -> over_gap
-> END

=== ladder ===
You begin to slowly climb down the ladder. On your way down you feel a sense of encouragement beckoning you further down until... Snap! The ladder breaks in two leading you crashing into the cold damp floor of the caverns. Luckily you were close enough to the ground that your fall does not injure you. -> below_the_ladder
-> END

=== below_the_ladder ===
As you gather your bearings you see a long halway in front of you lit with torches on either side of it.
*[Go foward] -> hallway
*[Go back] but there was no way back... -> below_the_ladder
-> END

=== hallway ===
As you walk through the seemingly endless hallway you think to yourself and say, "You know what I could go for right now?"
* [What?] Credits. -> ending2
-> END

=== ending2 ===
* [Ending #2 Humorous Cliff Hanger] -> END
-> END

