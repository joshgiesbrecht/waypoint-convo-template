"Waypoint Conversation Template" by Josh Giesbrecht

The story genre is "Sample Story". The story headline is "An Interactive Cliche". The story description is "An awkward man walks up to the bus stop. He's been coming to the same bus stop for months, and for the last seven weeks (and three days, eight minutes) she's been catching the same bus. Today he's finally going to beat his anxiety and speak to her. No big deal. Just a normal conversation.

That's why he's got you prompting him over his Bluetooth from around the corner." 
The story creation year is 2016.

Use no scoring, the serial comma, and American dialect.


Book 1 - Conversation system

Chapter 1 - New kinds, things, and verbs

A subject is a kind of thing.  

Blank is a subject. The printed name of blank is "whatever comes to mind".

The current subject is a thing that varies.
The target subject is a thing that varies.
The last subject is a thing that varies.

Suggestion relates subjects to each other. The verb to suggest (it suggests, they suggest, it is suggested) implies the suggestion relation.

Conversation set is a table name that varies. The conversation set is Table of Demonstration Remarks.

Chapter 2 - NPC goal-seeking

Definition: A subject is fruitful if it produces conversation.

To decide whether (next subject - a subject) produces conversation:
	repeat through conversation set
	begin;
		if the starting entry is current subject or starting entry is blank
		begin;
			if the final entry is next subject or final entry is blank, yes;
		end if;
	end repeat;
	no.

To relate (initial subject - a subject) with (next subject - a subject), directly or pausing first:
	repeat through conversation set
	begin;
		if the starting entry is initial subject or starting entry is blank 
		begin;
			if the final entry is next subject or final entry is blank
			begin;
				if pausing first, say "There is a long thoughtful silence. "; 
				say "[comment entry][paragraph break]";
				blank out the whole row;
				rule succeeds;
			end if;
		end if;
	end repeat. 

A person can be active or passive.  [* this is a marker to keep track of whether NPC activity is choosing the next topic*]

Every turn when the Boring Man is active:  [* TODO make this less story-specific? *]
	let pause be "blank";
	let segue be the next step via the suggestion relation from the current subject to the target subject;
	if segue is a subject
	begin;
		while segue is not the target subject and segue is not fruitful
		begin;
			let segue be the next step via the suggestion relation from the segue to the target subject;
			let pause be "There's a long, thoughtful sort of pause.";
		end while;
		if pause is not "blank",
			relate the current subject with the segue, pausing first;
		otherwise relate the current subject with the segue, directly;
		now last subject is current subject;
		now current subject is segue;
	otherwise;
		now the current subject is last subject;
		say "There's an uncomfortable silence as everyone tries to think of a sensible direction for the conversation to take from here.
		
'Hmm, we were speaking of [current subject],' says [a random visible person who is not the player].";
	end if.

Every turn: now the Boring Man is active.

Chapter 3 - Grammar of Speech Commands

[* clear existing library of speech commands *]
Understand the command "ask" as something new. Understand the command "tell" as something new. Understand the command "say" as something new. Understand the command "speak" as something new.Understand the command "shout" as something new.Understand the command "answer" as something new. Understand the command "scream" as something new.

Understand "mention no" as saying no. Understand "mention yes" as saying yes. Understand "mention sorry" or "apologize" as saying sorry. Understand "refuse" or "disagree" as saying no. Understand "approve" or "agree" as saying yes.

Understand "ask about [any subject]" as mentioning. Understand "tell about [any subject]" as mentioning. Understand "a [any subject]" as mentioning. Understand "t [any subject]" as mentioning. Understand "answer [any subject]" as mentioning. 

Understand "mention [any subject]" as mentioning. Understand the commands "speak" and "say" and "talk" and "shout" and "scream" and "shriek" and "yell" as "mention". 

To say exact verb:
	(- print (address) verb_word; -)

[But of course, if the player uses t or a the results will come out a bit strange. Therefore:]
After reading a command: if the player's command includes "t ", replace the matched text with "say "; if the player's command includes "a ", replace the matched text with "say "; if the player's command includes "mention ", replace the matched text with "say "; if the player's command includes "speak ", replace the matched text with "say ".

Instead of asking someone to try mentioning something: try mentioning the noun instead.  

Understand "ask [someone] about [text]" as directed speech (with nouns reversed). Understand "tell [someone] about [text]" as directed speech (with nouns reversed). Understand "answer [text] to [someone]" as directed speech.

Instead of answering someone that something: say "You can only squawk things for everyone to hear."
	
[And finally, to cover the case where the player types something like SQUAWK "KING":]

Include Punctuation Removal by Emily Short.

After reading a command: 
	remove stray punctuation; [* A phrase provided by the foregoing extension, which removes all quotation marks, exclamation points, and question marks from input before attempting to parse]
	if the player's command includes "&", replace the matched text with "and".

Directed speech is an action applying to one topic and one thing.

Carry out directed speech: say "You can only squawk things for everyone to hear."

[And now a refinement. Suppose the player tries to mention something that isn't on our short list of topics? We don't want "you can't see any such thing" or even "that noun makes no sense..." as a result. So we make a catch-all response for this situation:]
 
Understand "mention [text]" or "ask about [text]" or "tell about [text]" or "a [text]" or "t [text]" as jungle crying.

Jungle crying is an action applying to one topic.

Carry out jungle crying:
	do nothing.

Report jungle crying:
	say "You stumble over that unfamiliar term and it just comes out a birdlike cry."

Asking it about the subject is an action applying to one thing and one visible thing.

Carry out asking it about the subject: 
	try mentioning the second noun.

[And now at last we define the "mentioning" action.]
	
Mentioning is an action applying to one visible thing.

Carry out mentioning:
	say "'Hey!' you [exact verb]. '[The noun][if a random chance of 1 in 3 succeeds]! [The noun][end if]!'"; 
	
[The default behavior is to print the parrot's speech (in carry out, because this is one of those rare circumstances where the action involves generating some text -- just as examining prints the description in carry out). Then the non-player characters respond by trying to fit this outcry into the flow of their conversation. We make them silent at that point ("now the old lady is passive") so that their regular flow of every-turn conversation will be interrupted to deal with your intrusion.]

Report mentioning:
	now the Boring Man is passive;
	relate the current subject with the noun, directly;
		now the last subject is current subject;
	now the current subject is the noun.

Report mentioning the current subject:
	repeat through Table of Bad Bird Excuses
	begin;
		say "[response entry][paragraph break]";
		blank out the whole row;
		rule succeeds;
	end repeat.

	
Table of Bad Bird Excuses
response
"You continue to focus on the topic at hand, but the Boring Man dismisses you."
"Why are you still talking about that?"
"'Yes, yes,' says the Boring Man."



Book 2 - The Story

Chapter 1 - The World

The Blank Room is a room. A Boring Man is a person in The Blank Room. A Lovely Woman is in the Blank Room.

Chapter 2 - The Opening Scene

Section 1 - Setting the scene



Section 2 - List of subjects

Greeting is a subject. Greeting suggests weather. Greeting suggests name.

The current subject is greeting. The last subject is greeting.

The target subject is weather.

Section 3 - Connecting the subjects

Table of Demonstration Remarks
starting	final	comment
greeting	weather	"'Lovely weather we've had, isn't it?' says the man.

'Yes, fantastic, I suppose, hmm,' replies the woman, obviously disinterested."
greeting	name	"'So, um, what's your name?' asks the man.
'Grenelda,' replies the woman.
'Oh, um, that's, lovely,' he stammered, then cursed himself under his breath."



