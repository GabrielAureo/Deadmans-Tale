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
p9	--	p10	--	back	"You keep running east. Your legs start to feel tired, but you have no option but to keep running forward."	--
p10	p11	--	d10	back	"You keep running until you reach a fork. On your left you see a door slightly open with some light coming out of it. On the other side you see the continuation of the same corridor, but increasingly dark."	"You reach the previous room. As you look to your left you see the Asura shadows getting bigger in the end of the corridor you came before. You better hurry."
p11	p12	--	back	--	"After crossing the door you are temporarily blinded by a beam of light, coming from a window in the upper corner of the room. As soon as your vision returns to normal, you notice a few tables and chairs around the place, nothing much. You keep moving towards the only door in the place."	
p12	d12n	d12e	back	p13	"You see yourself in the meeting of two corridors. You notice a light breeze coming from the west. On the opposite side of the breeze you hear some sounds in the distance, but you cannot identify them. In front of you there is a door a few steps away. You cannot tell whether it's locked or not."	"Back to the center of the corridors, you start hearing noises from the previous room. They are getting closer."
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
d10	p10	north	"You start running in this dark corridor until you hit your head in a wall. You check with your hands for any door but you find nothing. You have no business here."	"Dead end"
d12e	p12	west	"You decide to go check that noise you are hearing. After a few steps, you notice a clock ticking and some rats coming out of a hole in the wall. This is probably where the sounds were coming from. You have nothing to do besides going back."	"Dark Room"
d12n	p12	south	"You run towards the door and try to open it. It's locked."	"Locked door"
		
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


A light room is a kind of room.

A light room has a room called the ln_exit.
A light room has a room called the le_exit.
A light room has a room called the ls_exit.
A light room has a room called the lw_exit.
The printed name of light room usually is "Mausoleum"

Some light rooms are defined by a Table of Different light Rooms

Table of Different light Rooms				
lroom	ln_exit	lw_exit	ls_exit	le_exit
LNW	--	--	LW	LN
LN	--	LNW	LC	LNE
LNE	--	LN	LE	--
LW	LNW	--	LSW	LC
LC	LN	LW	LS	LE
LE	LNE	LC	LSE	--
LSW	LW	--	--	LS
LS	LC	LSW	--	LSE
LSE	LE	LS	--	--

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
			
To map the lit rooms correctly:
	repeat through the Table of Different light Rooms:
		if there is a ln_exit entry:
			now the ln_exit entry is mapped north of the lroom entry;
		if there is a le_exit entry:
			now the le_exit entry is mapped east of the lroom entry;
		if there is a ls_exit entry:
			now the ls_exit entry is mapped south of the lroom entry;
		if there is a lw_exit entry:
			now the lw_exit entry is mapped west of the lroom entry.
			
		
When play begins:
	map the pursuit rooms correctly;
	map the deadend rooms correctly;
	map the mausoleu rooms correctly;
	map the lit rooms correctly.
	


	



Rule for printing the banner text: do nothing;

Understand "kalinda" as yourself. The description of yourself is "You are Kalinda, a young monk in blue robes."

Understand "jump through[something]" as entering.
Understand "jump thru [something]" as entering. 

Talking to it about is an action applying to one thing and one topic. Understand "talk to [someone] about [text]" as talking to it about. 
Talking is an action applying to one thing. Understand "talk to [someone]" as talking.

Understand "the incident" or "incident" or "past incident" or "the past incident" or "past"  or " the past" as "[past]"

	



Introduction is a scene. Introduction begins when play begins. Introduction ends when the player is in p1

The Temple of Indra is a room. Understand "temple" as the temple of indra. The description of the temple is "You find yourself in a religious ceremony. Three of your fellow monks are gathered before a priest. There are four pedestals north of you, with the priest standing beside them.".
The Priest of Indra, Mahit, Basdev and Kastha are people in the temple. The player is in the temple. Understand "priest" as the priest of indra.
The description of the priest is "The priest is a calm, pacient man. He's wearing orange robes and is looking at the four of you."
The description of Mahit is "Mahit is a short monk in green robes. He seems bored.".
The description of Basdev is "Basdev is a tall monk in red robes. His eyes scream conviction and seriousness."
The description of Kastha is "Kastha is a young monk in yellow robes. She's the only female among you. She seems a little scared."

After talking the priest:
	say "'Hello, young Kalinda. I am the priest of Indra, and these three are the others that you might've heard about: Mahit, Basdev and Kastha.'";
	wait for any key;
	say "'I must congratulate each one of you for achieving what you just did. Not everyone can become one of the top four monks of the kingdom. As per tradition, each one of you shall receive the blessings of a god.'";
	wait for any key;
	say "'I have taken the precautions based on that past incident. Each of you will have to learn of the abilities of each of your fellow monks, and then we shall procede by granting each of your boons one at a time.'";
	
After talking mahit:
	if we have not talked the priest :
		say "'Hello there, pal! I think we should talk to the priest guy over there first. We can chat later!'";
	otherwise:
		say "'Hey man, how's it going?'";
		wait for any key;
		say "'You must be that Kalinda dude the priest mentioned, right?'";
		wait for any key;
		say "'Man, all this chitchat before the boon is pretty boring, dontcha think?'";
		wait for any key;
		say "'Let's just get straight to the point, 'k?'";
		wait for any key;
		say "'I know you're a follower of Varuna, I've studied those. No need to explain anything to me, 'k?'";
		wait for any key;
		say "'You don't look like you've done your homework, so Imma tell you about my good ol' Bhaumastra.'";
		wait for any key;
		say "'Y'see, to a layman, it's just a spear, but it can easily pierce and control the earth.'";
		wait for any key;
		say "'All I did was combine a long metal shaft with a very hard rock and a lotus flower.'";
		wait for any key;
		say "'The magic of Mother Bhumi comes from the lotus flowers, dontcha forget that!'".
		
After talking basdev:
	if we have not talked the priest :
		say "'Greetings. I believe the priest of Indra has something important to tell us.'";
	otherwise:
		say "'Greetings, friend. So you must be Kalinda, right?'";
		wait for any key;
		say "'Well, I'll have you explain your abilities first, as per the priest of Indra's instructions.'";
		wait for any key;
		say "You explain to Basdev about the intricacies of your personal skills.";
		wait for any key;
		say "'Ah, so that's how you fight.'";
		wait for any key;
		say "'Very well.'";
		wait for any key;
		say "'As was agreed, I shall explain my skills.'";
		wait for any key;
		say "'As a follower of Lord Agni, I fight with the Agneyastra, a bow that shoots flaming arrows.'";
		wait for any key;
		say "'The Agneyastra is made by combining a bow and a fire arrow.'";
		wait for any key;
		say "'The bow is made by combining a wooden stick and a string, while the fire arrow is made by combining a wooden stick with a holy charcoal.'";
		wait for any key;
		say "'I hope we can win many battles together, brother.'"
		
After talking kastha:
	if we have not talked the priest :
		say "Hi! I'm really nervous... maybe we should hear what the priest has to say first?";
	otherwise:
		say "'Hello! So you're Kalinda! Pleased to meet you, I'm Kastha!'";
		wait for any key;
		say "'Well, the priest said some stuff about a past incident... I'm kinda scared, but I'll try and stay positive!'";
		wait for any key;
		say "'So, since he asked us to tell each other of our powers, I'll begin by introducing mine!'";
		wait for any key;
		say "'Inspired by Lord Vayu, I wield the great Vayvayastra mace! It's a magical mace that can create whirlwinds just by swinging it!'";
		wait for any key;
		say "'You see, it was forged by combining a heavy metal shaft, a round bronze head and snake scales. A true Naga hunter's weapon!'";
		wait for any key;
		say "'So, what about yours?'";
		wait for any key;
		say "You explain to her about the weapon you've trained with and how you fight.";
		wait for any key;
		say "'Wow, that sounds exciting! I do hope to see you slay several Asura.'";
		wait for any key;
		say "'But not more than me, haha!'"
		
		

After talking to the priest about "[past]":
	say "You ask the priest of Indra about what exactly happened in the past.";
	wait for any key;
	say "'Ah... so noone has told you about it yet, huh? I should've anticipated it. That is no children's story. Very well...'";
	wait for any key;
	say "'For the past few generations, during the Celestial Boon Ceremony, we have gathered the top four monks of the kingdom to receive the gifts of the gods.'";
	wait for any key;
	say "'We believe that only those of strong body and spirit are capable of inheriting such power. As such, we have noticed a pattern.'";
	wait for any key;
	say "'In every group of four, there is always one monk that succumbs to their desires and transforms into a power hungry Asura. We believe that Ravana, the King of Demons, might be involved in some way.'";
	wait for any key;
	say "'The birth of an Asura and slaughter of demigods would surely be of use to him. Because of that, we plan to make a gamble: if three of you become demigods, the fourth shall be detained before the worst happens.'";
	wait for any key;
	say "'However, if an Asura is born before the three heroes emerge, we shall need to fight handicapped.'";
	
Every turn when Introduction is happening:
	if we have talked the priest:
		if we have talked mahit and we have talked kastha and we have talked basdev:
			say "The priest draws the attention of all four of you, announcing that the ceremony is about to begin.";
			wait for any key;
			say "'Warriors! I believe there is nothing else we can do but procede with the ritual.'";
			wait for any key;
			say "'I shall ask each of you to stand on the pedestal of the god you've worshipped during your training.'";
			wait for any key;
			say "'Mahit, you're first! Come to the pedestal of Bhumi.'";
			wait for any key;
			say "As Mahit stands on the pedestal, the priest starts chanting a hymn in an ancient language.";
			wait for any key;
			say "All of a sudden... Mahit turns into an Asura!!";
			wait for any key;
			say "'Ah yes, such beautiful power!'";
			wait for any key;
			say "The priest is... pleased?";
			wait for any key;
			say "What the hell is going on!?";
			wait for any key;
			say "'Basdev, you're next! Come quickly to the pedestal of Agni!'";
			wait for any key;
			say "Basdev stands on the pedestal and the same scene occurs once more.";
			wait for any key;
			say "You start to feel uneasy.";
			wait for any key;
			say "'Kastha, it's your turn now. You are the first woman to reach this rank! Don't disappoint Lord Vayu!'";
			wait for any key;
			say "As you feared, the moment Kastha stepped onto the pedestal, the priest chanted that hymn and she turned into a third Asura.";
			wait for any key;
			say "The three Asura look at you as the angry priest yells: 'Get him!'";
			wait for any key;
			say "You run south, seeking a way to escape.";
			wait for any key;
			now the player is in p1


Pursuit is a scene. Pursuit begins when Introduction ends. Pursuit ends when the player is in MausoleuSE.


ExitPursuit is a truth state variable. ExitPursuit is false.

When Pursuit begins:
	now ExitPursuit is false;
	Asura appears in 3 turns from now;
	

A rat is a kind of neuter animal.  The plural of a rat is rats. The description of a rat usually is "You can't see much, but you notice there are more rats than you expected there to be! That's dangerous!"

A firefly is a kind of neuter animal. The plural of a firefly is fireflies. The description of a firefly usually is "You take a brief look at the fireflies, but you're in a hurry and don't see anything special about them.".

A pursuit window is a open door. The printed name of a pursuit window is "window". Through it is the Outside the 3rd floor. The description of the window is "From out the window you can see the blue sky. You seem to be in the 3rd floor.". A pursuit window is south of p5.

A trapdoor is a closed door. A trapdoor is down from p14. Through it is MausoleuSE. The description of the trapdoor is "A wooden trapdoor is tightly screwed on the floor. As far as you can see, it's the only way to escape the Asura."


Jumping in is an action applying to nothing.
Understand "jump in" as jumping in.
Understand "jump in trapdoor" as jumping in.

There are some rats in d7.
There are some rats in d12e.
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
	say "You pick one of the filthy animals and take a bite out of it. You have all the diseases now.";
	wait for any key;
	say "Was that worth it?"
	
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
			try silently Asura going the way;
		otherwise:
			end the story saying "It's too late! As you try to escape, you notice the Asura catching up behind you. Their bloodlust cannot be stopped! You try to run, but all that remains is your soulless corpse on the floor. [line break] Game Over."
	
Dark Mausoleu is a scene.

Dark Mausoleu begins when the player is in a mausoleu room. Dark Mausoleu ends spiritic when the elevation is open. Dark Mausoleu ends bruteful when a mausoleu wall in MausoleuSW is broken.
	

A mausoleu wall is a kind of thing. The printed name of mausoleu wall is "dark wall". The description usually is "There seems to be walls nearby, but you can't see them with your eyes.". A mausoleu wall can be perfect, cracked or broken (this is its condition property). A mausoleu wall is fixed in place. A mausoleu wall usually is perfect.

A mausoleu floor is a kind of thing. The printed name of a mausoleu floor is "dark floor". The description usually is "You can feel the floor under your feet, but you can't see it.". A mausoleu floor is fixed in place.

The elevation is an openable container. The elevation is closed.  The elevation can be touched or not touched. The elevation is not touched.

The elevation lid is a supporter. The printed name of the elevation lid is "lid". The description of the lid is "It's too dark to see lid."

Instead of examining the elevation:
	say "You can't see what the elevation is, it's too dark."
	
Instead of touching the elevation:
	say "The elevation seems to to be about a human's size. You also feel a small gap all around the top of it, like a lid.";
	now the elevation lid is part of the elevation;
	now the elevation is touched
	
Before opening the elevation:
	if the elevation is touched:
		say "You push the lid and it falls to the side of the elevation.";
		continue the action;
	otherwise:
		say "You can't find the opening. Try touching around..";
		stop the action
		
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
		
[Mausoleum is a room. The tomb and walls are scenery in the mausoleum. Understand "elevation" as the tomb. Understand "wall" as the walls.
The description of the tomb is "[if ExaminingElevation is true] A tomb in the shoutwest of the room matches perfectly the elevation you [old action] when the room was dark. [line break][end if]The tomb is richly embellished with golden intricate inlay. The lid[if Dark Mausoleu ended spiritic] that once held the light spirit now sits on floor next to the tomb.[otherwise] is also very fancy. A real deal to tomb raiders.[end if]".
The description of the walls is "The walls of the mausoleum are fully engraved in a language you don't understand, but you guess that are spells[if Dark Mausoleu ended spiritic] to keep the light spirit trapped in this room. If that is, how were you able to free him? You wonder...[end if].[line break] You notice a flame symbol next [if Dark Mausoleu ended bruteful]to the wall you busted.[otherwise] to the wall at the south west of the room.[end if] Maybe a fire spell that went wrong?".


ExaminingElevation is a truth state variable. ExaminingElevation is false.
Old action is a text variable. Old action is "[if Dark Mausoleu ended spiritic]opened[otherwise]bumped into[end if]".
]



When Lit Mausoleu begins:
	if Dark Mausoleu ended spiritic:
		say "[paragraph break]White light comes bursting out of the elevation.  When you can finally see again, a giant sprit in the shape of a firefly towers over you. He says 'Thanks for freeing me, young Kalinda. I have been inside that coffin for millenia.'[line break] ";
		wait for any key;
		say "'It is time for me to go now. Someone else needs you. But first, let me give you something in return. Farewell.'";
		wait for any key;
		say "After saying that, the giant image flies away, leaving a magic light source, so you can explore the now lit room.";
		now the player is in LNW;
		now the tomb is open;
	if Dark Mausoleu ended bruteful:
		say "[paragraph break]After breaking the wall, a burst of light comes from outside. On the edge of the hole caused by your punch, you can see some burn marks. It seems the wall iselft was the source of the smell. [line break]Thankfully, you can see the room now.";
		now the player is in LSW;
		now the tomb is closed.

Element is a kind of value.  The elements are fire, water, wind, earth.
A weapon is a kind of thing. A weapon has a element called weapon element.

Bhaumastra is a kind of weapon. The weapon element of Bhaumastra is earth. Understand "Bhau" as Bhaumastra. The description of a Bhau is "The weapon wielded by Mahit. It's a magical spear that can easily pierce and control the earth."
Agneyastra is a kind of weapon. The weapon element of Agneyastra is fire. Understand "Agne" as Agneyastra. The description of a Agne is "The weapon wielded by Basdev. It's a bow that shoots flaming arrows.".
Vayvayastra is a kind of weapon. The weapon element of Vayvayastra is wind. Understand "Vayvay" or "Vay" as Vayvayastra. The description of a vay is "The weapon wielded by Kastha. It's a magical mace that can create whirlwinds just by swinging it."
A Metal Shaft is a kind of thing.  Every metal shaft becomes a Vay and a Bhau. The description of a metal shaft is "A short pole made of iron. Appears to have about 50 centimeters. Maybe it could be attached to something?"
A Bronze Head is a kind of thing. Every bronze head becomes a Vay. The description of a bronze head is "A heavy sphere made of bronze. Looks like it could be used to make a mace or flail."
A snake scale is a kind of thing.  Understand "scale" as a snake scale. The description of a scale is "Scales taken from a dead snake. They appear to have a symbolic meaning."

		
The description of LNW is "There is a big tomb next to the wall. You wonder what could be inside."
The tomb is a openable container. The tomb is scenery in LNW. 
The description of the tomb is "[if Dark Mausoleu ended spiritic]The size of the tomb matches perfectly with the size of the elevation you freed the light spirit from.[line break][end if][if the tomb is closed]The tomb is closed, but it doesn't seem to be locked.[end if]".
There are 3 metal shafts in the tomb.




	
	
Final Battle is a scene. Final Battle begins when Lit Mausoleu ends.

Table of Fancy Status
left	central	right 
""	""	"Asura Mahit: [current hit points of Mahit]"
"Kalinda: [current hit points of player]"	"[location of the player]"	"Asura Basdev: [current hit points of Basdev]"
""	""	"Asura Kastha: [current hit points of Kastha]"

Rule for constructing the status line when Final Battle is happening:
	fill status bar with Table of Fancy Status;
	rule succeeds.
	


A person has a element called person element. A person has a number called maximum hit points. A person has a number called current hit points. A person can be dead or alive. A person usually is alive.

When play begins: 
	repeat with victim running through people: 
		now the current hit points of the victim is the maximum hit points of the victim.

The maximum hit points of the player is 8. The person element of the player is water.

Understand the commands "attack" and "hit" as something new.
Attacking it with is an action applying to one visible thing and one carried thing. Understand "attack [someone] with [something]" as attacking it with. Understand "hit [someone] with [something]" as attacking it with.

The attacking it with action has a number called the damage inflicted.




Asura Mahit is a person. The person element of Asura Mahit is earth. The maximum hit points of Mahit is 2. 
Asura Basdev is a person. The person element of Asura Basdev is fire. The maximum hit points of Basdev is 2.
Asura Kastha is a person. The person element of Asura Kastha is wind. The maximum hit points of Kastha is 2.

Effectiveness relates a element to another.
The verb to be effective against implies the effectiveness relation.

Water is effective against Fire.

Earth is effective against Wind.

Setting action variables for attacking something with something: 
	if the noun is a person and the second noun is a weapon:
		let Welement be the weapon element of the second noun;
		let Aelement be the person element of the noun;
		if Welement is Aelement:
			now the damage inflicted is 0;
		otherwise:
			if Welement is effective against Aelement:
				now the damage inflicted is 2;
			otherwise:
				now the damage inflicted is 1;
				
Check an actor attacking something with something (this is the can't attack with something that isn't a weapon rule): 
	if the second noun is not a weapon: 
		if the actor is the player, say "[The second noun] does not qualify as a weapon."; 
		stop the action.

Check an actor attacking something with something (this is the can't attack a non-person rule): 
	if the noun is not a person: 
		if the actor is the player, say "[The noun] has no life to lose."; 
		stop the action.

Carry out an actor attacking something with something (this is the standard attacking it with a weapon rule): 
	if damage inflicted < current hit points of the noun:
		decrease the current hit points of the noun by the damage inflicted; 
	otherwise:
		now the current hit points of the noun is 0;
		now the noun is dead.
		
Report attacking a dead person with something (this is the death-report priority rule): 
	say "You attack with [the second noun], killing [the noun]!" instead.
	
Report attacking someone with something (this is the normal attacking report rule): 
	say "You attack [the noun] with [the second noun], causing [damage inflicted] point[s] of damage!" instead.
	
Report someone attacking the player with something when the player is dead (this is the player's-death priority rule): 
	say "[The actor] attacks you with [the second noun], finishing you off!"; 
	end the story; 
	stop the action
	
Report someone attacking the player with something (this is the standard report someone attacking the player with rule): 
	say "[The actor] attacks you with [the second noun], causing [damage inflicted] point[s] of damage!" instead.
	
Report someone attacking something with something (this is the standard report attacking it with rule): 
	say "[The actor] attacks [the noun] with [the second noun], causing [damage inflicted] point[s] of damage!" instead.
	
Final Room is a room. Asura Mahit, Asura Basdev and Asura Kastha are in the final room.



Water Sword is a weapon. The weapon element of Water Sword is water.
Fire Sword is a weapon. The weapon element of Fire Sword is fire.
Wind Sword is a weapon. The weapon element of Wind Sword is wind.
Earth Sword is a weapon. The weapon element of the Earth Sword is earth.

The player carries a water sword, a fire sword, a earth sword and a wind sword.
Asura Mahit carries a Bhaumastra.
Asura Basdev carries a Agneyastra.
Asura Kastha carries a Vayvayastra


Every turn: 
	let CA be the attacking it with action;
	if the action name part of current action is CA:
		if Asura Mahit is not dead, try Asura Mahit attacking the player with a random weapon which is carried by Asura Mahit;
		if Asura Basdev is not dead, try Asura Basdev attacking the player with a random weapon which is carried by Asura Basdev;
		if Asura Kastha is not dead, try Asura Kastha attacking the player with a random weapon which is carried by Asura Kastha.
		


	



