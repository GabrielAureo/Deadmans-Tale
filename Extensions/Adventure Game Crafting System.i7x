Adventure Game Crafting System by Philip Black begins here.

"Adds a simple crafting system to your game. With this extension the player can try and 'use' any object on anything around them or 'combine' it with something else - just like in classic adventure games (such as Simon the Sorcerer). This also makes it really easy to create interactive machines that drop items when you insert other items. Note: This extension requires 'Dynamic Objects by Jesse McGrew'.".

Include Dynamic Objects by Jesse McGrew.

Section - Relations

Hyperspace Chest is a room. "This is an easy place to store objects that are part of Adventure-style combinations.".

Object Transmutable relates various things to various things.  The verb to become means the Object Transmutable relation. 

Definition: a thing is Object Transmutable if it becomes more than one thing.

Object Feeding relates a thing to another (called the Machine Output). The verb to receives items from means the Object Feeding relation. [The verb to fed into means the Object Feeding relation. The verb to insert into means the Object Feeding relation.]
 
Definition: a thing is Object Feeding if it becomes more than one thing.

Combining Objects is an action applying to two things. Understand "craft the [something] with the [something]" and "craft [something] and [something]" and "craft [something] with [something]" and "craft [something] in [something]" and "insert [something] in [something]" and "insert the [something] in [something]" and "insert [something] in the [something]" and "insert the [something] in the [something]" and "[something] combined with [something]" and "use [something] on [something]" and "use the [something] on [something]" and "use [something] on the [something]" and "use the [something] on the [something]" and "use [something] with [something]" and "combine [something] with [something]" and "combine the [something] with [something]" and "combine the [something] with the [something]" and "combine [something] with the [something]" as Combining Objects. 


Section Machines and Tools

A thing can be Craft Machine or Not CraftMachine. A thing is usually Not CraftMachine.

A thing can be Craft Tool or NotATool.

craftmessage is a truth state that varies. craftmessage is true.



Section - Preventing the new 'use' comand locking up the game - Try activating these if you have problems testing

[Does the player mean Combining Objects when the noun is a container or the second noun is a container: it is very unlikely. 

Does the player mean Combining Objects when the noun is a supporter or the second noun is a supporter: it is very unlikely.

Does the player mean Combining Objects when the noun is a person or the second noun is a person: it is very unlikely.]

	
Section Crafting

Carry out Combining Objects: 
	if the second noun is the noun:
		say "[if craftmessage is true]You can't use [the noun] on itself.[end if]" instead;
		now craftmessage is true;
	if something (called the craft result) that is become by the noun is become by the second noun:
		let the new thing be a new object cloned from the craft result;
		If the noun is Craft Machine: [<------------------------------------------------ Machine script]
			say "[if craftmessage is true]You put [the noun] in [the second noun] and out pops a [craft result].[end if]";
			now craftmessage is true;
			move the second noun to Hyperspace Chest;
			move the new thing to the Machine Output of the noun;
		otherwise if the second noun is Craft Machine:
			say "[if craftmessage is true]You put [the noun] in [the second noun] and out pops a [craft result].[end if]";
			now craftmessage is true;
			move the noun to Hyperspace Chest;
			move the new thing to the Machine Output of the second noun;
		otherwise if the noun is Craft Tool: [<------------------------------------------------ Tool script]
			say "[if craftmessage is true]You use [the noun] on [the second noun] and get a [craft result].[end if]";
			now craftmessage is true;
			move the second noun to Hyperspace Chest;
			move the new thing to the player;
		otherwise if the second noun is Craft Tool:
			say "[if craftmessage is true]You use [the noun] on [the second noun] and get a [craft result].[end if]";
			now craftmessage is true;
			move the noun to Hyperspace Chest;
			move the new thing to the player;
		otherwise: [<------------------------------------------------ General Crafting script]
			say "[if craftmessage is true]You use [the noun] on [the second noun] and get a [craft result].[end if]";
			now craftmessage is true;
			move the noun to Hyperspace Chest;
			move the second noun to Hyperspace Chest;
			move the new thing to the player;
	otherwise if the noun is locked:
		try unlocking the noun with the second noun;
		reject the player's command; 
	otherwise if the second noun is locked:
		try unlocking the second noun with the noun;
		reject the player's command; 
	otherwise if the noun is unlocked:
		try locking the noun with the second noun;
		reject the player's command; 
	otherwise if the second noun is unlocked:
		try locking the second noun with the noun;
		reject the player's command;
	otherwise:
		say "[if craftmessage is true]The [bold type][noun][roman type] and [bold type][the second noun][roman type]  just don't seem to go together.[end if]";
		now craftmessage is true;
	


Adventure Game Crafting System ends here.




---- DOCUMENTATION ----

Adventure Game Crafting System allows you to use objects on other objects to create new objects. For example, herbs that combine together to make a potion, or an item that is dropped into a machine, which then spits out a different item somewhere else. We can even use both methods to create an entire lab or a complex machine that takes raw materials and turns them into other things the player can use.

+++++++++++++ Combining +++++++++++++

Two objects are used create a third object. In this version both items used vanish off-screen and a third 'finished' item appears in its place. We can create all three objects with nothing more than this:

	Wolfsbane is a kind of thing. There is a Wolfsbane in the Witch Hut. Every Wolfsbane becomes the Werewolf Tincture. 
	Pure Alcohol is a kind of thing. There is a Pure Alcohol in the Witch Hut. Every Pure Alcohol becomes the Werewolf Tincture.
	Test me with "use Wolfsbane on Alcohol".
	
We can also have things become multiple other things:

	There is a Cheese in the Cafeteria. Every Cheese becomes the cheese sandwich.
	Sausage slice is a kind of thing. There are 5 sausage slice in the Cafeteria. Every sausage slice becomes the sausage sandwich.
	A slice of bread is a kind of thing. every slice of bread becomes the cheese sandwich, and the sausage sandwich.

Then, all the player has to say to make a cheese sandwich is something like:

	Use bread on cheese

NOTE: If a craft object is not unique you must say:

	Every sausage slice becomes the sausage sandwich.
	
As just saying 'The sausage slice becomes the sausage sandwich.' will break your script (because if you use the singular, Inform thinks you mean that ONE of the slices becomes the sandwich,). You can also break your script by saying 'Every' but forgetting to first say that the object is a 'kind of thing'.


+++++++++++++ Tool Use +++++++++++++

A tool is a specially marked object that does not disappear when it is used and remains available after use. This means we can create a knife that whittles a spear. Since the knife is unique in this example, we don't have to say that it is a 'kind of thing' or that 'Every knife becomes the spear'.

	Forest is a room.
	There is a knife in the forest. It is a Craft Tool. It becomes the spear.
	There is a large branch in the forest. Every large branch becomes the spear.
	Test me with "use knife on branch".

Tools like this will always send the result to the player and leave the tool where it is. This is different to how machines work:


+++++++++++++ Machines +++++++++++++

A machine is a special object that receives other objects and then spits different things out into another place. The place it spits it out doesn't need to be the same room. In the following example, the player feeds crystals into the hopper and can then take the magic dust from the draw.

	Wizard Shop is a room.
	There is a magic box in the Wizard Shop.  "You see a magic box with a hopper on top and a little draw full of [list of things enclosed by the draw]".
	The hopper is a part of the magic box. It is a Craft Machine. It becomes the magic dust.  [Input]
	Raw Crystal is a kind of thing. There are 5 Raw Crystal is in the Wizard Shop. Every Raw Crystal becomes the magic dust.
	The draw is a part of the magic box. It receives items from the hopper. It is a container.
	There is a large branch in the forest. Every large branch becomes the spear.
	
	Test 3 with "use Raw Crystal on hopper".
	
We can also make sure the player picks the right input by preventing them from picking the wrong one:
	
	Before Combining Objects:
		if the noun is a magic box:
			now the noun is the hopper;
		otherwise if the second noun is a magic box:
			now the second noun is the hopper;

We can also replace the default message or add our own additional effects to crafting using this script:
	
	Check Combining Objects:
		if the noun is a hopper or the second noun is a hopper:
			now craftmessage is false; 
			Say "With a hum and a series of crunches, the magic box eats up the raw crystal and drizzles a little pile of magic dust into its draw.";
	
Note: adding the phrase 'now craftmessage is false;' anywhere in a 'before combining' or 'check combining script suppresses the default craft message saying 'you use the thing on a thing and get a thing'. 
	
	
+++++++++++++ Stopping the player from combining +++++++++++++

Also, sometimes we might want to prevent combining objects so something special can happen instead. This script interrupts crafting when one of the objects is cheese:

	Before Combining Objects:
		if the noun is a cheese or the second noun is a cheese:
			Say "You are about to use the cheese, but you suddenly remember you are terribly allergic!";
			reject the player's command; 
		otherwise:
			try Combining Objects;


+++++++++++++ Final Note +++++++++++++

	
The most efficient way to use this script is to try and recycle crafting objects by taking used objects from the special room called 'Hyperspace Chest' as much as possible.
	
Thanks go to Matt W for help with part of the script for this extension.


Example: * "Simple Combinations to Craft." - a short game showing the extension features.

	*: "Simple Combinations to Craft."

	Cafeteria is a room.

	Include Adventure Game Crafting System by Philip Black.
	
	There is a Cheese in the Cafeteria. Every Cheese becomes the cheese sandwich. [*If you forget to say EVERY, the game won't compile.]

	There is a Tofu in the Cafeteria. Every Tofu becomes the tofu sandwich. 

	A slice of bread is a kind of thing. every slice of bread becomes the cheese sandwich, and the tofu sandwich.  The plural of slice of bread is slices of bread. There are five slices of bread in the cafeteria.

	sausage slice is a kind of thing. There are 5 sausage slice in the Cafeteria. every sausage slice becomes the sausage sandwich. Every slice of bread becomes the sausage sandwich. [*Sometimes it is easier for Inform to understand separate 'becomes' commands]

	[NOTE: You should name your ingredients something different to your crafted item. If you don't, the player will find it hard to craft copies of the item. Hence: sausage slice instead of just sausage.]
	


