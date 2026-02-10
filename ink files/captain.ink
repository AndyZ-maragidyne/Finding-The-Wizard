->police
===police===
"Halt. Civilians are not allowed through this area. We're tracking a dangerous criminal in this area."
"Captain, when they approached the manaometer registered the same type of magic as the fugitive."
"Oh, did you think you could get away this time Alakazam!"
* "Who is Alakazam?"
    "Nice try wizard, we know it's you."
    ** No, I'm not a wizard, I'm just an apprentice!
* "I'm not Alakazam."
    "Who else would you be?"
    ** I'm the wizard's apprentice.[] I'm trying to find him.
-"Captain, there were rumors that Alakazam took on an apprentice. Additionaly, the mana amount being detected is too low to be Alakazam."
"I see. Well then, if you're Alakazam's apprentice, I'll need to ask you a few questions."
* Go ahead.->questions

==questions==
VAR lies = 0
"Captain, the lie detection spell is active."
"Good, now let's begin.
Were you aware of Alakazam's true name?"
* No
"That's the truth captain."
" Good. <>
* Yes
"That was a lie Captain." 
~lies = lies + 1
"Okay, I'll assume you were just testing the lie detector. No more of that. <>
- Next question. Were you aware of Alakazam's intentions with the ritual?"
* Yes
"That's a lie captain."
~lies = lies + 1
"Alright there, stop that. You should tell the truth for your own good. Now next question.
* No
"That's the truth captain."
"Good, next question. <>
- Are you acquanted with the entity known as 'Ebineezer'?
* No
"That's a lie captain"
~lies = lies + 1
* Yes
"That's the truth captain."
-"Where is Ebineezer?"
* By the apartment building.
"We'll have to ask him what happened later."
"Last question. <>
* I don't know.
"That's a lie captain."
~lies = lies + 1
"So you know. We'll check the direction you came from later. last question.
- What do you plan to do next?"
* I'm going to find the wizard[.] and bring him to justice.
"That's the truth captain."
{lies > 2:"So you tell the truth now. Unfortunately you're our best bet to find him."}
{lies < 3:"That's what I like to hear, because you're our best bet to find him. }
<>The magic he uses is hard to sense unless you're extremely close to the source, so someone familiar with is the only way. I hearby authorize you to find and apprehend Alakazam the Mischievous!"
* [close]
-->DONE