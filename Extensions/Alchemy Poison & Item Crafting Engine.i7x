Alchemy Poison & Item Crafting Engine by Philip Black begins here.

"Adds a custom 'Use' comand to your game with built-in Crafting, Alchemy, Object Combing and Dynamic Poison systems. With this extension you can set up recipes and tools that the player can try and use to make anything, use objects on things to trigger scripts, as well as adding interactive machines that drop items when you insert other items. Taint items with alcohol and various levels of Poison and easily customise their effects. You can also easily set up scripts that mimic the mechanics in classic adventure games (such as Simon the Sorcerer). Note: This extension requires 'Dynamic Objects by Jesse McGrew'.


What this extension does:

* Adds a custom 'Use' command to your game with built-in Crafting, Alchemy, Object Combing and Dynamic Poison system features.
* Combine two object to make a third.
* Use an object on anything else to set off a script or reaction.
* Use a tool on an object to craft it. (Use knife on stick to get a spear, say)
* Make a potion in a returnable flask (you get the flask back when you drink it).
* Use an object on a machine to dispense new object into a hopper.
* Fully customisable dynamic poison and alcohol system.
* Poisonous objects that taint recipes they are used in.
* Set poison amount so that some items kill you, and other items don't
* Combine toxic objects to create deadly poisons
* Fully dynamic, realistic, poison contamination system - bottles, machines, and tools can be tainted with traces of poison by a careless player. 
* Cleaners to take care of poisoned tools, flasks, and machines.
* Purification tablets that remove poisons and alcohol to make potions safe to drink.
* Degrading poisons that wear off of tools, bottles, and machines as they are used.".



Include Dynamic Objects by Jesse McGrew.

Section - Relations

Hyperspace Chest is a room. "This is an easy place to store objects that are part of Adventure-style combinations.".

Object Transmutable relates various things to various things.  The verb to become means the Object Transmutable relation. 

Definition: a thing is Object Transmutable if it becomes more than one thing.

Cosubstantiality relates things to each other in groups. The verb to be the same as means the cosubstantiality relation.

[Bottle Remembered relates a thing to another (called the Remembered Bottle). The verb to defualt bottle of means the Bottle Remembered relation. [The verb to fed into means the Object Feeding relation. The verb to insert into means the Object Feeding relation.]]
 
[Definition: a thing is Bottle Remembered if it becomes more than one thing.]



Section - making Inform recognise the new 'use' comand

Combining Objects is an action applying to two things. Understand "craft the [something] with the [something]" and "craft [something] and [something]" and "craft [something] with [something]" and "[something] [something]" and "craft [something] in [something]" and "insert [something] in [something]" and "insert the [something] in [something]" and "insert [something] in the [something]" and "insert the [something] in the [something]" and "[something] combined with [something]" and "use [something] on [something]" and "use the [something] on [something]" and "use [something] on the [something]" and "use the [something] on the [something]" and "use [something] with [something]" and "combine [something] with [something]" and "combine the [something] with [something]" and "combine the [something] with the [something]" and "combine [something] with the [something]" as Combining Objects. 


Section Machines and Tools


Craft Machine is a kind of thing.

Every Craft Machine has a thing called Machine Output.

Craft Tool is a kind of thing. 

craftmessage is a truth state that varies. craftmessage is true.




Section - Alchemy & Poison

A potion is a kind of thing.  

A thing can be Alchemy Vessel or NotAlchemyVessel. A thing is usually NotAlchemyVessel.

A thing can be Needs a Vessel or NoVessel. A thing is usually NoVessel.

A Thing can be identified or NOT identified. A thing is usually NOT identified.

A thing can be toxic tested or toxic NOT tested. A thing is usually toxic NOT tested.

Every thing has a number called Poison Level. The Poison Level of a thing is usually 0.

Every thing has a number called Alcohol Percent. The Alcohol Percent of a thing is usually 0.
 

Poison Visible is a truth state that varies. Poison Visible is false.


DEADLY Poisonous Rating is a number that varies. The DEADLY Poisonous Rating is 100.
VERY Poisonous Rating is a number that varies. The VERY Poisonous Rating is 75.
Poisonous Rating is a number that varies. The Poisonous Rating is 50.
Fairly Toxic Rating is a number that varies. The Fairly Toxic Rating is 25.
Tainted Rating is a number that varies. The Tainted Rating is 10.


Slightly Alcoholic Rating is a number that varies. The Slightly Alcoholic Rating is 10.
Alcoholic Rating is a number that varies. The Alcoholic Rating is 25.
Very Alcoholic Rating is a number that varies. The Very Alcoholic Rating is 50.




Definition: An thing is Good Clean if its Poison Level is less than Tainted Rating.


Definition: An thing is IdealVessel if it is Good Clean and it is Alchemy Vessel.

Definition: A thing is ToxicVessel if it is an Alchemy Vessel and its Poison Level is greater than Tainted Rating.



Definition: An thing is Poison Tainted if its Poison Level is at least Tainted Rating and its Poison Level is less than Fairly Toxic Rating.

Definition: A thing is Poisonous if its Poison Level is at least Fairly Toxic Rating and its Poison Level is less than Poisonous Rating.

Definition: A thing is VERY poisonous if its Poison Level is at least Poisonous Rating and its Poison Level is less than VERY Poisonous Rating.

Definition: An thing is DEADLY poisonous if its Poison Level is at least VERY Poisonous Rating.


Definition: An thing is slightly alcoholic if its Alcohol Percent is at least Slightly Alcoholic Rating and its Alcohol Percent is less than Alcoholic Rating.

Definition: An thing is alcoholic if its Alcohol Percent is at least Alcoholic Rating and its Alcohol Percent is less than Very Alcoholic Rating.

Definition: An thing is Very Alcoholic if its Alcohol Percent is at least Very Alcoholic Rating.






Toxic Repeater is a truth state that varies. Toxic Repeater is true.
	
After printing the name of a thing (called the toxin): 
	If the toxin is toxic tested or Poison Visible is true:
		If Toxic Repeater is true:
			say " ([if the Poison Level of the toxin is greater than the DEADLY Poisonous Rating]DEADLY POISON[otherwise if the Poison Level of the toxin is greater than the VERY Poisonous Rating]VERY POISONOUS[otherwise if the Poison Level of the toxin is greater than the Poisonous Rating]POISON[otherwise if the Poison Level of the toxin is greater than the Fairly Toxic Rating]Fairly Toxic[otherwise if the Poison Level of the toxin is greater than the Tainted Rating]Poison Tainted[otherwise]Not Toxic[end if] - [Alcohol Percent of the toxin]% Alcohol)";
		
After printing the plural name of a thing (called the toxin): 
	If the toxin is toxic tested or Poison Visible is true:
		If Toxic Repeater is true:
			say " ([if the Poison Level of the toxin is greater than the DEADLY Poisonous Rating]DEADLY POISON[otherwise if the Poison Level of the toxin is greater than the VERY Poisonous Rating]VERY POISONOUS[otherwise if the Poison Level of the toxin is greater than the Poisonous Rating]POISON[otherwise if the Poison Level of the toxin is greater than the Fairly Toxic Rating]Fairly Toxic[otherwise if the Poison Level of the toxin is greater than the Tainted Rating]Poison Tainted[otherwise]Not Toxic[end if] - [Alcohol Percent of the toxin]% Alcohol)";




Section - You'll want that back

Potion Flask is a kind of thing. It is Alchemy Vessel. The Description is "A clear flask of fine glass made for brewing potions and tinctures.". There is a Potion Flask in Hyperspace Chest. 
The Poison Level of a Potion Flask is 0. The Alcohol Percent of a Potion Flask is 0.

Dirty Potion Flask is a kind of thing. It is Alchemy Vessel. The Description is "A clear flask of fine glass made for brewing potions and tinctures. It is contaminated with toxic-looking residue.". There is a Dirty Potion Flask in Hyperspace Chest. 
The Poison Level of a Dirty Potion Flask is 50. The Alcohol Percent of a Dirty Potion Flask is 25.

Every Dirty Potion Flask becomes the Potion Flask.

Understand "bottle" as the Potion Flask.
Understand "bottle" as the Dirty Potion Flask.



	
Section - Good Cleaning Things for reuse
	
	
Scrubby Cleaner is a kind of thing. Every Scrubby Cleaner becomes the Potion Flask.

Infinite Cleaner is a kind of Craft Tool. Every Infinite Cleaner becomes the Potion Flask.


When play begins:
	Now Every Potion Flask is the same as every Potion Flask;
	Now Every Dirty Potion Flask is the same as every Dirty Potion Flask;
	Now Every Dirty Potion Flask becomes every Potion Flask;
	Now Every Infinite Cleaner is the same as every Infinite Cleaner;
	Now Every Scrubby Cleaner is the same as every Infinite Cleaner;
	Now Every Infinite Cleaner becomes every Potion Flask;
	Now Every Scrubby Cleaner becomes every Potion Flask;



Understand "Good Clean [something]" and "Good Clean dirty [something]" and "wash [something]" and "wash dirty [something]" and "scrub [something]" and "scrub dirty [something]" as rubbing.
		
		

Before rubbing a Scrubby Cleaner:
	Say "[line break]Good Cleaning a household Good Cleaner would be a bit redundant! Try Good Cleaning a Dirty Potion Flask with it instead.";
	[try rubbing a Dirty Potion Flask;]
	
Instead of rubbing a Infinite Cleaner:
	Say "[line break]Good Cleaning a household Good Cleaner would be a bit redundant! Try Good Cleaning a Dirty Potion Flask with it instead.";
	
	
	
Section - Scrubbing Tools
	
Instead of rubbing a Craft Tool:
	if the player does not carry Scrubby Cleaner and the player does not carry Infinite Cleaner:
		Say "[line break]You don't have anything to Clean it with!";
		reject the player's command;
	otherwise if the noun is Poison Tainted or the noun is Poisonous or the noun is VERY poisonous or the noun is DEADLY poisonous:
		if the player carries Infinite Cleaner:
			Say "[line break]You give [the Noun] a good ol scrub and it comes up good as new!";
			now the Poison Level of the noun is 0;
			now the Alcohol Percent of the noun is 0;
			now the noun is toxic NOT tested;
		if the player carries Scrubby Cleaner:
			Say "[line break]You give [the Noun] a good ol scrub and it comes up good as new!";
			now the Poison Level of the noun is 0;
			now the Alcohol Percent of the noun is 0;
			now the noun is toxic NOT tested;
			now the noun is a random Scrubby Cleaner carried by the player;
			move the noun to Hyperspace Chest;
		otherwise:
			Now Toxic Repeater is false;
			Say "[line break][The Noun] [if the noun is DEADLY poisonous]is pretty filthy, but you don't have any Cleaner![otherwise if the noun is VERY poisonous]is pretty filthy, but you don't have any Cleaner![otherwise if the noun is Poisonous]is pretty filthy, but you don't have any Cleaner![otherwise if the noun is Poison Tainted]is a bit dirty, but you don't have any Cleaner![otherwise if the noun is alcoholic]has a strong wiff of alcohol to it, but you don't have any Cleaner![otherwise if the noun is slightly alcoholic]has a slight smell of alcohol to it, but you don't have any Cleaner![otherwise]looks perfectly Clean, and you don't have any Cleaner anyway![end if]!";	
			Now Toxic Repeater is true;
	otherwise:
		if the player carries Infinite Cleaner:
			Say "[line break][The Noun] looks Good Clean enough to you!";
		otherwise if the player carries Scrubby Cleaner:
			Say "[line break][The Noun] looks Good Clean enough to you!";
		otherwise:
			Say "[line break][The Noun] looks Good Clean enough to you, not that you have anything to Good Clean it with anyway!";
		reject the player's command;


		
Section - Scrubbing Machines
	
Instead of rubbing a Craft Machine:
	if the player does not carry Scrubby Cleaner and the player does not carry Infinite Cleaner:
		Say "[line break]You don't have anything to Clean it with!";
		reject the player's command;
	otherwise if the noun is Poison Tainted or the noun is Poisonous or the noun is VERY poisonous or the noun is DEADLY poisonous:
		if the player carries Infinite Cleaner:
			Say "[line break]You give [the Noun] a good ol scrub and it comes up good as new!";
			now the Poison Level of the noun is 0;
			now the Alcohol Percent of the noun is 0;
			now the noun is toxic NOT tested;
		if the player carries Scrubby Cleaner:
			Say "[line break]You give [the Noun] a good ol scrub and it comes up good as new!";
			now the Poison Level of the noun is 0;
			now the Alcohol Percent of the noun is 0;
			now the noun is toxic NOT tested;
			now the noun is a random Scrubby Cleaner carried by the player;
			move the noun to Hyperspace Chest;
		otherwise:
			Now Toxic Repeater is false;
			Say "[line break][The Noun] [if the noun is DEADLY poisonous]is pretty filthy, but you don't have any Cleaner![otherwise if the noun is VERY poisonous]is pretty filthy, but you don't have any Cleaner![otherwise if the noun is Poisonous]is pretty filthy, but you don't have any Cleaner![otherwise if the noun is Poison Tainted]is a bit dirty, but you don't have any Cleaner![otherwise if the noun is alcoholic]has a strong wiff of alcohol to it, but you don't have any Cleaner![otherwise if the noun is slightly alcoholic]has a slight smell of alcohol to it, but you don't have any Cleaner![otherwise]looks perfectly Clean, and you don't have any Cleaner anyway![end if]!";	
			Now Toxic Repeater is true;
	otherwise:
		if the player carries Infinite Cleaner:
			Say "[line break][The Noun] looks Good Clean enough to you!";
		otherwise if the player carries Scrubby Cleaner:
			Say "[line break][The Noun] looks Good Clean enough to you!";
		otherwise:
			Say "[line break][The Noun] looks Good Clean enough to you, not that you have anything to Good Clean it with anyway!";
		reject the player's command;



Section - Scrubbing Flasks


To Return Clean: [<---------------------------------------Gives the player a Good Clean Potion Flask]
	if there is a Potion Flask in Hyperspace Chest:
		now the noun is a random Potion Flask in Hyperspace Chest;
		now the noun is toxic NOT tested;
		move the noun to the player;
		Say "[line break]You clean out the Flask and polish it to a shine, it should now be safe to use.";
	otherwise:	
		let the new thing be a new object cloned from a random Potion Flask;
		move the new thing to the player;
		now the new thing is toxic NOT tested;
		Say "[line break]You clean out the Flask and polish it to a shine, it should now be safe to use.";
		
		


Instead of rubbing an Alchemy Vessel:
	if the player does not carry Scrubby Cleaner and the player does not carry Infinite Cleaner:
		Say "[line break]You don't have anything to clean it with!";
		reject the player's command;
	otherwise if the player carries an Alchemy Vessel:
		if the player carries a DEADLY poisonous Alchemy Vessel:
			now the noun is a random DEADLY poisonous Alchemy Vessel carried by the player;
			move the noun to Hyperspace Chest;
			Return Clean;
			if the player carries a Infinite Cleaner:
				do nothing;
			otherwise:
				now the noun is a random Scrubby Cleaner carried by the player;
				move the noun to Hyperspace Chest;
		otherwise if the player carries a VERY poisonous Alchemy Vessel:	
			now the noun is a random VERY poisonous Alchemy Vessel carried by the player;
			move the noun to Hyperspace Chest;
			Return Clean;
			if the player carries a Infinite Cleaner:
				do nothing;
			otherwise:
				now the noun is a random Scrubby Cleaner carried by the player;
				move the noun to Hyperspace Chest;
		otherwise if the player carries an Poisonous Alchemy Vessel:
			now the noun is a random Poisonous Alchemy Vessel;
			move the noun to Hyperspace Chest;
			Return Clean;
			if the player carries a Infinite Cleaner:
				do nothing;
			otherwise:
				now the noun is a random Scrubby Cleaner carried by the player;
				move the noun to Hyperspace Chest;
		otherwise if the player carries a Poison Tainted Alchemy Vessel:
			now the noun is a random Poison Tainted Alchemy Vessel carried by the player;
			move the noun to Hyperspace Chest;
			Return Clean;
			if the player carries a Infinite Cleaner:
				do nothing;
			otherwise:
				now the noun is a random Scrubby Cleaner carried by the player;
				move the noun to Hyperspace Chest;		
		otherwise if the player carries a Very Alcoholic Alchemy Vessel:
			now the noun is a random Very Alcoholic Alchemy Vessel carried by the player;
			move the noun to Hyperspace Chest;
			Return Clean;
			if the player carries a Infinite Cleaner:
				do nothing;
			otherwise:
				now the noun is a random Scrubby Cleaner carried by the player;
				move the noun to Hyperspace Chest;		
		otherwise if the player carries a Alcoholic Alchemy Vessel:
			now the noun is a random Alcoholic Alchemy Vessel carried by the player;
			move the noun to Hyperspace Chest;
			Return Clean;
			if the player carries a Infinite Cleaner:
				do nothing;
			otherwise:
				now the noun is a random Scrubby Cleaner carried by the player;
				move the noun to Hyperspace Chest;		
		otherwise if the player carries a slightly alcoholic Alchemy Vessel:
			now the noun is a random slightly alcoholic Alchemy Vessel carried by the player;
			move the noun to Hyperspace Chest;
			Return Clean;
			if the player carries a Infinite Cleaner:
				do nothing;
			otherwise:
				now the noun is a random Scrubby Cleaner carried by the player;
				move the noun to Hyperspace Chest;
		otherwise:
			Say "[line break]All your Potion Flasks look clean enough already.";
			reject the player's command;
	Otherwise:
		Say "[line break]You don't have any Potion Flasks to clean!";
		reject the player's command;





Section - Testing For Poison

Poison Tester is a kind of thing. The Description is "You can use this to test an item for poison.". [Poison Tester is toxic tested.]

Infinite Poison Tester is a kind of Craft Tool. The Description is "You can use this to test an item for poison. It never runs out.". [Infinite Poison Tester is toxic tested.]

Testing Poison is an action applying to one things. Understand "check [something]" and "check [something] for poison" and "poison test [something]" and "check if [something] is poison" and "check if [something] is poisoned" as Testing Poison.
		


Carry out Testing Poison:
	if the noun is toxic tested:
		if the noun is an Infinite Poison Tester or the noun is an Poison Tester:
			say "[line break]You don't need to check [the noun] for poison!";
			reject the player's command;
		otherwise:
			say "[line break]Checking [the noun] twice won't help.";
			reject the player's command;
	Otherwise:
		If the player carries an Infinite Poison Tester:
			Now the noun is toxic tested;
			Now Toxic Repeater is false;
			say "[line break]You check [the noun] for poison and find out it is [if the Poison Level of the noun is greater than the DEADLY Poisonous Rating]DEADLY Poisonous![otherwise if the Poison Level of the noun is greater than the VERY Poisonous Rating]VERY POISONOUS[otherwise if the Poison Level of the noun is greater than the Poisonous Rating]POISON[otherwise if the Poison Level of the noun is greater than the Fairly Toxic Rating]Fairly Toxic[otherwise if the Poison Level of the noun is greater than the Tainted Rating]tainted with enough Poison to make you sick[otherwise] that it is clean and safe[end if][run paragraph on] and also that it is [Alcohol Percent of the noun]% Alcohol";
			Now Toxic Repeater is true;
		Otherwise if the player carries a Poison Tester:
			Now the noun is toxic tested;
			Now Toxic Repeater is false;
			say "[line break]You check [the noun] for poison and find out it is [if the Poison Level of the noun is greater than the DEADLY Poisonous Rating]DEADLY Poisonous![otherwise if the Poison Level of the noun is greater than the VERY Poisonous Rating]VERY POISONOUS[otherwise if the Poison Level of the noun is greater than the Poisonous Rating]POISON[otherwise if the Poison Level of the noun is greater than the Fairly Toxic Rating]Fairly Toxic[otherwise if the Poison Level of the noun is greater than the Tainted Rating]tainted with enough Poison to make you sick[otherwise] that it is clean and safe[end if][run paragraph on] and also that it is [Alcohol Percent of the noun]% Alcohol";
			Now Toxic Repeater is true;
			now the noun is a random Poison Tester carried by the player;
			move the noun to Hyperspace Chest;
		Otherwise:
			say "[line break]You don't have any way of checking [the noun] for poison.";



Section - Purifying poison from potions


Weak Purify Tablet is a kind of thing. Understand "Purification" as the Weak Purify Tablet.

Regular Purify Tablet is a kind of thing. Understand "Purification" as the Regular Purify Tablet.

Ultra Purify Tablet is a kind of thing. Understand "Purification" as the Ultra Purify Tablet.



To Purify Poison:
	if the second noun is a Weak Purify Tablet:
		now the Poison Level of the noun is the Poison Level of the noun divided by 2;
		If the Poison Level of the noun is less than 0:
			now the Poison Level of the noun is 0;
		now the Alcohol Percent of the noun is the Alcohol Percent of the noun divided by 2;
		If the Alcohol Percent of the noun is less than 0:
			now the Alcohol Percent of the noun is 0;
		say "[if craftmessage is true]You drop the [the second noun] in the [noun] and watch as it fizzes, cleaning SOME of the impurities from the potion.[end if]";
		now craftmessage is true;
		move the second noun to Hyperspace Chest;
	otherwise if the noun is a Weak Purify Tablet:
		now the Poison Level of the second noun is the Poison Level of the second noun divided by 2;
		If the Poison Level of the second noun is less than 0:
			now the Poison Level of the second noun is 0;
		now the Alcohol Percent of the second noun is the Alcohol Percent of the noun divided by 2;
		If the Alcohol Percent of the second noun is less than 0:
			now the Alcohol Percent of the second noun is 0;
		say "[if craftmessage is true]You drop the [the noun] in the [second noun] and watch as it fizzes, cleaning SOME of the impurities from the potion.[end if]";
		now craftmessage is true;
		move the noun to Hyperspace Chest;
	otherwise if the second noun is a Regular Purify Tablet:
		now the Poison Level of the noun is the Poison Level of the noun divided by 3;
		If the Poison Level of the noun is less than 0:
			now the Poison Level of the noun is 0;
		now the Alcohol Percent of the noun is 0;
		say "[if craftmessage is true]You drop the [the second noun] in the [noun] and watch as it fizzes, cleaning MOST of the impurities from the potion.[end if]";
		now craftmessage is true;
		move the second noun to Hyperspace Chest;
	otherwise if the noun is a Regular Purify Tablet:
		now the Poison Level of the second noun is the Poison Level of the second noun divided by 2;
		If the Poison Level of the second noun is less than 0:
			now the Poison Level of the second noun is 0;
		now the Alcohol Percent of the second noun is 0;
		say "[if craftmessage is true]You drop the [the noun] in the [second noun] and watch as it fizzes, cleaning MOST of the impurities from the potion.[end if]";
		now craftmessage is true;
		move the noun to Hyperspace Chest;
	otherwise if the second noun is a Ultra Purify Tablet:
		Now the noun is toxic tested;
		now the Poison Level of the noun is 0;
		now the Alcohol Percent of the noun is 0;
		say "[if craftmessage is true]You drop the [the second noun] in the [noun] and watch as it fizzes, cleaning the potion of all impurities.[end if]";
		now craftmessage is true;
		move the second noun to Hyperspace Chest;
	otherwise if the noun is a Ultra Purify Tablet:
		Now the second noun is toxic tested;
		now the Poison Level of the second noun is 0;
		now the Alcohol Percent of the second noun is 0;
		say "[if craftmessage is true]You drop the [the noun] in the [second noun] and watch as it fizzes, cleaning the potion of all impurities.[end if]";
		now craftmessage is true;
		move the noun to Hyperspace Chest;




Section - Drinking a Potion


Instead of drinking a potion:
	move the noun to Hyperspace Chest;
	Say "[if craftmessage is true]You quaff [the noun], but nothing seems to happen....[end if]";
	now craftmessage is true;
	if there is a Potion Flask in Hyperspace Chest:
		now the second noun is a random Potion Flask in Hyperspace Chest;
		move the second noun to the player;
		now the Poison Level of the second noun is the Poison Level of the noun divided by 2;
		now the Alcohol Percent of the second noun is the Alcohol Percent of the noun divided by 5;
		now the second noun is toxic NOT tested;
	otherwise:
		let the new thing be a new object cloned from a random Potion Flask;
		move the new thing to the player;
		now the Poison Level of the new thing is the Poison Level of the noun divided by 2;
		now the Alcohol Percent of the new thing is the Alcohol Percent of the noun divided by 5;
		now the new thing is toxic NOT tested;
	Say "[line break]You gain an empty Potion Flask.";
	now the Poison Level of the noun is 0;
	now the Alcohol Percent of the noun is 0;







Section -------------------------------------------------------- Crafting --------------------------------------------------------


Carry out Combining Objects: 
	if the second noun is the noun:
		say "[if craftmessage is true]You can't use [the noun] on itself.[end if]" instead;
		now craftmessage is true;
	if the noun is a Poison Tester carried by the player:
		Now the second noun is toxic tested;
		Now Toxic Repeater is false;
		say "[line break]You check [the second noun] for poison and find out it is [if the Poison Level of the second noun is greater than the DEADLY Poisonous Rating]DEADLY Poisonous![otherwise if the Poison Level of the second noun is greater than the VERY Poisonous Rating]VERY POISONOUS[otherwise if the Poison Level of the second noun is greater than the Poisonous Rating]POISON[otherwise if the Poison Level of the second noun is greater than the Fairly Toxic Rating]Fairly Toxic[otherwise if the Poison Level of the second noun is greater than the Tainted Rating]tainted with enough Poison to make you sick[otherwise] that it is clean and safe[end if][run paragraph on] and also that it is [Alcohol Percent of the second noun]% Alcohol";
		Now Toxic Repeater is true;
		move the noun to Hyperspace Chest;
	otherwise if the noun is a Infinite Poison Tester carried by the player:
		Now the second noun is toxic tested;
		Now Toxic Repeater is false;
		say "[line break]You check [the second noun] for poison and find out it is [if the Poison Level of the second noun is greater than the DEADLY Poisonous Rating]DEADLY Poisonous![otherwise if the Poison Level of the second noun is greater than the VERY Poisonous Rating]VERY POISONOUS[otherwise if the Poison Level of the second noun is greater than the Poisonous Rating]POISON[otherwise if the Poison Level of the second noun is greater than the Fairly Toxic Rating]Fairly Toxic[otherwise if the Poison Level of the second noun is greater than the Tainted Rating]tainted with enough Poison to make you sick[otherwise] that it is clean and safe[end if][run paragraph on] and also that it is [Alcohol Percent of the second noun]% Alcohol";
		Now Toxic Repeater is true;
	otherwise if the second noun is a Poison Tester carried by the player:
		Now the noun is toxic tested;
		Now Toxic Repeater is false;
		say "[line break]You check [the noun] for poison and find out it is [if the Poison Level of the noun is greater than the DEADLY Poisonous Rating]DEADLY Poisonous![otherwise if the Poison Level of the noun is greater than the VERY Poisonous Rating]VERY POISONOUS[otherwise if the Poison Level of the noun is greater than the Poisonous Rating]POISON[otherwise if the Poison Level of the noun is greater than the Fairly Toxic Rating]Fairly Toxic[otherwise if the Poison Level of the noun is greater than the Tainted Rating]tainted with enough Poison to make you sick[otherwise] that it is clean and safe[end if][run paragraph on] and also that it is [Alcohol Percent of the noun]% Alcohol";
		Now Toxic Repeater is true;
		move the second noun to Hyperspace Chest;
	otherwise if the second noun is a Infinite Poison Tester carried by the player:
		Now the noun is toxic tested;
		Now Toxic Repeater is false;
		say "[line break]You check [the noun] for poison and find out it is [if the Poison Level of the noun is greater than the DEADLY Poisonous Rating]DEADLY Poisonous![otherwise if the Poison Level of the noun is greater than the VERY Poisonous Rating]VERY POISONOUS[otherwise if the Poison Level of the noun is greater than the Poisonous Rating]POISON[otherwise if the Poison Level of the noun is greater than the Fairly Toxic Rating]Fairly Toxic[otherwise if the Poison Level of the noun is greater than the Tainted Rating]tainted with enough Poison to make you sick[otherwise] that it is clean and safe[end if][run paragraph on] and also that it is [Alcohol Percent of the noun]% Alcohol";
		Now Toxic Repeater is true;
	otherwise if the noun is a Ultra Purify Tablet or the second noun is a Ultra Purify Tablet or the noun is a Regular Purify Tablet or the second noun is a Regular Purify Tablet or the noun is a Weak Purify Tablet or the second noun is a Weak Purify Tablet:
		Purify Poison;
	otherwise if something (called the craft result) that is become by the noun is become by the second noun:
		If the noun is Craft Machine or the noun is Craft Tool: [----------------------------------------------------------------------------------------MACHINE or TOOL NOUN]
			If the craft result is Needs a Vessel:
				If the player carries a Good Clean Alchemy Vessel:
					if something (called the X real result) that is the same as the craft result is in the Hyperspace Chest:
						move the second noun to Hyperspace Chest;
						now craftmessage is true;
						If the noun is Craft Tool:
							now player carries the X real result;
							say "[if craftmessage is true]You use [the noun] on the [the second noun] and out pours a [craft result] into your bottle.[end if]";
							now craftmessage is true;
						otherwise:
							move the X real result to the Machine Output of the noun;
							say "[if craftmessage is true]You use [the noun] on [the second noun] and out pops a bottled [craft result] into the [Machine Output of the noun].[end if]";
							now craftmessage is true;
						Now the Poison Level of the X real result is the Poison Level of the noun + the Poison Level of the second noun; [<--------------------------Tainting The new result.]
						Now the Alcohol Percent of the X real result is the Alcohol Percent of the noun + the Alcohol Percent of the second noun;
						Now the Poison Level of the noun is the Poison Level of the X real result divided by 3;[<--------------------------Tainting Machines and Tools.]
						Now the Alcohol Percent of the noun is the Alcohol Percent of the X real result divided by 3;
						Now the noun is toxic NOT tested; [<--------------------------------------------------------------------Reset]
						Now the second noun is toxic NOT tested;
						Now the X real result is toxic NOT tested;
						now the noun is a random Good Clean Alchemy Vessel carried by the player;
						move the noun to Hyperspace Chest;
						if the Alcohol Percent of the X real result is greater than 100:
							now the Alcohol Percent of the X real result is 100;
					otherwise:
						move the second noun to Hyperspace Chest;
						let the new thing be a new object cloned from the craft result, preserving relations;
						If the noun is Craft Tool:
							now player carries the new thing;
							say "[if craftmessage is true]You use [the noun] on the [the second noun] and out pours a [craft result] into your bottle.[end if]";
							now craftmessage is true;
						otherwise:
							move the new thing to the Machine Output of the noun;
							say "[if craftmessage is true]You use [the noun] on [the second noun] and out pops a bottled [craft result] into the [Machine Output of the noun].[end if]";
							now craftmessage is true;
						Now the Poison Level of the new thing is the Poison Level of the noun + the Poison Level of the second noun; [<--------------------------Tainting The new result.]
						Now the Alcohol Percent of the new thing is the Alcohol Percent of the noun + the Alcohol Percent of the second noun;
						Now the Poison Level of the noun is the Poison Level of the new thing divided by 3;[<--------------------------Tainting Machines and Tools.]
						Now the Alcohol Percent of the noun is the Alcohol Percent of the new thing divided by 3;
						Now the noun is toxic NOT tested; [<--------------------------------------------------------------------Reset]
						Now the second noun is toxic NOT tested;
						Now the new thing is toxic NOT tested;
						now the noun is a random Good Clean Alchemy Vessel carried by the player;
						move the noun to Hyperspace Chest;
						if the Alcohol Percent of the new thing is greater than 100:
							now the Alcohol Percent of the new thing is 100;
				otherwise if the player carries a Poison Tainted Alchemy Vessel or the player carries a Poisonous Alchemy Vessel or the player carries a VERY poisonous Alchemy Vessel or the player carries a DEADLY poisonous Alchemy Vessel:
					Say "[line break]You need a flask to hold the [craft result], but all you have is dirty ones. Are you sure you want to use one?[line break]Yes\No[line break]";
					if the player consents: 
						if something (called the X real result) that is the same as the craft result is in the Hyperspace Chest:
							move the second noun to Hyperspace Chest;
							If the noun is Craft Tool:
								now player carries the X real result;
								say "[if craftmessage is true]You use [the noun] on the [the second noun] and out pours a [craft result] into your bottle.[end if]";
								now craftmessage is true;
							otherwise:
								move the X real result to the Machine Output of the noun;
								say "[if craftmessage is true]You use [the noun] on [the second noun] and out pops a bottled [craft result] into the [Machine Output of the noun].[end if]";
								now craftmessage is true;
							Now the Poison Level of the X real result is the Poison Level of the noun + the Poison Level of the second noun; [<--------------------------Tainting The new result.]
							Now the Alcohol Percent of the X real result is the Alcohol Percent of the noun + the Alcohol Percent of the second noun;
							Now the Poison Level of the noun is the Poison Level of the X real result divided by 3;[<--------------------------Tainting Machines and Tools.]
							Now the Alcohol Percent of the noun is the Alcohol Percent of the X real result divided by 3;
							Now the noun is toxic NOT tested; [<--------------------------------------------------------------------Reset]
							Now the second noun is toxic NOT tested;
							Now the X real result is toxic NOT tested;
							if the player carries a Poison Tainted Alchemy Vessel:
								now the noun is a random Poison Tainted Alchemy Vessel carried by the player;
							otherwise if the player carries a Poisonous Alchemy Vessel:
								now the noun is a random Poisonous Alchemy Vessel carried by the player;
							otherwise if the player carries a VERY poisonous Alchemy Vessel:
								now the noun is a random VERY poisonous Alchemy Vessel carried by the player;
							otherwise:
								now the noun is a random Alchemy Vessel carried by the player;
							Now the Poison Level of the X real result is the Poison Level of the noun + the Poison Level of the X real result;  [<-------- Contaminate from bottle]
							Now the Alcohol Percent of the X real result is the Alcohol Percent of the noun + the Alcohol Percent of the X real result;
							move the noun to Hyperspace Chest;
							if the Alcohol Percent of the X real result is greater than 100:
								now the Alcohol Percent of the X real result is 100;
						otherwise:
							move the second noun to Hyperspace Chest;
							let the new thing be a new object cloned from the craft result, preserving relations;
							If the noun is Craft Tool:
								now player carries the new thing;
								say "[if craftmessage is true]You use [the noun] on the [the second noun] and out pours a [craft result] into your bottle.[end if]";
								now craftmessage is true;
							otherwise:
								move the new thing to the Machine Output of the noun;
								say "[if craftmessage is true]You use [the noun] on [the second noun] and out pops a bottled [craft result] into the [Machine Output of the noun].[end if]";
								now craftmessage is true;
							Now the Poison Level of the new thing is the Poison Level of the noun + the Poison Level of the second noun; [<--------------------------Tainting The new result.]
							Now the Alcohol Percent of the new thing is the Alcohol Percent of the noun + the Alcohol Percent of the second noun;
							Now the Poison Level of the noun is the Poison Level of the new thing divided by 3;[<--------------------------Tainting Machines and Tools.]
							Now the Alcohol Percent of the noun is the Alcohol Percent of the new thing divided by 3;
							Now the noun is toxic NOT tested; [<--------------------------------------------------------------------Reset]
							Now the second noun is toxic NOT tested;
							Now the new thing is toxic NOT tested;
							if the player carries a Poison Tainted Alchemy Vessel:
								now the noun is a random Poison Tainted Alchemy Vessel carried by the player;
							otherwise if the player carries a Poisonous Alchemy Vessel:
								now the noun is a random Poisonous Alchemy Vessel carried by the player;
							otherwise if the player carries a VERY poisonous Alchemy Vessel:
								now the noun is a random VERY poisonous Alchemy Vessel carried by the player;
							otherwise:
								now the noun is a random Alchemy Vessel carried by the player;
							Now the Poison Level of the new thing is the Poison Level of the noun + the Poison Level of the new thing;  [<-------- Contaminate from bottle]
							Now the Alcohol Percent of the new thing is the Alcohol Percent of the noun + the Alcohol Percent of the new thing;
							move the noun to Hyperspace Chest;
							if the Alcohol Percent of the new thing is greater than 100:
								now the Alcohol Percent of the new thing is 100;
					otherwise:
						Say "[line break]You wisely decide not to use the dirty flask; you'll need to Good Clean it first or find a Good Clean bottle to hold the [craft result] when it pours out of the machine.";
						now craftmessage is true;
				otherwise:
					Say "[line break]You need a bottle to hold the [craft result] when it pours out of the machine.";
					now craftmessage is true;
			otherwise:	[------------------------------------------------------< NO BOTTLE NEEDED SCRIPT]
				if something (called the X real result) that is the same as the craft result is in the Hyperspace Chest:
					move the second noun to Hyperspace Chest;
					If the noun is Craft Tool:
						now player carries the X real result;
						say "[if craftmessage is true]You use [the noun] on [the second noun] and get a [craft result].[end if]";
						now craftmessage is true;
					otherwise:
						move the X real result to the Machine Output of the noun;
						say "[if craftmessage is true]You use [the noun] on [the second noun] and out pops a [craft result] into the [Machine Output of the noun].[end if]";
						now craftmessage is true;
					Now the Poison Level of the X real result is the Poison Level of the noun + the Poison Level of the second noun; [<--------------------------Tainting The new result.]
					Now the Alcohol Percent of the X real result is the Alcohol Percent of the noun + the Alcohol Percent of the second noun;
					Now the Poison Level of the noun is the Poison Level of the X real result divided by 3;[<--------------------------Tainting Machines and Tools.]
					Now the Alcohol Percent of the noun is the Alcohol Percent of the X real result divided by 3;
					Now the noun is toxic NOT tested; [<--------------------------------------------------------------------Reset]
					Now the second noun is toxic NOT tested;
					Now the X real result is toxic NOT tested;
					if the Alcohol Percent of the X real result is greater than 100:
						now the Alcohol Percent of the X real result is 100;
				otherwise:
					move the second noun to Hyperspace Chest;
					let the new thing be a new object cloned from the craft result, preserving relations;
					If the noun is Craft Tool:
						now player carries the new thing;
						say "[if craftmessage is true]You use [the noun] on [the second noun] and get a [craft result].[end if]";
						now craftmessage is true;
					otherwise:
						move the new thing to the Machine Output of the noun;
						say "[if craftmessage is true]You use [the noun] on [the second noun] and out pops a [craft result] into the [Machine Output of the noun].[end if]";
						now craftmessage is true;
					Now the Poison Level of the new thing is the Poison Level of the noun + the Poison Level of the second noun; [<--------------------------Tainting The new result.]
					Now the Alcohol Percent of the new thing is the Alcohol Percent of the noun + the Alcohol Percent of the second noun;
					Now the Poison Level of the noun is the Poison Level of the new thing divided by 3;[<--------------------------Tainting Machines and Tools.]
					Now the Alcohol Percent of the noun is the Alcohol Percent of the new thing divided by 3;
					Now the noun is toxic NOT tested; [<--------------------------------------------------------------------Reset]
					Now the second noun is toxic NOT tested;
					Now the new thing is toxic NOT tested;
					if the Alcohol Percent of the new thing is greater than 100:
						now the Alcohol Percent of the new thing is 100;
		otherwise if the second noun is Craft Machine or the second noun is Craft Tool:  [----------------------------------------------------------------------------------------MACHINE or TOOL ---- SECOND NOUN]
			If the craft result is Needs a Vessel:
				If the player carries a Good Clean Alchemy Vessel:
					if something (called the X real result) that is the same as the craft result is in the Hyperspace Chest:
						move the noun to Hyperspace Chest;
						If the second noun is Craft Tool:
							now player carries the X real result;
							say "[if craftmessage is true]You use [the noun] on [the second noun] and get a [craft result].[end if]";
							now craftmessage is true;
						otherwise:
							move the X real result to the Machine Output of the second noun;
							say "[if craftmessage is true]You use [the noun] on [the second noun] and out pops a bottled [craft result] into the [Machine Output of the second noun].[end if]";
							now craftmessage is true;
						Now the Poison Level of the X real result is the Poison Level of the noun + the Poison Level of the second noun; [<--------------------------Tainting The new result.]
						Now the Alcohol Percent of the X real result is the Alcohol Percent of the noun + the Alcohol Percent of the second noun;
						Now the Poison Level of the second noun is the Poison Level of the X real result divided by 3;[<--------------------------Tainting Machines and Tools.]
						Now the Alcohol Percent of the second noun is the Alcohol Percent of the X real result divided by 3;
						Now the noun is toxic NOT tested; [<--------------------------------------------------------------------Reset]
						Now the second noun is toxic NOT tested;
						Now the X real result is toxic NOT tested;
						now the noun is a random Good Clean Alchemy Vessel carried by the player;
						move the noun to Hyperspace Chest;
						if the Alcohol Percent of the X real result is greater than 100:
							now the Alcohol Percent of the X real result is 100;
					otherwise:
						move the noun to Hyperspace Chest;
						let the new thing be a new object cloned from the craft result, preserving relations;
						If the second noun is Craft Tool:
							now player carries the new thing;
							say "[if craftmessage is true]You use [the noun] on [the second noun] and get a [craft result].[end if]";
							now craftmessage is true;
						otherwise:
							move the new thing to the Machine Output of the second noun;
							say "[if craftmessage is true]You use [the noun] on [the second noun] and out pops a bottled [craft result] into the [Machine Output of the second noun].[end if]";
							now craftmessage is true;
						Now the Poison Level of the new thing is the Poison Level of the noun + the Poison Level of the second noun; [<--------------------------Tainting The new result.]
						Now the Alcohol Percent of the new thing is the Alcohol Percent of the noun + the Alcohol Percent of the second noun;
						Now the Poison Level of the second noun is the Poison Level of the new thing divided by 3;[<--------------------------Tainting Machines and Tools.]
						Now the Alcohol Percent of the second noun is the Alcohol Percent of the new thing divided by 3;
						Now the noun is toxic NOT tested; [<--------------------------------------------------------------------Reset]
						Now the second noun is toxic NOT tested;
						Now the new thing is toxic NOT tested;
						now the noun is a random Good Clean Alchemy Vessel carried by the player;
						move the noun to Hyperspace Chest;
						if the Alcohol Percent of the new thing is greater than 100:
							now the Alcohol Percent of the new thing is 100;
				otherwise if the player carries a Poison Tainted Alchemy Vessel or the player carries a Poisonous Alchemy Vessel or the player carries a VERY poisonous Alchemy Vessel or the player carries a DEADLY poisonous Alchemy Vessel:
					Say "[line break]You need a flask to hold the [craft result], but all you have is dirty ones. Are you sure you want to use one?[line break]Yes\No[line break]";
					if the player consents: 
						if something (called the X real result) that is the same as the craft result is in the Hyperspace Chest:
							move the noun to Hyperspace Chest;
							If the second noun is Craft Tool:
								now player carries the X real result;
								say "[if craftmessage is true]You use [the noun] on [the second noun] and get a [X real result].[end if]";
								now craftmessage is true;
							otherwise:
								move the X real result to the Machine Output of the second noun;
								say "[if craftmessage is true]You use [the noun] on [the second noun] and out pops a bottled [craft result] into the [Machine Output of the second noun].[end if]";
								now craftmessage is true;
							Now the Poison Level of the X real result is the Poison Level of the noun + the Poison Level of the second noun; [<--------------------------Tainting The new result.]
							Now the Alcohol Percent of the X real result is the Alcohol Percent of the noun + the Alcohol Percent of the second noun;
							Now the Poison Level of the second noun is the Poison Level of the X real result divided by 3;[<--------------------------Tainting Machines and Tools.]
							Now the Alcohol Percent of the second noun is the Alcohol Percent of the X real result divided by 3;
							Now the noun is toxic NOT tested; [<--------------------------------------------------------------------Reset]
							Now the second noun is toxic NOT tested;
							Now the X real result is toxic NOT tested;
							if the player carries a Poison Tainted Alchemy Vessel:
								now the noun is a random Poison Tainted Alchemy Vessel carried by the player;
							otherwise if the player carries a Poisonous Alchemy Vessel:
								now the noun is a random Poisonous Alchemy Vessel carried by the player;
							otherwise if the player carries a VERY poisonous Alchemy Vessel:
								now the noun is a random VERY poisonous Alchemy Vessel carried by the player;
							otherwise:
								now the noun is a random Alchemy Vessel carried by the player;
							Now the Poison Level of the X real result is the Poison Level of the noun + the Poison Level of the X real result;  [<-------- Contaminate from bottle]
							Now the Alcohol Percent of the X real result is the Alcohol Percent of the noun + the Alcohol Percent of the X real result;
							move the noun to Hyperspace Chest;
							if the Alcohol Percent of the X real result is greater than 100:
								now the Alcohol Percent of the X real result is 100;
						otherwise:
							move the noun to Hyperspace Chest;
							say "[if craftmessage is true]You use [the noun] on [the second noun] and get a [craft result].[end if]";
							now craftmessage is true;
							let the new thing be a new object cloned from the craft result, preserving relations;
							If the second noun is Craft Tool:
								now player carries the new thing;
								say "[if craftmessage is true]You use [the noun] on [the second noun] and get a [X real result].[end if]";
								now craftmessage is true;
							otherwise:
								move the new thing to the Machine Output of the second noun;
								say "[if craftmessage is true]You use [the noun] on [the second noun] and out pops a bottled [craft result] into the [Machine Output of the second noun].[end if]";
								now craftmessage is true;
							Now the Poison Level of the new thing is the Poison Level of the noun + the Poison Level of the second noun; [<--------------------------Tainting The new result.]
							Now the Alcohol Percent of the new thing is the Alcohol Percent of the noun + the Alcohol Percent of the second noun;
							Now the Poison Level of the second noun is the Poison Level of the new thing divided by 3;[<--------------------------Tainting Machines and Tools.]
							Now the Alcohol Percent of the second noun is the Alcohol Percent of the new thing divided by 3;
							Now the noun is toxic NOT tested; [<--------------------------------------------------------------------Reset]
							Now the second noun is toxic NOT tested;
							Now the new thing is toxic NOT tested;
							if the player carries a Poison Tainted Alchemy Vessel:
								now the noun is a random Poison Tainted Alchemy Vessel carried by the player;
							otherwise if the player carries a Poisonous Alchemy Vessel:
								now the noun is a random Poisonous Alchemy Vessel carried by the player;
							otherwise if the player carries a VERY poisonous Alchemy Vessel:
								now the noun is a random VERY poisonous Alchemy Vessel carried by the player;
							otherwise:
								now the noun is a random Alchemy Vessel carried by the player;
							Now the Poison Level of the new thing is the Poison Level of the noun + the Poison Level of the new thing;  [<-------- Contaminate from bottle]
							Now the Alcohol Percent of the new thing is the Alcohol Percent of the noun + the Alcohol Percent of the new thing;
							move the noun to Hyperspace Chest;
							if the Alcohol Percent of the new thing is greater than 100:
								now the Alcohol Percent of the new thing is 100;
					otherwise:
						Say "[line break]You wisely decide not to use the dirty flask; you'll need to Good Clean it first or find a Good Clean bottle to hold the [craft result] when it pours out of the machine.";
						now craftmessage is true;
				otherwise:
					Say "[line break]You need a bottle to hold the [craft result] when it pours out of the machine.";
					now craftmessage is true;
			otherwise:	[------------------------------------------------------< NO BOTTLE NEEDED SCRIPT]
				if something (called the X real result) that is the same as the craft result is in the Hyperspace Chest:
					move the noun to Hyperspace Chest;
					If the second noun is Craft Tool:
						now player carries the X real result;
						say "[if craftmessage is true]You use [the noun] on [the second noun] and get a [X real result].[end if]";
						now craftmessage is true;
					otherwise:
						move the X real result to the Machine Output of the second noun;
						say "[if craftmessage is true]You use [the noun] on [the second noun] and out pops a [craft result] into the [Machine Output of the second noun].[end if]";
						now craftmessage is true;
					Now the Poison Level of the X real result is the Poison Level of the noun + the Poison Level of the second noun; [<--------------------------Tainting The new result.]
					Now the Alcohol Percent of the X real result is the Alcohol Percent of the noun + the Alcohol Percent of the second noun;
					Now the Poison Level of the second noun is the Poison Level of the X real result divided by 3;[<--------------------------Tainting Machines and Tools.]
					Now the Alcohol Percent of the second noun is the Alcohol Percent of the X real result divided by 3;
					Now the noun is toxic NOT tested; [<--------------------------------------------------------------------Reset]
					Now the second noun is toxic NOT tested;
					Now the X real result is toxic NOT tested;
					if the Alcohol Percent of the X real result is greater than 100:
						now the Alcohol Percent of the X real result is 100;
				otherwise:
					move the noun to Hyperspace Chest;
					let the new thing be a new object cloned from the craft result, preserving relations;
					If the second noun is Craft Tool:
						now player carries the new thing;
						say "[if craftmessage is true]You use [the noun] on [the second noun] and get a [X real result].[end if]";
						now craftmessage is true;
					otherwise:
						move the new thing to the Machine Output of the second noun;
						say "[if craftmessage is true]You use [the noun] on [the second noun] and out pops a [craft result] into the [Machine Output of the second noun].[end if]";
						now craftmessage is true;
					Now the Poison Level of the new thing is the Poison Level of the noun + the Poison Level of the second noun; [<--------------------------Tainting The new result.]
					Now the Alcohol Percent of the new thing is the Alcohol Percent of the noun + the Alcohol Percent of the second noun;
					Now the Poison Level of the second noun is the Poison Level of the new thing divided by 3;[<--------------------------Tainting Machines and Tools.]
					Now the Alcohol Percent of the second noun is the Alcohol Percent of the new thing divided by 3;
					Now the noun is toxic NOT tested; [<--------------------------------------------------------------------Reset]
					Now the second noun is toxic NOT tested;
					Now the new thing is toxic NOT tested;
					if the Alcohol Percent of the new thing is greater than 100:
						now the Alcohol Percent of the new thing is 100;
		otherwise: [----------------------------------------------------------------------------------------GENERAL SCRIPT]
			If the craft result is Needs a Vessel:
				If the player carries a Good Clean Alchemy Vessel:
					if something (called the X real result) that is the same as the craft result is in the Hyperspace Chest:
						move the noun to Hyperspace Chest;
						move the second noun to Hyperspace Chest;
						say "[if craftmessage is true]You use [the noun] on [the second noun] and get a [X real result].[end if]";
						now craftmessage is true;
						now player carries the X real result;
						Now the Poison Level of the X real result is the Poison Level of the noun + the Poison Level of the second noun; [<--------------------------Tainting The new result.]
						Now the Alcohol Percent of the X real result is the Alcohol Percent of the noun + the Alcohol Percent of the second noun;
						Now the noun is toxic NOT tested; [<--------------------------------------------------------------------Reset]
						Now the second noun is toxic NOT tested;
						Now the X real result is toxic NOT tested;
						now the noun is a random Good Clean Alchemy Vessel carried by the player;
						move the noun to Hyperspace Chest;
						if the Alcohol Percent of the X real result is greater than 100:
							now the Alcohol Percent of the X real result is 100;
					otherwise:
						move the noun to Hyperspace Chest;
						move the second noun to Hyperspace Chest;
						say "[if craftmessage is true]You use [the noun] on [the second noun] and get a [craft result].[end if]";
						now craftmessage is true;
						let the new thing be a new object cloned from the craft result, preserving relations;
						move the new thing to the player;
						Now the Poison Level of the new thing is the Poison Level of the noun + the Poison Level of the second noun; [<--------------------------Tainting The new result.]
						Now the Alcohol Percent of the new thing is the Alcohol Percent of the noun + the Alcohol Percent of the second noun;
						Now the noun is toxic NOT tested; [<--------------------------------------------------------------------Reset]
						Now the second noun is toxic NOT tested;
						Now the new thing is toxic NOT tested;
						now the noun is a random Good Clean Alchemy Vessel carried by the player;
						move the noun to Hyperspace Chest;
						if the Alcohol Percent of the new thing is greater than 100:
							now the Alcohol Percent of the new thing is 100;
				otherwise if the player carries a Poison Tainted Alchemy Vessel or the player carries a Poisonous Alchemy Vessel or the player carries a VERY poisonous Alchemy Vessel or the player carries a DEADLY poisonous Alchemy Vessel:
					Say "[line break]You need a flask to hold the [craft result], but all you have is dirty ones. Are you sure you want to use one?[line break]Yes\No[line break]";
					if the player consents: 
						if something (called the X real result) that is the same as the craft result is in the Hyperspace Chest:
							move the noun to Hyperspace Chest;
							move the second noun to Hyperspace Chest;
							say "[if craftmessage is true]You use [the noun] on [the second noun] and get a [X real result].[end if]";
							now craftmessage is true;
							now player carries the X real result;
							Now the Poison Level of the X real result is the Poison Level of the noun + the Poison Level of the second noun; [<--------------------------Tainting The new result.]
							Now the Alcohol Percent of the X real result is the Alcohol Percent of the noun + the Alcohol Percent of the second noun;
							Now the noun is toxic NOT tested; [<--------------------------------------------------------------------Reset]
							Now the second noun is toxic NOT tested;
							Now the X real result is toxic NOT tested;
							if the player carries a Poison Tainted Alchemy Vessel:
								now the noun is a random Poison Tainted Alchemy Vessel carried by the player;
							otherwise if the player carries a Poisonous Alchemy Vessel:
								now the noun is a random Poisonous Alchemy Vessel carried by the player;
							otherwise if the player carries a VERY poisonous Alchemy Vessel:
								now the noun is a random VERY poisonous Alchemy Vessel carried by the player;
							otherwise:
								now the noun is a random Alchemy Vessel carried by the player;
							Now the Poison Level of the X real result is the Poison Level of the noun + the Poison Level of the X real result; [<-------- Contaminate from bottle]
							Now the Alcohol Percent of the X real result is the Alcohol Percent of the noun + the Alcohol Percent of the X real result;
							move the noun to Hyperspace Chest;
							if the Alcohol Percent of the X real result is greater than 100:
								now the Alcohol Percent of the X real result is 100;
						otherwise:
							move the noun to Hyperspace Chest;
							move the second noun to Hyperspace Chest;
							say "[if craftmessage is true]You use [the noun] on [the second noun] and get a [craft result].[end if]";
							now craftmessage is true;
							let the new thing be a new object cloned from the craft result, preserving relations;
							move the new thing to the player;
							Now the Poison Level of the new thing is the Poison Level of the noun + the Poison Level of the second noun; [<--------------------------Tainting The new result.]
							Now the Alcohol Percent of the new thing is the Alcohol Percent of the noun + the Alcohol Percent of the second noun;
							Now the noun is toxic NOT tested; [<--------------------------------------------------------------------Reset]
							Now the second noun is toxic NOT tested;
							Now the new thing is toxic NOT tested;
							if the player carries a Poison Tainted Alchemy Vessel:
								now the noun is a random Poison Tainted Alchemy Vessel carried by the player;
							otherwise if the player carries a Poisonous Alchemy Vessel:
								now the noun is a random Poisonous Alchemy Vessel carried by the player;
							otherwise if the player carries a VERY poisonous Alchemy Vessel:
								now the noun is a random VERY poisonous Alchemy Vessel carried by the player;
							otherwise:
								now the noun is a random Alchemy Vessel carried by the player;
							Now the Poison Level of the new thing is the Poison Level of the noun + the Poison Level of the new thing;  [<-------- Contaminate from bottle]
							Now the Alcohol Percent of the new thing is the Alcohol Percent of the noun + the Alcohol Percent of the new thing;
							move the noun to Hyperspace Chest;
							if the Alcohol Percent of the new thing is greater than 100:
								now the Alcohol Percent of the new thing is 100;
					otherwise:
						Say "[line break]You wisely decide not to use the dirty flask; you'll need to Good Clean it first or find a Good Clean bottle to hold the [craft result] when it pours out of the machine.";
						now craftmessage is true;
				otherwise:
					Say "[line break]You need a bottle to hold the [craft result] when it pours out of the machine.";
					now craftmessage is true;
			otherwise:	[------------------------------------------------------< NO BOTTLE NEEDED SCRIPT]
				if something (called the X real result) that is the same as the craft result is in the Hyperspace Chest:
					move the noun to Hyperspace Chest;
					move the second noun to Hyperspace Chest;
					say "[if craftmessage is true]You use [the noun] on [the second noun] and get a [X real result].[end if]";
					now craftmessage is true;
					now player carries the X real result;
					Now the Poison Level of the X real result is the Poison Level of the noun + the Poison Level of the second noun; [<--------------------------Tainting The new result.]
					Now the Alcohol Percent of the X real result is the Alcohol Percent of the noun + the Alcohol Percent of the second noun;
					Now the noun is toxic NOT tested; [<--------------------------------------------------------------------Reset]
					Now the second noun is toxic NOT tested;
					Now the X real result is toxic NOT tested;
					if the Alcohol Percent of the X real result is greater than 100:
						now the Alcohol Percent of the X real result is 100;
				otherwise:
					move the noun to Hyperspace Chest;
					move the second noun to Hyperspace Chest;
					say "[if craftmessage is true]You use [the noun] on [the second noun] and get a [craft result].[end if]";
					now craftmessage is true;
					let the new thing be a new object cloned from the craft result, preserving relations;
					move the new thing to the player;
					Now the Poison Level of the new thing is the Poison Level of the noun + the Poison Level of the second noun; [<--------------------------Tainting The new result.]
					Now the Alcohol Percent of the new thing is the Alcohol Percent of the noun + the Alcohol Percent of the second noun;
					Now the noun is toxic NOT tested; [<--------------------------------------------------------------------Reset]
					Now the second noun is toxic NOT tested;
					Now the new thing is toxic NOT tested;
					if the Alcohol Percent of the new thing is greater than 100:
						now the Alcohol Percent of the new thing is 100;
	otherwise if the noun is lockable or the second noun is lockable:
		if the noun is locked:
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
		If the craft result is nothing:
			say "[if craftmessage is true]The [bold type][noun][roman type] and [bold type][the second noun][roman type]  just don't seem to go together.[end if]";
		otherwise:
			say "[if craftmessage is true]The [bold type][noun][roman type] and [bold type][the second noun][roman type]  just don't seem to go together., which is odd because they should make [craft result]. (This seems like a bug in the program)[end if]";
			now craftmessage is true;


	

Section - Preventing the new 'use' comand locking up the game - Try activating these if you have problems testing

[Does the player mean Combining Objects when the noun is a container or the second noun is a container: it is very unlikely. 

Does the player mean Combining Objects when the noun is a supporter or the second noun is a supporter: it is very unlikely.

Does the player mean Combining Objects when the noun is a person or the second noun is a person: it is very unlikely.]




Alchemy Poison & Item Crafting Engine ends here.




---- DOCUMENTATION ----

Chapter: Introduction

The Alchemy Poison & Item Crafting Engine allows you to use objects on other objects to create new objects. For example, herbs that combine together to make a potion, or an item that is dropped into a machine, which then spits out a different item somewhere else. We can even use both methods to create an entire lab or a complex machine that takes raw materials and turns them into other things the player can use. With this extension you can set up recipes and tools that the player can try and use to make anything, use objects on things to trigger scripts, as well as adding interactive machines that drop items when you insert other items. Taint items with alcohol and various levels of Poison and easily customise their effects. You can also easily set up scripts that mimic the mechanics in classic adventure games (such as Simon the Sorcerer). NOTE: To use this extension you will NEED to install 'Dynamic Objects by Jesse McGrew'. 


What this extension does:

* Adds a custom 'Use' command to your game with built-in Crafting, Alchemy, Object Combing and Dynamic Poison system features.
* Combine two object to make a third.
* Use an object on anything else to set off a script or reaction.
* Use a tool on an object to craft it. (Use knife on stick to get a spear, say)
* Make a potion in a returnable flask (you get the flask back when you drink it).
* Use an object on a machine to dispense new object into a hopper.
* Poisonous objects that taint recipes they are used in.
* Set poison amount so that some items kill you, and other items don't
* Combine toxic objects to create deadly poisons
* Fully dynamic, realistic, poison contamination system - bottles, machines, and tools can be tainted with traces of poison by a careless player. 
* Cleaners to take care of poisoned tools, flasks, and machines.
* Purification tablets that remove poisons and alcohol to make potions safe to drink.
* Degrading poisons that wear off of tools, bottles, and machines as they are used.



Chapter: Combining Objects

Section: Simple Combining

Two objects are used create a third object. In this version both items used vanish off-screen and a third 'finished' item appears in its place. We can create all three objects with nothing more than this:

	Wolfsbane is a kind of thing. There is a Wolfsbane in the Witch Hut. Every Wolfsbane becomes the Werewolf Tincture. 
	Pure Alcohol is a kind of thing. There is a Pure Alcohol in the Witch Hut. Every Pure Alcohol becomes the Werewolf Tincture.
	Test me with "use Wolfsbane on Alcohol".
	
	When play begins:  [---------- ingredient list]
		Now Every Wolfsbane becomes Every Werewolf Tincture; [Try to pair these by what they become]
		Now Every Pure Alcohol becomes Every Werewolf Tincture;
	
	When play begins: [---------- RESULT list]
		Now Every Werewolf Tincture is the same as every Werewolf Tincture;
	

To break all this down and make it easier - if we want to use and object on another object, all you have to do is say this: 

	[object] is a kind of thing. [This creates it in-game]
	
And then specify that:

	Every [object] becomes [another thing].
	
For example:
	
	Every sausage slice becomes the sausage sandwich.
	
	
Because Inform is slightly finicky,  to make the script work properly, we also need to say:
	
	When play begins: [---------- ingredient list]
		Now EVERY X becomes EVERY Z; [Filling in ingredients as X and Y and the result as Z]
		Now EVERY Y becomes EVERY Z; 
		
And ALSO:

	When play begins: [---------- RESULT list]
		Now Every Z is the same as Every Z; [Meaning, EVERY result is the same as EVERY result]


You can merge the two lists together if you like, however you need to make sure you add everything, otherwise the game will only allow us to use a combo ONCE before bugs start to happen. This isn't as hard as it sounds and if you forget to do it properly Inform will soon let you know! If you get stuck with this, there is a Troubleshooting section at the bottom of this documentation.


Section: Handling Objects In Your Game (Important!)

Every object combined by this script goes to one place - a special room called 'Hyperspace Chest'. When the script tries to combine two objects, the first place it looks for the result is here. This means that the most efficient way to use this script is to try and recycle the ingredient objects it dumps into the chest by moving them back into the game. If you do not do this, the script will default to creating a brand-new object using 'Dynamic Objects by Jesse McGrew'. You really want to avoid this as much as possible as there is an upper limit on the number of objects in the game. You should set this pretty high if you are making a game full of combinable objects using this:

	Use MAX_OBJECTS of 999.
	
This will lift the upper limit on objects in the game to 999. You can add more if you think you'll need it, but you probably won't.


Section: Multiple Results for Different Objects

We can also, of course, have things become multiple other things:

	cheese sandwich is a kind of thing. sausage sandwich is a kind of thing. [First mention what you are making, and work backwards]
	
	Cheese is a kind of thing There is a Cheese in the Cafeteria. Every Cheese becomes the cheese sandwich.
	Sausage slice is a kind of thing. There are 5 sausage slice in the Cafeteria. Every sausage slice becomes the sausage sandwich.
	A slice of bread is a kind of thing. every slice of bread becomes the cheese sandwich, and the sausage sandwich.

	When play begins:
		NOW Every sausage slice becomes EVERY sausage sandwich;
		NOW Every slice of bread becomes EVERY sausage sandwich;
		NOW Every Cheese becomes EVERY Cheese sandwich;
	
	When play begins:
		NOW EVERY sausage sandwich is the same as EVERY sausage sandwich;
		NOW EVERY Cheese Sandwich is the same as EVERY Cheese Sandwich;
	 
Once the game starts, all the player has to say to make a cheese sandwich is something like:

	Use bread on cheese
	
Or:

	Use bread on sausage
	
Watch out with how you name things though as trying to combine like-named things confuse Inform:

	Use Slice on Slice. [Did you mean the bread slice or the sausage slice?]


Chapter: Alchemy, Potions, and Combinations that Require a Bottle

Section: Requiring a Bottle

Alchemy is a very special kind of combining that requires an item labelled 'Alchemy Vessel' to work. Alchemy works with everything else in this extension - you can make any machine or tool require a bottle to output a liquid item. The player has to actually be carrying the bottle to prevent one simply vanishing out of a chest the player isn't supposed to have access to. To make a recipe need a bottle, all we need to do is say that 'X is Needs a Vessel.' (That is - the Result of the recipe is 'Needs a Vessel' not the components.)

	Essence is a kind of potion. [potions are special items that return a Flask when used.] 
	
	Essence is Needs a Vessel. [This tells the script that Essence Needs a Vessel to contain it]
	
	Magroot is a kind of thing. There are 5 Magroot in the Wizard Shop. Every Magroot becomes the Essence.  [This tells the script to refuse to make this item unless the player has an Alchemy Vessel]
	Jellic is a kind of thing.  Jellic is Needs a Vessel. There are 5 Jellic in the Wizard Shop. Every Jellic becomes the Essence.
	
	When play begins:
		NOW Every Magroot becomes EVERY Essence;
		NOW Every Jellic becomes EVERY Essence;
		NOW EVERY Essence is the same as EVERY Essence;
	
To add an Alchemy Vessel it is best to use the default Potion Flasks included as these are what the script returns when a potion is used:
	
	There is a Potion Flask in the Wizard Shop. 
	
	There is a Dirty Potion Flask in the Wizard Shop. [These are used potion flasks that contained something toxic, beware of using them as they will taint their contents!]

Note: You should only use terms like 'X is Needs a Vessel.' If you instead  say something like 'Every X Needs a Vessel' the script probably won't compile.

Section: Potions

Potions are a special kind of item that often have an effect. Making a potion is as simple as saying:

	Pu Pi Essence is a kind of potion. Pu Pi Essence is Needs a Vessel.

This will create bottle that returns a flask when drunk. We can also tell the extention what happens when we drink a particular potion by scripting it:

	Before drinking a potion (called the drink): [The Extention automatically handles drinking a random potion and returning a bottle. If the potion is toxic you will get back a Dirty Flask that needs to be Good Cleaned. If you have the ]
		If the Pu Pi Essence is the drink:
			say "You down the Pu Pi Essence and gain......(Fill in something here)";
			[Your Effect Here]
			now craftmessage is false; [This line stops the script's default message from showing. It automatically resets after use.]


Drinking a Potion will automatically return a Potion Flask with some of the attributes of the potion to the player. For example: if the potion was toxic or alcoholic in any way, the bottle will be tainted by its contents. (See: Poisons).



Chapter: Transferable Poisons & Contamination

Section: Alcohol & Poison

To make something poisonous or alcoholic, all we have to do is say it is:

	The Poison Level of a Kur Barb is 50. 
	
	The Alcohol Percent of a Rum Punch is 25.


Section: Contamination of New Items

Poison in the Alchemy Extension is crafty, it won't show up unless you say it is 'tested', or make an item to test it in game.  Either way, the syntax is the same:

	Crab Nut is a kind of thing. Crab Nut is poisonous. There is a Crab Nut in the Wizard Shop. It is edible. 
	
Creates a poisonous nut that the player can eat, but isn't told is dangerous. It is not a good idea to introduce very poisonous or deadly poisonous items until you have made the player cautious about eating suspicious things. You can help them to understand this by making things a known Poison:
	
	Crab Nut is toxic tested.

Or testing it:

	Now the noun is toxic tested;
	
Poison is tricky stuff, anything you craft with a poisoned item becomes toxic itself, and that includes dirty potion flasks, which you get back when the player uses something toxic. This extension also includes alcohol, which works the same way:

	it is slightly alcoholic. 

	it is alcoholic.

Alcohol is always visible, however poison is invisible unless tested for. If you don't want it to be invisible, you can flag all poisoned items by saying:

	When play begins:
		Now Poison Visible is true;


Section: Contamination of Flasks, Tools, & Machines

Ingredients are not the only things that can be tainted or poisoned. When a player combines object the poison and alcohol ratings of the things they use are transferred to the new object. For example, here is a tainted potion flask that makes its contents VERY poisonous:

There is a Dirty Potion Flask in the Wizard Shop. It is VERY poisonous.

You should allow the player to Good Clean bottles by adding either of the following scripted Good Cleaners to your game. Good Cleaners only work on *Empty* bottles, Craft Tools like the knife, and Craft Machines like the Magic Box. This one is a disposable Good Cleaner that vanishes after a single use:

	There are 5 Scrubby Cleaner in the Potione Shope.
	
This Good Cleaner is a craft tool and should never vanish:
	
	There is an Infinite Cleaner in the Potione Shope.
	
To use either, all you have to do is pick one up and say:

	Good Clean [something]
	
Note: if you want to rename these items, the best way to do it is by saying this (instead of creating objects which are a 'kind' of Scrubby Cleaner, as this can confuse the script):

	The printed name of the Scrubby Cleaner is "DIRT BLASTER (tm) Brand Good Cleaner". 
	The printed plural name of the Scrubby Cleaner is "DIRT BLASTER (tm) Brand Good Cleaners". 
	Understand "Brand" and "tm" and "(tm)" and "Dirt" and "Blaster" as the Scrubby Cleaner. 


Section: Cleaning Water & Purifying Poison and Alcohol From a Potion

We can also remove the taint of poison from a potion with three built in object kinds. These three objects are scripted to Good Clean potions and make them safer to drink (They will NOT work on any kind of object that is not a potion):

	Weak Purify Tablet [<------ slightly reduces the level of poison and alcohol]
	
	Regular Purify Tablet [<------ drastically reduces the level of poison and ALL alcohol]
	
	Ultra Purify Tablet [<------ removes ALL poison and ALL alcohol]


Section: The Results of Player Eating Poison

NOTE: The extension DOES NOT include the *results* for the player consuming a toxic or alcoholic things! You need to script this yourself!  To help you do this, you can use the 'Custom Poisons' extension by Philip Black as a template if you want. You can also find out more about using poisons in your game in the documentation for that extention. You may also have to set the 


Section: Advanced Poisons - Tweaking the Levels for Your Game

You can also control the toxicity ratings that trigger the 'Custom Poisons' extension by Philip Black (and your own scripts) by adding this to your game:

	When play begins:
		Now DEADLY Poisonous Rating is 100;
		Now VERY Poisonous Rating is 75;
		Now Poisonous Rating is 50;
		Now Fairly Toxic Rating is 25;
		Now Tainted Rating is 10;
		[A thing is considered 'Good Clean' if its toxicity is less than that of the Tainted Rating]
		
		
Each number represents the MINIMUM toxicity level needed to trigger itself and the MAXIMUM toxicity rating of the level bellow it. For example: 'Tainted Rating' sets the maximum for 'Good Clean' and the minimum for itself. Whereas 'Fairly Toxic Rating' sets the maximum for 'Tainted Rating' and the minimum for itself. However, DO NOT set any rating lower than the one above it as this will cause bugs. You can also set Alcohol ratings like so:

	When play begins:
		Now Very Alcoholic Rating is 50;
		Now Alcoholic Rating is 25;
		Now Slightly Alcoholic Rating is 10;


Chapter: Tool Use - Using a Tool to Modify An Object

Section: Crafting Objects With Tools

A tool is a specially marked object that does not disappear when it is used and remains available after use. This means we can create a knife that whittles a spear. Just like with basic alchemy, you can also require an tool such as a pestle and mortar to require a container such as a bottle. (NOTE: Do not label the tool as 'Needs a Vessel' otherwise it may cause bugs - you should only ever label consumable items this way)

	Forest is a room.
	knife is a kind of Craft Tool.
	There is a knife in the forest. Every knife becomes the spear.
	
	Large Branch is a kind of thing.
	There is a Large Branch in the forest. Every large branch becomes the spear.
	Test me with "use knife on branch".

Since the knife is unique in this example, we don't technically have to say that it is a 'kind of thing' or that 'Every knife becomes the spear'. However: You should always say that it IS a kind of thing when scripting just in case (even for unique items), as doing anything else can cause you bugs and problems if you change your mind or get into the habit of writing items this way.

To help you and the player, the script has also been set up to understand this:

	Understand "Cut" and "Stab" and "Sharpen" as the knife.

	Test me with "Sharpen Spear".

Tools like this will always send the result to the player and leave the tool where it is. This is different to how machines work:

Chapter: Machines - Making a Device That Processes Objects

Section: How They Work

A machine is a special object that receives other objects and then spits different things out into another place (The place it spits it out doesn't even need to be the same room). Machines are a really good way to limit how much of something the player can create, as well as to make the process more interactive. In the following example, the player feeds crystals into the hopper and can then take the magic dust from the draw. And as with the Tool and the basic combining, you can make the machine require a bottle to contain what it produces. (NOTE: Do not label the machine as 'Needs a Vessel' - you should only ever label consumable items this way) Machines are constructed like so:

	magic box is a kind of thing. There is a magic box in the Wizard Shop.  "You see a magic box with a hopper on top and a little [if the draw encloses anything]draw full of [list of things enclosed by the draw][otherwise]empty draw[end if] in its base.". Understand "machine" and "hopper" as the magic box.
	The magic box is a kind of Craft Machine.   [Input] 
	
	Every magic box becomes the Lupi Lupi Essence. [Items it creates]
	
	The Draw is a container. [output]  The Machine Output of the magic box is draw. [This script makes The draw receive items from the magic box hopper. If you don't create an Machine Output it will cause bugs] 
	
NOTE: The output must be BOTH: a different object from the input AND a container.


Chapter: Using the System to Make an Adventure Game Style Object Puzzle
	
Section: Stopping the Player From Combining & Doing Something Else

Sometimes we might want to do something else instead of creating a new object. This script interrupts crafting when one of the objects used is cheese:

	Before Combining Objects:
		if the noun is a cheese or the second noun is a cheese:
			Say "You are about to use the cheese, but you suddenly remember you are terribly allergic!";
			reject the player's command; 


Section: Running a Special Script Instead of Combining

You can expand this to create a special Adventure Game style object puzzles where using something on something else causes an event. You can see this in action in the 'We Come In Peace' mini game. Here is another example, just to show you how to use this script in a way that doesn't end the game:

	Ship is a room. Red Key Card is a kind of thing. Electronic Scanner Slot is a kind of thing. There is a Red Key Card and a Electronic Scanner Slot in Ship.

	Metal Door is a door. It is locked. North of Metal Door is Test.

	Before Combining Objects:
		if the noun is a Red Key Card:
			If the second noun is a Electronic Scanner Slot:
				Say "[line break]The machine swallows the card, and the door opens!";
				Move a random Red Key Card to Hyperspace Chest;
				Now the Metal Door is unlocked;
				reject the player's command; [This line is important or the main Combining Objects script will still run, and give an error]
		if the second noun is a Electronic Scanner Slot:
			If the noun is a Red Key Card:
				Say "[line break]The machine swallows the card, and the door opens!";
				Move a random Red Key Card to Hyperspace Chest;
				Now the Metal Door is unlocked;
				reject the player's command;
				
	Test me with "Use card on slot".


Section: Replacing Default Messages For Spesific Combos

We can replace the default message or add our own additional effects to ANY crafting combo using this script:
	
	Check Combining Objects:
		if something (called the craft result) that is become by the noun is become by the second noun: [This line stops our message showing unless we actually get a result.]
			if the noun is a magic box or the second noun is a magic box:
				now craftmessage is false; [This line stops the script's default message from showing. It automatically resets after use.]
				Say "With a hum and a series of crunches, the magic box eats up the raw crystal and drizzles a little pile of magic dust into its draw.";
	
Note: adding the phrase 'now craftmessage is false;' anywhere in a 'before combining' or 'check combining script suppresses the default craft message saying 'you use the thing on a thing and get a thing'.
	

Chapter: Attacking Things and Transforming Things

Just in case it helps anyone who doesn't want a full combat system, you can also use objects on people. For examples, see the Knife above and the Phayzor in the 'We come in peace' mini-game. 


Chapter: Troubleshooting Bugs and Glitches

Section: General

As the script automatically retrieves items from the Hyperspace Chest instead of just cloning them every time, try to take and send used items there whenever possible.

+++++

Section: If you get a bug during gameplay

'When play begins:' script, the chances are you got the wording there wrong - probably by trying to use the same wording as in the main script. In the 'When Play Begins:' scripts the phrasing is different to that in the main body of the game, so while you first say 'EVERY thing becomes the Other Thing in the main script, in the 'When Play Begins' we say:

	When play begins:
		Now EVERY thing becomes EVERY Other Thing;
		Now every Other Thing IS THE SAME AS every Other Thing; [So every combined object is the same as itself]

Be careful not to loose track of which things you have listed like this as the game will often still compile and some combinations will seem to work....at first. A good method of working is to make sure that once we have listed what a thing becomes, we immediately make sure we add the item to the 'When play begins:' list.  REMEBER: You need to create both types of 'When play begins' scripts to avoid gameplay bugs (Especially with stacks of created items). Hopefully in the future there will be a way to do this automatically. As I said earlier: If it helps, try listing ingredients and results seperatly:

	When play begins: [---------- ingredient list]
		Now every thing becomes EVERY Other Thing; [pair these by what they become]
		
	When play begins: [---------- RESULT list]
		Now Every (thing) is the same as every (itself again);

+++++

Section: When Compiling Fails Totally

1) ERROR: In 'Now Every Magic Box becomes the Magic Dust', I'm not able to understand what specific thing is meant by the phrase 'the Magic Dust'. 

Solution: If you get this error in a 'When Play Begins' Script it means you forgot to change the 'the' to a second 'Every'.

WRONG:

	Now Every Magic Box becomes the Magic Dust;
	
RIGHT:

	Now Every Magic Box becomes EVERY Magic Dust;


2) ERROR: Problem. You wrote 'Every Fool's Torment becomes every Ninja Tears'  : but this is a phrase which I don't recognise, possibly because it is one you meant to define but never got round to....

Solution: You forgot to add the word 'Now' to the begining of that line.

		
+++++

Section: 'The X and the Y just don't seem to go together' (But you know they should). 

When you get this bug it can be for a few reasons:

1) MACHINES - You forgot to specify BOTH the machine input AND a machine output. The output must be a different object AND a container. 

2) GENERALLY - You forgot to add all the 'when play begins' scripts OR you ONLY added the 'when play begins' scripts OR you didn't correctly write them. This can ALSO happen if you ONLY write one side of the equation. For example, if you tell the script that 'Every Raw Crystal becomes the magic dust.' but not that every box becomes the magic dust, the script will try to match the two items and fail.

REMEBER: The Extension is matching the items by what they become!  If both items become the same thing - success. If one item does, but the other doesn't - failure.

+++++

Section: Scripting error: Can't move [a thing] to nothing. 

This means you forgot to make a proper machine output for your Input. This error is quite rare.

+++++

Section: Combination only works ONCE. 

You forgot to do the 'When Play Begins' Scripts properly.


+++++

Section: Combination works, but when you create new items the item's name text is blank.

This bug is the 'When Play Begins' Script again. You probably forgot to say that:

	Now Every (thing) is the same as every (itself again);


+++++



Chapter: Final Thanks


Thanks go to Matt W for help with part of the script for this extension.


Example: * "Alchemy Workshop." - a short game showing the extension features.

	*: "Alchemy Workshop."

	Wizard Shop is a room.

	North of Wizard Shop is Wizard Garden. Rock is a thing in Wizard Garden.

	Include Alchemy Poison & Item Crafting Engine by Philip Black.
	
	Include Custom Poisons by Philip Black
	
	Magic Dust is a kind of thing. Pu Pi Essence is a kind of potion. Pu Pi Essence is Needs a Vessel. 
	
	Magic Box is a kind of thing.  It is fixed in place . There is a Magic Box in the Wizard Shop.  "You see a magic box with a hopper on top and a little [if the draw encloses anything]draw full of [list of things enclosed by the draw][otherwise]empty draw[end if] in its base.". Understand "machine" and "hopper" as the Magic Box.
	
	The Magic Box is a kind of Craft Machine.  [Input]
	
	The Draw is a container. It is fixed in place. [output]  The Machine Output of the Magic Box is The Draw. [This script makes The draw receive items from the magic box. If you don't create an Machine Output it will cause bugs (See: Troubleshooting)] 
	
	The Draw is in the Wizard Shop. Understand "mag" as magroot.
	
	Every Magic Box becomes the Pu Pi Essence. [Items it creates]
	Every Magic Box becomes the Magic Dust.
	
	Distilled Grief are a kind of potion. The Description is "Hidiously toxic, unless neutralised.". The Poison Level of a Distilled Grief is 200. Distilled Grief is Needs a Vessel.

	Fool's Torment is a kind of thing. It is edible. The Poison Level of a Fool's Torment is 150. Every Fool's Torment becomes the Ninja Tears. Understand "Fool" as the Fool's Torment. Every Magic Box becomes the Distilled Grief.
		
	There are 5 Fool's Torment in Wizard Shop.
	
	Nub Dust is a kind of thing. It is edible.
	
	Crab Nut is a kind of thing. It is edible. The Poison Level of a Crab Nut is 30. Every Crab Nut becomes the Nub Dust.
		
	There are 5 Crab Nut in Wizard Shop.

	Mortar & Pestle is a kind of Craft Tool. There is a Mortar & Pestle  in Wizard Shop. Every Mortar & Pestle becomes the Nub Dust.
	
	Understand "Mortar and Pestle" and "grind" and "pound" as the Mortar & Pestle.

	There is an Infinite Poison Tester in Wizard Shop.

	Ground Mint is a kind of thing.

	Raw Crystal is a kind of thing. There are 5 Raw Crystal is in the Wizard Shop. Every Raw Crystal becomes the magic dust.

	Peppermint is a kind of thing. There are 5 Peppermint in the Wizard Shop. Every Peppermint becomes Ground Mint.
	
	Magroot is a kind of thing. There are 5 Magroot in the Wizard Shop.  Every Magroot becomes the Pu Pi Essence.
	
	There are 5 Dirty Potion Flasks in the Wizard Shop. [Potion Flasks are the extention's default potion brewing vessel, but THESE ones are Dirty Potion Flasks contaminated with poison - you should scatter these around your game as well]
	
	There are 4 Scrubby Cleaner in the Wizard Shop.
	
	There is a Weak Purify Tablet and Regular Purify Tablet and Ultra Purify Tablet in the Wizard Shop.
	
	The printed name of the Scrubby Cleaner is "DIRT BLASTER (tm) Brand Cleaner". 
	The printed plural name of the Scrubby Cleaner is "DIRT BLASTER (tm) Brand Cleaners". 
	Understand "Brand" and "tm" and "(tm)" and "Dirt" and "Blaster" as the Scrubby Cleaner. 
	


	When play begins:
		Now Every Magic Box becomes Every Magic Dust;
		Now Every Raw Crystal becomes Every Magic Dust;
		Now Every Magic Box becomes Every Pu Pi Essence;
		Now Every Magroot becomes Every Pu Pi Essence;
		Now Every Peppermint becomes Every Ground Mint;
		Now Every Fool's Torment becomes every Distilled Grief;
		Now Every Magic Box becomes every Distilled Grief;
		Now Every Mortar & Pestle becomes every Nub Dust;
		Now Every Crab Nut becomes every Nub Dust;
			
			
	When play begins:
		Now Every Pu Pi Essence is the same as every Pu Pi Essence;
		Now Every Magic Dust is the same as every Magic Dust;
		Now Every Ground Mint is the same as every Ground Mint;
		Now Every Distilled Grief is the same as every Distilled Grief;
		Now Every Nub Dust is the same as every Nub Dust;
	
	
	
	Before drinking a potion (called the drink): [The Extention automatically handles drinking a random potion and returning a bottle. If the potion is toxic, the Flask you get back will be Dirty]
		 If the Pu Pi Essence is the drink:
			now craftmessage is false; [This stops the default 'nothing happens' message]
			 say "You down the Pu Pi Essence and gain......(Fill in something here)";
		otherwise if the Distilled Grief is the drink:
			[No message needed as the poison extention will cover it]
			now craftmessage is false;


Example: *** "We Come In Peace" - a short game showing the extension features.

	***: "We Come In Peace."

	Flying Saucer is a room. "You in what looks to be an ultra high-tech flying alien space-thingy. There is a ladder leading UP, a passage leading NORTH, and a big room to your SOUTH.".

	Pile of Alien Ash is a kind of thing.

	Include Alchemy Poison & Item Crafting Engine by Philip Black.

	Down from Flying Cup is Flying Saucer. "The room sloshes disconcertingly[If Maintenance Panel is not in Flying Cup] to one side you can see a big sparking hole where you ripped out the Quantum Irrelevancy Actuator. You hope they didn't need that too much....[end if]. There is a ladder leading DOWN.".

	North of Escape Pods is Flying Saucer. "You are in the rear of the Saucer, unfortunately there is some kind of alien being guarding them.". Alien Being is a kind of person. There is an Alien Being in Escape Pods. The description is "He\She\It isn't about to let you past.". Every Alien Being becomes the Pile of Alien Ash.

	South of Alien Workshop is Flying Saucer. "You are in a small room full of space tools. To your SOUTH is the main room of the Flying Saucer.". 

	Hyperbench is a thing in the Alien Workshop. It is fixed in place. The description is "It's just so much more hyper than a reguar workbench.".  
	
	Giga Tool is a kind of thing.  Giga Tool is a kind of Craft Tool.  The description is "This looks handy.". There is a Giga Tool in Alien Workshop.


	Phayzor is a kind of thing. Phayzor is a kind of Craft Tool.  The description is "You could really zap somebody's eye out with this.". Every Phayzor becomes the Pile of Alien Ash.

	Alien Power Cell is a kind of thing. Every Alien Power Cell becomes the Phayzor. There is a Alien Power Cell in Flying Saucer.

	Unpowered Phayzor is a kind of thing. The description is "Its unpowered. Looks like it needs about thirty thousand AA batteries or one alien Power Cell.". Every Unpowered Phayzor becomes the Phayzor.


	Inducted Monocrystal is a kind of thing. The description is "It doesn't look all that inducted to you, but you aren't an expert.". Every Inducted Monocrystal becomes the Unpowered Phayzor. There is an Inducted Monocrystal in the Flying Cup. Understand "crystal" as the Inducted Monocrystal.

	Unfinished Ray Gun is a kind of thing. The description is "Its missing the zappy bit that zaps things.".  Every Unfinished Ray Gun becomes the Unpowered Phayzor.

	Blaster Casing is a kind of thing. Every Blaster Casing becomes the Unfinished Ray Gun. 

	Blaster Assembly is a kind of thing. The description is "It needs some assembly.". Every Blaster Assembly becomes the Unfinished Ray Gun.

	Pile of Metal Parts is a kind of thing. The description is "Looks like a bunch of scrap, maybe you could make something from it to help you get out?". Every Pile of Metal Parts becomes the Blaster Casing. There is a Pile of Metal Parts in the Alien Workshop.


	Thingy is a kind of thing. The description is "Its...er....you don't know what it is, even though you made it....". Every Thingy becomes the Blaster Assembly.

	Doodads Whatsits is a kind of thing. The description is "Oh hey, a pile of bits. Maybe you could make something?". Every Doodads Whatsits becomes the Thingy. The printed name of Doodads Whatsits is "Doodads and Whatsits". Understand "Doodads and Whatsits" as the Doodads Whatsits.

	Super Spring is a kind of thing. The description is "You are pretty sure springs shouldn't glow like that...". There is a Super Spring in the Flying Saucer. Every Super Spring becomes the Thingy.

	Quantum Irrelevancy Actuator is a kind of thing. The description is "You don't know what this is, but it looks dangerously unsprung. You should spring it immediately.". Every Quantum Irrelevancy Actuator becomes the Thingy.

	Maintenance Panel is a kind of thing. It is fixed in place. The description is "There are all kinds of useful looking objects wired up behind this thing. If only you could get one...". Every Maintenance Panel becomes the Quantum Irrelevancy Actuator. There is a Maintenance Panel in Flying Cup.

	Every Giga Tool becomes the Blaster Assembly. Every Giga Tool becomes the Quantum Irrelevancy Actuator.


	Section - Craft Machine

	Alien Gizmo is a kind of thing. It is fixed in place. There is a Alien Gizmo in the Alien Workshop.  "You see a machine with lots of glowing buttons and a tape reel. It looks like you can feed things into the Hopper on top and they come out in the box underneath[if the Junk Box encloses anything], which currently contains [list of things enclosed by the Junk Box][end if]". Understand "machine" and " Hopper" as the Alien Gizmo. 
	
	Magnetic Tape Reel is a thing in the Alien Workshop.  It is fixed in place. The description is "Nothing is more high-tech than a Magnetic Tape Reel. Look at em' spin! There's gotta be bytes of data on that thing!". Blinky button is in the Alien Workshop. The description is "Anonymous coloured buttons that light up and blink. Not a single one is labelled. Clearly we are dealing with a very advanced civilisation.". Understand "buttons" and "colour" and "color" and "flash" and "flashing" and "switch" as Blinky button. The printed name of Blinky button is "Blinky buttons".
		
	To say Textis:
		if TextMod is false:
			now TextMod is true;

	After pushing the Blinky button:
		say "[line break][one of]'Boop-loob! BEEP!' (click click whirr) [First time]'Ethical Constraints Deactivated.'[only][or]Wacka! Wacka! Wacka![or]Weeerrrrrp! Bewwp Bewwwp Brrorooooo[or][if TextMod is false]'Life Support: OFF'              BREEEeeeeeeeeewwwwwww....... *phut*[otherwise]'Doop Doop Doop.'[end if][or]'Plasma Torpedoes Launched'[or]'Sim Lawyer Activated.  Calculating property damage'[or]Incoming Transmission: 'Help! Help! If anyone can hear us, we have just been hit by- ZZAAggharhfffffffffffffffffff................'[or]Space Shark Sighted off Starboard Bow[or]Accessing: Secrets of Universe.doc [Line break]........[line break][if TextMod is false]***FILE DELETED***[otherwise]***Error: File not found.***[end if][Textis][or]+++++++++++Out of Cheese: ERROR+++++++++++[or]'Product Warranty Voided'[cycling][paragraph break]";


	Instead of taking the Blinky button: say "You don't really need them.".
	
	Instead of taking the Magnetic Tape Reel: say "If you took that the ship might crash!".
	
	The Alien Gizmo is a kind of Craft Machine.   [Input] 

	The Junk Box is a thing in the Alien Workshop. It is fixed in place. The Machine Output of the Alien Gizmo is Junk Box. It is a container.  [output] Every Alien Gizmo becomes the Blaster Casing.


	Section - Shooting your way out
	
	
	Understand "shoot" and "blast" and "vaporise" as the Phayzor.
	
	Understand "shoot" and "blast" and "vaporise" as the Unfinished Ray Gun.
	
	Understand "shoot" and "blast" and "vaporise" as the Unpowered Phayzor.


Before Combining Objects:
	if the noun is a Phayzor:
		If the second noun is a Alien Being:
			Say "[line break]You blast the Alien guard into ash with the Phayzor and use the escape pod to flee! You soon return home, never realising that the aliens just wanted to be friends!";
			end the story saying "You have won, kinda..... The End.";
	if the second noun is a Phayzor:
		If the noun is a Alien Being:
			Say "[line break]You blast the Alien guard into ash with the Phayzor and use the escape pod to flee! You soon return home, never realising that the aliens just wanted to be friends!";
			end the story saying "You have won, kinda..... The End.";
	if the noun is a Unfinished Ray Gun:
		If the second noun is a Alien Being:
			Say "[line break]You better not try shooting the alien with an Unfinished Ray Gun, it won't work and they'll cotton on to your plan!";
			reject the player's command;
	if the second noun is a Unfinished Ray Gun:
		If the noun is a Alien Being:
			Say "[line break]You better not try shooting the alien with an Unfinished Ray Gun, it won't work and they'll cotton on to your plan!";
			reject the player's command;
	if the noun is a Unpowered Phayzor:
		If the second noun is a Alien Being:
			Say "[line break]You better not try shooting the alien with an Unpowered Phayzor, it won't work and they'll cotton on to your plan!";
			reject the player's command;
	if the second noun is a Unpowered Phayzor:
		If the noun is a Alien Being:
			Say "[line break]You better not try shooting the alien with an Unpowered Phayzor, it won't work and they'll cotton on to your plan!";
			reject the player's command;




	When play begins: [This is the list for everything that can be crafted into another thing]
		Now every Alien Being becomes every Pile of Alien Ash;
		Now every Phayzor becomes every Pile of Alien Ash;
		Now every Alien Power Cell becomes every Phayzor;
		Now every Unpowered Phayzor becomes every Phayzor;
		Now Every Inducted Monocrystal becomes Every Unpowered Phayzor;
		Now Every Unfinished Ray Gun becomes Every Unpowered Phayzor;
		Now Every Blaster Assembly becomes Every Unfinished Ray Gun;
		Now Every Blaster Casing becomes Every Unfinished Ray Gun;
		Now Every Giga Tool becomes every Blaster Assembly;
		Now Every Thingy becomes every Blaster Assembly;
		Now Every Super Spring becomes every Thingy;
		Now Every Quantum Irrelevancy Actuator becomes every Thingy;
		Now Every Maintenance Panel becomes every Quantum Irrelevancy Actuator;
		Now Every Giga Tool becomes every Quantum Irrelevancy Actuator;
		Now Every Alien Gizmo becomes every Blaster Casing;
		Now Every Pile of Metal Parts becomes every Blaster Casing;
	
	When play begins: [This is the list for things that are CREATED by crafting]
		Now every Phayzor is the same as every Phayzor;
		Now every Unpowered Phayzor is the same as every Unpowered Phayzor;
		Now Every Unfinished Ray Gun is the same as every Unfinished Ray Gun;
		Now Every Blaster Assembly is the same as every Blaster Assembly;
		Now Every Blaster Casing is the same as every Blaster Casing;
		Now Every Thingy is the same as every Thingy;
		Now Every Quantum Irrelevancy Actuator is the same as every Quantum Irrelevancy Actuator;


	




