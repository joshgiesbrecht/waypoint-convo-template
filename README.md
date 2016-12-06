# waypoint-convo-template
A minimal example Inform 7 project implementing Emily Short's waypoint conversation system.

Waypoint narrative structure is a term coined by Emily Short to describe the system she created for her earlier short work Glass. In it, conversation topics exist as nodes in a network. At any given point the node the conversation is in will be the topic last discussed, and one can suggest (via ask/tell/etc) another connected topic. Connections between nodes have conversation text associated with them, so the text displayed depends on what you last spoke about and what you're transitioning to. 

More importantly, the game itself will try to guide the conversation to a specific target subject, and generally the player will need to find out how to steer away to a different subject.

For a more in-depth explanation of the idea, see Emily's article here:
https://emshort.blog/2016/04/12/beyond-branching-quality-based-and-salience-based-narrative-structures/

This template is hack-and-pasted from Emily's waypoint-based work, Glass. (Which is why there are still some traces of parrot-sounding narration, now that I'm skimming the code.)

The sample project is split into two Books. Book One contains all of the mechanics of the system, mostly independent of story-specific content (although there are a few default messages in there, which is where the parroty bits are hiding currently). Take a look at the definitions created here:

 * subject (n): the name of a conversation topic, ie. a node in the network. a kind of thing.
 ** target subject: what the game / NPCs want to talk about
 ** current subject
 ** last subject
 
 * suggestion relation / to suggest (v): the connections between subjects
 
 * conversation set: a table name that varies, that contains the conversation text associated with each suggestion relation
 ** initially set to "Table of Demonstration Remarks"

Book Two is where you can go crazy and add your own game. I've made one chapter for the world, and one chapter for the sample game's single scene.

Glass was based on multiple scenes which served as a mechanism for switching between conversation networks. To switch to a new conversation network in a new scene, set 'conversation set' to a new table of remarks (with the same structure as the existing example).

If anyone would like to clean up the parroty bits or extend / replace the sample story, send a pull request by all means! The current "story" actually has no ending, and ideally the sample story would demonstrate two different scenes.

Thanks!
