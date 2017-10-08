"DeadMan" by Gabriel Aureo

A mausoleu room is a kind of room. 
The description of a mausoleu room is usually "[if all mausoleu rooms are unvisited] You are laying down in an unknown place. Little by little, you open your eyes, just to realize you can't actually see anything. You can't tell if you're blind or if it's just really dark. Thankfully, your other senses seems to be working just fine.[otherwise] Darkness looms left and right. You feel like you're not alone.[end if]".

A mausoleu room has a room called the n_exit.
A mausoleu room has a room called the e_exit.
A mausoleu room has a room called the s_exit.
A mausoleu room has a room called the w_exit.

A mausoleu room has some text called buzzling sound and scent. 

A mausoleu wall is a kind of thing. The printed name of mausoleu wall is "dark wall". The description usually is "There seems to be walls nearby, but you can't see them with your eyes.". A mausoleu wall can be perfect, cracked or broken (this is its condition property). A mausoleu wall usually is perfect.

A elevation is an openable container.  A elevation is closed. A lid is a supporter. A lid is part of the elevation. 
Instead of opening the elevation:
	say "[if the lid have been examined] It's too dark to see the opening."

Understand "punch [something]" as attacking.
Understand "kick [something]" as attacking.

Instead of attacking a mausoleu wall:
	if the noun is perfect:
		say "You punch the wall, but it doesn't seem to do anything. A great way to hurt your hand.";
	if the noun is cracked:
		say "You punch the wall and it comes tumbling down. ";
		now the noun is broken;
	if  the noun is broken:
		say "The wall is already broken".

Instead of touching a mausoleu wall when the location is a mausoleu room:
	if the location is MausoleuC:
		say "Actually, you can't find any walls in this part.";
	otherwise if the location is MausoleuSW:
		say "Instead of the usual cold touch of concrete, you feel a porous surface. Is this a wooden plank?";
	otherwise:
		say "It's cold to the touch. You reckon this is just a concrete wall."

Instead of listening to a mausoleu room:
	say "[buzzling sound]"

Instead of smelling a mausoleu room:
	say "[scent]"
	
Some mausoleu rooms are defined by a Table of Different Mausoleu Rooms.

Table of Different Mausoleu Rooms
mauroom	n_exit	e_exit	s_exit	w_exit	buzzling sound	scent	
MausoleuN	--	MausoleuNE	MausoleuC	MausoleuNW	"The buzzling sound seems to be higher. Its source must be close."	"You smell a faint odor of grass. It's weak though."	
MausoleuNE	--	--	MausoleuE	MausoleuN	"You hear a faint buzzling sound. You still can't pinpoint its location, though."	--
MausoleuC	MausoleuN	MausoleuE	MausoleuS	MausoleuW	"The buzzling sound seems to be higher. Its source must be close."	--	
MausoleuNW	--	MausoleuN	MausoleuW	--	"Wow. The buzzling sound is really high here. Maybe this is the source."	--	
MausoleuE	MausoleuNE	--	MausoleuSE	MausoleuC	"You hear a faint buzzling sound. You still can't pinpoint its location, though."	--	
MausoleuW	MausoleuNW	MausoleuC	MausoleuSW	--	"The buzzling sound seems to be higher. Its source must be close."	--	
MausoleuS	MausoleuC	MausoleuSE	--	MausoleuSW	"You hear a faint buzzling sound. You still can't pinpoint its location, though."	--	
MausoleuSW	MausoleuW	MausoleuS	--	--	"You hear a faint buzzling sound. You still can't pinpoint its location, though."	"The wet grass must be here. It's smell is somehow pleasing."	
MausoleuSE	MausoleuE	--	--	MausoleuS	"You hear a faint buzzling sound. You still can't pinpoint its location, though."	--	

One mausoleu wall is in MausoleuN. 
One mausoleu wall is in MausoleuNE.
One mausoleu wall and a elevation is in MausoleuNW.
One mausoleu wall is in MausoleuE.
One mausoleu wall is in MausoleuC.
One mausoleu wall is in MausoleuW.
One mausoleu wall is in MausoleuS.
One mausoleu wall is in MausoleuSW.
One mausoleu wall is in MausoleuSE. It is cracked.

Rule for printing the locale description of a mausoleu room: stop.

To map the rooms correctly:
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
	map the rooms correctly.

The player is in MausoleuSE.

Before going a direction (called dir) in a mausoleu room (called mroom):
	if the room (dir) of (mroom) is nothing:
		say "You try to walk [dir], but you hit a wall.";
		stop the action

	



