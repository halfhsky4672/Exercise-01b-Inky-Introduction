/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the entrance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.
+[Take the east tunnel] -> east_tunnel
+[Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
+ {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west tunnel. There is a small hole in the ceiling allowing light from the outside to shine through. In front of you is a medium-sized gap between you and what looks to be a ledge with a large wodden door. On your side of the gap there is an old dust covered ladder leading somewhere below.
* [Jump across the gap] -> over_gap
* [Go down the ladder] -> ladder
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END 

=== east_tunnel_lit ===
The light of your torch glints off of the thousands of coins in the room. 
* [Ending #1: Prospector] -> END
-> END

=== over_gap ===
To the north there is a small puddle of water, to the south there is a small mouse hole, to the west there is a large wooden door and to the east is a gap.
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
+ [Yes] A piece of cheese was added to your inventory! ->over_gap
* [No] You don't have anytime for this cat and mouse game. -> over_gap
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

