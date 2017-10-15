"Asura" by Gabriel Aureo, Julio Rama, Thiago Panza and Gabriel Mattos

Include Basic Screen Effects by Emily Short.
Include Adventure Game Crafting System by Philip Black.

A pursuit room is a kind of room.
A pursuit room has a room called the pn_exit.
A pursuit room has a room called the pe_exit.
A pursuit room has a room called the ps_exit.
A pursuit room has a room called the pw_exit.
A pursuit room has a text called backtext.
Rule for printing the locale description of a pursuit room: stop.

The printed name of a pursuit room usually is "Temple Hallway".


Some pursuit rooms are defined by a Table of Different Pursuit Rooms.


The printed name of p14 is "Small Room".


A deadend room is a kind of room.
A deadend room has a room called exit.
Rule for printing the locale description of a deadend room: stop.

Some deadend rooms are defined by a Table of Different Deadend Rooms.

A mausoleu room is a kind of room. 
The description of a mausoleu room is usually "[if all Mausoleu rooms are unvisited] After descending in that hole, you passed away in an unknown place. Little by little, you open your eyes, just to realize you can't actually see anything. You can't tell if you're blind or if it's just really dark. Thankfully, your other senses seems to be working just fine.[otherwise]Darkness looms left and right. No sign of your pursuer, but you should be cautious anyway.".
The printed name of a mausoleu room usually is "???"

A mausoleu room has a room called the n_exit.
A mausoleu room has a room called the e_exit.
A mausoleu room has a room called the s_exit.
A mausoleu room has a room called the w_exit.

A mausoleu room has some text called buzzling sound and scent. 

Some mausoleu rooms are defined by a Table of Different Mausoleu Rooms.


Table of Different Pursuit Rooms
proom	pn_exit	pe_exit	ps_exit	pw_exit	description	backtext
p1	back	d1e	p2	d1w	"After leaving the ceremonial room, you find yourself in a hallway. To the west and to the east, you see doors. To the south, there's a straight path."	"You return to the hallway you were previously. To the north is the ceremonial room from where you came from. To the west and to the east, you see doors. To the south, there's a straight path."
p2	back	d2	--	p3	"You run south for a few moments until you reach a wall. The hallway bifurcates to each of your sides, but you see a dim light to your right."	"You return from the dead end. To the north is the path to the ceremonial room. To the east is the dead end. The hallway continues to the west, from where you see a dim light."
p3	--	back	p4	d3	"You run towards the light and find out that there are a few fireflies coming from your left. There is another path straight ahead as well."	"You return from the dead end. To the east is the path to the ceremonial room. To the west is the dead end. The hallway continues to the south, from where the fireflies around you are coming from."
p4	back	--	p5	--	"You run south, feeling the wind blow through your hair. You have no option but to keep running forward."	--
p5	back	p6	--	d5	"After running a few more meters, you find a wall with a window, from where the wind was blowing. To the right of the window, there's a path with old bookshelves. To the left of the window, there is a path with a few statues of the gods."	"You leave the library. To the north is the path to the ceremonial room. To the west is the library. To the south is the window. The hallway continues to the east, with a few statues of gods by the walls."
p6	--	--	p7	back	"You run through the hallway past several statues until you reach a wall. The hallway continues south."	--
p7	back	p8	d7	--	"After running south, you see a rat come running from the path right in front of you. There's another path to the east. They're both dark and you can't see much."	"You return from the rat-filled room. To the north is the path to the ceremonial room. To the south is the rats' room. The hallway continues to the east."
p8	--	p9	--	back	"You run east through the dark hallway. You have no option but to keep running forward."	--
p9	--	p10	--	back	--	--
p10	p11	--	d10	back	--	--
p11	p12	--	back	--		
p12	d12n	d12e	back	p13	--	--
p13	--	back	p14	--	"With the last of your strenght, you face one final door to the south. There's not much else you can do now but to go through it."	
p14	--	--	--	--	"You find yourself in a dead-end. There's not much in this room other than a small trap door near the wall. In fear of what is coming for you, you decide that opening it and jumping in is all you can do to try and survive."	
back	--	--	--	--	--	--

Table of Different Deadend Rooms				
droom	exit	dir	description	printed name
d1e	p1	west	"You take the eastern door, but it leads to an empty room. There's nothing of note inside."	"Empty Room"
d1w	p1	east	"You take the western door, but it leads to an empty room. There's nothing of note inside."	"Empty Room"
d2	p2	west	"You run through the dark eastern path, but you reach a dead end."	"Dead end"
d3	p3	east	"You run straight ahead, but you reach a dead end."	"Dead end"
d5	p5	east	"You go to the path with the bookshelves, but it leads to an old library. There's nothing of note inside, and you're in too much of a hurry to take your time here."	"Library"
d7	p7	north	"You decide to run straight ahead, from where the rat came from. You find yourself in a dark, smelly room filled with rats. You have no business there."	"Dark room"
d10	p10	north	"eae"	"men"
d12e	p12	west	"eae"	"men"
d12n	p12	south	"eae"	"men"
		
Table of Different Mausoleu Rooms
mauroom	n_exit	e_exit	s_exit	w_exit	buzzling sound	scent	
MausoleuN	--	MausoleuNE	MausoleuC	MausoleuNW	"The buzzling sound seems to be higher. Its source must be close."	"You smell a faint odor of something burnt. It's really weak, though."	
MausoleuNE	--	--	MausoleuE	MausoleuN	"You hear a faint buzzling sound. You still can't pinpoint its location, though."	"You smell a faint odor of something burnt. It's really weak, though."	
MausoleuC	MausoleuN	MausoleuE	MausoleuS	MausoleuW	"The buzzling sound seems to be higher. Its source must be close."	"The smell is getting stronger. You just hope you are not the next one burning."	
MausoleuNW	--	MausoleuN	MausoleuW	--	"Wow. The buzzling sound is really high here. It seems to be coming from the floor"	"You smell a faint odor of something burnt. It's really weak, though."	
MausoleuE	MausoleuNE	--	MausoleuSE	MausoleuC	"You hear a faint buzzling sound. You still can't pinpoint its location, though."	"You smell a faint odor of something burnt. It's really weak, though."	
MausoleuW	MausoleuNW	MausoleuC	MausoleuSW	--	"The buzzling sound seems to be higher. Its source must be close."	"The smell is getting stronger. You just hope you are not the next one burning."	
MausoleuS	MausoleuC	MausoleuSE	--	MausoleuSW	"You hear a faint buzzling sound. You still can't pinpoint its location, though."	"The smell is getting stronger. You just hope you are not the next one burning."	
MausoleuSW	MausoleuW	MausoleuS	--	--	"You hear a faint buzzling sound. You still can't pinpoint its location, though."	"The burnt smell is really suffocating here. It seems to be coming from the wall."	
MausoleuSE	MausoleuE	--	--	MausoleuS	"You hear a faint buzzling sound. You still can't pinpoint its location, though."	"You smell a faint odor of something burnt. It's really weak, though."	

To map the pursuit rooms correctly:
	repeat through the Table of Different Pursuit Rooms:
		if there is a pn_exit entry:
			now the pn_exit entry is mapped north of the proom entry;
		if there is a pe_exit entry:
			now the pe_exit entry is mapped east of the proom entry;
		if there is a ps_exit entry:
			now the ps_exit entry is mapped south of the proom entry;
		if there is a pw_exit entry:
			now the pw_exit entry is mapped west of the proom entry.
			
To map the deadend rooms correctly:
	repeat through the Table of Different Deadend Rooms:
		if there is a exit entry:
			change the dir entry exit of the droom entry to the exit entry
			
To map the mausoleu rooms correctly:
	repeat through the Table of Different Mausoleu Rooms:
		if there is a n_exit entry:
			now the n_exit entry is mapped north of the mauroom entry;
		if there is a e_exit entry:
			now the e_exit entry is mapped east of the mauroom entry;
		if there is a s_exit entry:
			now the s_exit entry is mapped south of the mauroom entry;
		if there is a w_exit entry:
			now the w_exit entry is mapped west of the mauroom entry.
			
		
When play begins:
	map the pursuit rooms correctly;
	map the deadend rooms correctly;
	map the mausoleu rooms correctly.
	



Rule for printing the banner text: do nothing;

Understand "jump through[something]" as entering.
Understand "jump thru [something]" as entering. 

Pursuit is a scene. Pursuit begins when play begins. Pursuit ends when the player is in MausoleuSE.

ExitPursuit is a truth state variable. ExitPursuit is false.

When Pursuit begins:
	now ExitPursuit is false;
	Asura appears in 3 turns from now;
	now the player is in p14
	

A rat is a kind of neuter animal.  The plural of a rat is rats. The description of a rat usually is "You can't see much, but you notice there are more rats than you expected there to be! That's dangerous!"

A firefly is a kind of neuter animal. The plural of a firefly is fireflies. The description of a firefly usually is "You take a brief look at the fireflies, but you're in a hurry and don't see anything special about them.".

A pursuit window is a open door. The printed name of a pursuit window is "window". Through it is the Outside the 3rd floor. The description of the window is "From out the window you can see the blue sky. You seem to be in the 3rd floor.". A pursuit window is south of p5.

A trapdoor is a closed door. A trapdoor is down from p14. Through it is MausoleuSE. The description of the trapdoor is "A wooden trapdoor is tightly screwed on the floor. As far as you can see, it's the only way to escape the Asura."


Jumping in is an action applying to nothing.
Understand "jump in" as jumping in.
Understand "jump in trapdoor" as jumping in.

There are some rats in d7.
There are some fireflies in p3.

Before going through the trapdoor:
	if the trapdoor is closed:
		say "You try to jump in, but the trap door is still closed.  You hurt your buttocks, but your pride hurts more after such shame.";
		stop the action;
	otherwise:
		say "You jump. You have no idea where this will lead you or how high is the fall, but you have no regrets.";
		continue the action

Instead of opening the trapdoor:
	say "You open the trap door. There's no backing off now, you have no other option but to jump in.";
	now the trapdoor is open

Instead of going to the Outside the 3rd floor:
	end the story saying "You jump through the window and fall to your death."
	
Carry out jumping in when the player is in p14:
	try going down

Before taking a firefly:
	say "You try taking a firefly, but you're too scared of the Asura to properly catch any.";
	stop the action

Instead of attacking a firefly:
	say "You lash out on the fireflies, as if they were guilty of your situation. Alas, you tire your arm without acquiring anything. Good job."

Before taking a rat:
	say "You try to take a rat with you, but are too scared to do so, given the situation.";
	stop the action
	
Instead of attacking a rat:
	say "You kick a rat passing by. You feel oddly satisfied to relieve the stress, but quickly become stressed again, remembering that your time is running short."
	
Instead of eating a rat:
	say "You pick one of the filthy animals and take a bite out of it. You have all the diseases now. Was that worth it?"
	
Asura is a person.
	

Before going to a pursuit room (called proom) from a deadend room:
	now the description of proom is "[backtext]"

Before going a direction (called dir) in a pursuit room (called proom):
	if the room (dir) of (proom) is back:
		say "You try going [dir], but you remember that's where the Asura are coming from. You give up on that idea and decide to look for another option.";
		stop the action
		
Before going south in p5:
	say "There's a window to the south. Perhaps you could go through it?";
	stop the action
		
At the time when Asura appears:
	now Asura is in p1;
	say "You hear a loud sound coming from the ceremonial room. The Asura must have broken through the doors. Run, NOW!"
	
Every turn:
	if Asura has been in p1 and (the player is in a pursuit room or the player is in a deadend room for more than 1 turn):
		if the location of Asura is not the location of the player:
			let the way be the best route from the location of Asura to the location of the player;
			try Asura going the way;
		otherwise:
			end the story saying "It's too late! As you try to escape, you notice the Asura catching up behind you. Their bloodlust cannot be stopped! You try to run, but all that remains is your soulless corpse on the floor. [line break] Game Over."
	
Dark Mausoleu is a scene.

Dark Mausoleu begins when Pursuit ends. Dark Mausoleu ends spiritic when the elevation is open. Dark Mausoleu ends bruteful when a mausoleu wall in MausoleuSW is broken.
	

A mausoleu wall is a kind of thing. The printed name of mausoleu wall is "dark wall". The description usually is "There seems to be walls nearby, but you can't see them with your eyes.". A mausoleu wall can be perfect, cracked or broken (this is its condition property). A mausoleu wall is fixed in place. A mausoleu wall usually is perfect.

A mausoleu floor is a kind of thing. The printed name of a mausoleu floor is "dark floor". The description usually is "You can feel the floor under your feet, but you can't see it.". A mausoleu floor is fixed in place.

The light sprit is a person. The light sprit is inside the elevation.
The elevation is an openable container. The elevation is closed.  The elevation can be touched or not touched. The elevation is not touched.

The elevation lid is a supporter. The printed name of the elevation lid is "lid".

Instead of examining the elevation:
	say "You can't see what the elevation is, it's too dark."
	
Instead of touching the elevation:
	say "The elevation seems to to be about a human's size. You also feel a small gap all around the top of it, like a lid.";
	now the elevation lid is part of the elevation;
	now the elevation is touched
	
Instead of opening the elevation:
	if the elevation is touched:
		say "You push the lid and it falls to the side of the elevation.";
		now the elevation is open.
		
Instead of pushing the lid:
	try opening the elevation.
	
Instead of touching a mausoleu floor:
	if there is a elevation in the location of the player:
		say "You scan the floor with your foot and feel an elevation somehere amidst the dark.";
	otherwise:
		say "You scan the floor with your foot, but can't find anything."

Understand "punch [something]" as attacking.
Understand "kick [something]" as attacking.

Instead of attacking a mausoleu wall:
	if the noun is perfect:
		say "You attack the wall, but it doesn't seem to do anything. A great way to hurt your hand.";
	if  the noun is broken:
		say "The wall is already broken";
	if the noun is cracked:
		say "You attack the wall and it comes tumbling down. ";
		now the noun is broken.
		

Instead of touching a mausoleu wall (called mwall) when the location is a mausoleu room:
	if the location is MausoleuC:
		say "Actually, you can't find any walls in this part.";
	otherwise:
		if the noun is cracked:
			say "You scan the wall with your hand and a feel cracks all around its surface. It's so run-down even a punch could break it.";
		otherwise:
			say "It's cold to the touch. You reckon this is just a concrete wall."

Instead of listening to a mausoleu room:
	say "[buzzling sound]"

Instead of smelling a mausoleu room:
	say "[scent]"
	


One mausoleu wall and one mausoleu floor is in MausoleuN. 
One mausoleu wall and one mausoleu floor is in MausoleuNE.
One mausoleu wall, one mausoleu floor and a elevation is in MausoleuNW.
One mausoleu wall  and one mausoleu floor is in MausoleuE.
One mausoleu wall and one mausoleu floor is in MausoleuC.
One mausoleu wall and one mausoleu floor is in MausoleuW.
One mausoleu wall and one mausoleu floor is in MausoleuS.
One cracked mausoleu wall and one mausoleu floor is in MausoleuSW.
One mausoleu wall and one mausoleu floor is in MausoleuSE.


Rule for printing the locale description of a mausoleu room: stop.

Before going a direction (called dir) in a mausoleu room (called mroom):
	if the room (dir) of (mroom) is nothing:
		say "You try to walk [dir], but you hit a wall.";
		stop the action;
	otherwise:
		say "You walk a little to the [dir], being careful to not bump on any walls or anything on the floor.";
		continue the action
		
		
Lit Mausoleu is a scene.  Lit Mausoleu begins when Dark Mausoleu ends.

Mausoleum is a room. The tomb and walls are scenery in the mausoleum. Understand "elevation" as the tomb. Understand "wall" as the walls.
The description of the tomb is "[if ExaminingElevation is true] A tomb in the shoutwest of the room matches perfectly the elevation you [old action] when the room was dark. [line break][end if]The tomb is richly embellished with golden intricate inlay. The lid[if Dark Mausoleu ended spiritic] that once held the light spirit now sits on floor next to the tomb.[otherwise] is also very fancy. A real deal to tomb raiders.[end if]".
The description of the walls is "The walls of the mausoleum are fully engraved in a language you don't understand, but you guess those are spells[if Dark Mausoleu ended spiritic] to keep the light spirit trapped in this room. If that is, how were you able to free him? You wonder...[end if].[if Dark Mausoleu ended bruteful][line break]You notice a flame symbol next to the wall you busted. Maybe a fire spell that went wrong? [end if]".


ExaminingElevation is a truth state variable. ExaminingElevation is false.
Old action is a text variable. Old action is "[if Dark Mausoleu ended spiritic]opened[otherwise]bumped into[end if]".

Before examining the tomb:
	if player's command includes "elevation":
		now ExaminingElevation is true;
	otherwise:
		now ExaminingElevation is false


When Lit Mausoleu begins:
	if Dark Mausoleu ended spiritic:
		say "[paragraph break]White light comes bursting out of the elevation.  When you can finally see again, a giant sprit in the shape of a firefly towers over you. He says 'Thanks for freeing me, young Kalinda. I have been inside that coffin for millenia.'[line break] ";
		wait for any key;
		say "'Let me give you something in return'. After saying that, the giant image flies away, leaving a magic light source, so you can explore the now lit room.";
	if Dark Mausoleu ended bruteful:
		say "[paragraph break]After breaking the wall, a burst of light comes from outside. On the edge of the hole caused by your punch, you can see some burn marks. It seems the wall iselft was the source of the smell. [line break]Thankfully, you can see the room now.";
	now the player is in Mausoleum.
	
Final Battle is a scene.

When Final Battle begins:
	Attacking with is an action applied 

	



