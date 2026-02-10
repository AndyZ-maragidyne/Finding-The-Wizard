==start
{start == 1: "First}{start > 1 && start < 15: "Next}{start < 15: question:"}
{~->classic|->magical|->morals}
==classic
{->interest|->strengths|->weaknesses|->failure|->future|->magical}
=interest //+1 -1
"Why are you interested in this position?"
* "I was tired of my old job." 
    ~ opinion -= 1
    “Well, I hope this job proves to be more entertaining for you.”
* "I wanted better pay."
    The wizard nods contently. “Hah, another material man. Just like the last one.” Ebineezer quips.
* "I wanted to learn about magic."
~ opinion += 1
    “That’s great to hear! You’ll definitely do that with this job.”
- ->start
=strengths //+1 -1
"What would you say is your greatest strength?"
* "My work ethic."
~ opinion -= 1
    The wizard writes something down. Ebineezer laughs.
* "My adaptability."
    "Change comes fast in this line of work. Adapting is required."
* "My intelligence."
~ opinion += 1
    "Especially important in the wizarding world. It's not our main stat for nothing."
- ->start
=weaknesses //+1 -1
"What would you say is your greatest weakness?"
* "I tend to crumble under pressure."
~ opinion -= 1
    "Well, there's a lot of that in the field. Maybe this isn't the best for you."
* "I don't know when to quit."
    "Knowing when to quit is important, it keeps you safe, especially here."
* "I'm not fireproof--yet."
~ opinion += 1
    "An ambitious one."
- ->start
=failure //+1 -1
"How do you deal with failure?"
* "I give up."
~ opinion += 1
    The wizard nods, "All failures can be erased with Fireball."
* "I've never failed before."
~ opinion -= 1
    "Hrm. I doubt it." snarks Ebineezer.
* "I try again."
    "Hopefully trying something different."
- ->start
=future //+1 -1
"What do you see yourself doing in 5 years?"
*"In the woods connecting with natural mana."
    "Tree-hugger." Ebineezer mutters.
*"Teaching my own apprentice."
~ opinion += 1
    The wizard smiles, "Passing on this art is important, especially as people stray further from the truth."
*"I'll probably be dead in 5 years."
~ opinion -= 1
    The wizard pauses. "That's... grim."
- ->start
==magical
{->pure|->wand|->insurance|->knowhow|->hypothetical|->morals}
=pure //+1 +1 -1
"Has your mind, body, or soul been used in any rituals, spells, or bargains?
* "No."
~ opinion += 1
    The wizard nods contently. "Good."
* "I sure hope not."
    “It’s very unlikely that you wouldn’t notice the aftereffects of such an act. But we can check later.” 
* "I once had a palm reading. Does that count?"
    Probably not, but we’ll need to check just in case. Most palm readings are just superstition, but some taint the path between your body and soul.
    * * "What should we do?"
    ~ opinion += 1
        "We’ll run mana through your body to check. We can do that if you get the job."
    * * "Why does that matter?"
    ~ opinion -= 1
        "These pathways are important for conjuring magic."
- ->start
=wand //+1
"How much experience do you have in using a wand or other magical implements?"
* "I don't have much experience."
    "That's fine, there'll be time to learn the basics later."
* "I'm very proficient."
~ opinion += 1
    "Great! That saves the both of us a lot of time."
* "I've used the wand tool in MS paint."
~ opinion += 1
    The wizard nods. “It’s often underappreciated in magical circles. Glad to see someone else who recognizes its mystic value.”
- ->start
=insurance //+1
"Do you have etherial insurance?"
* "Yes I do."
~ opinion += 1
    "Perfect, that saves me money."
* "What's that?"
    “It’s insurance that covers most injuries to yourself, others or reality caused accidentally by magical means. I can include it with the position, but it won’t include time-paradox correction, soul-retrieval, or dental.”
* No, I dont."
    “Alright, I’ll add it to the benefits bundle for the position.  I can include it with the position, but it won’t include time-paradox, soul-retrieval, or dental.”
- ->start
=knowhow //+1 -1
"What are the broadest catagories of magic?"
* "Earth, wind, fire and water?"
~ opinion -= 1
    "No. Those are the basic elements of nature."
* "Abjuration, Destruction, Restoration and Enchantment." 
    "No, those are subcatagories."
* "Conjuration, Transmutation, Evocation, and Divination."
~ opinion += 1
    "Correct. All magic falls into those four catagories in some way or another."
- ->start
=hypothetical //+1 -1
"Let's say you find yourself in a cave for an assignment. As you explore a swarm of Pseudodragons fly straight towards you. What's the best type of spell to use?
* "Fire magic?"
    “That's a good guess, but pseudo-dragons are immune to fire, but the bright light does drive them off, albeit temporarily.” 
* "Wind magic?"
~ opinion -= 1
    “That's incorrect, pseudo-dragons are incredibly maneuverable, and are able to easily navigate the torrent and get to you.”
* "Lightning magic?"
~ opinion += 1
    “That's correct, the light from the spell blinds the pseudo-dragons, who are used to the darkness of the cave, and it also greatly damages them.”

- ->start
==morals
{->sacrificeOthers|->choices|->savior|->mercy|->sacrificeSelf|->results}
=sacrificeOthers //+2 -1 +2 +1 -1 -1 +2
"Would you be able to take a life to see the completion of a ritual?"
* "Depends on the life."
    "Would you sacrifice a random animal?"
    * * "Yes."
    ~ opinion += 1
        "Would you sacrifice a person?"
        * * * "Yes."
        ~ opinion += 1
            "Interesting."
        * * * "No."
            "I see."
    * * "No."
    ~ opinion -= 1
        "I see." 
* "Depends on the ritual."
    "The ritual would be of great public benefit."
    * * "Yes."
    ~ opinion += 1
        "What if the ritual would be of great personal benefit?"
        * * * "Yeah probably."
        ~ opinion += 1
            "What if the ritual would actively harm others?"
            * * * * "Yeah."
                "Cut from the same cloth you and I." Ebineezer says.
                "I don't know how you're on the Council." the wizard retorts
                "Bribery." answers Ebineezer. 
            * * * * "Definitely not."
                The wizard nods. 
        * * * "No."
        ~ opinion -= 1
            "I see."
    * * "No."
    ~ opinion -= 1
        "Really? Huh."
* "No."
~ opinion -= 1
    "Hrm. Might not get far with that attitude." 
* "Yes."
~ opinion += 2
    "Good, good." 
- ->start
=choices // +2 -1 -1
"A magic item that we need is about to be acquired by an unknowing bystander. How would you get the item?"
* "Try to convince them to let me have it."
    "Most people are too stupid to get magic, so that won't work." snarks Ebineezer.
    "But they might just give it to you because they'd rather not deal with a crazy person." said the wizard. 
* "Attack them with magic."
~ opinion += 1
    "Simple and effective." said the wizard, "What type of magic?"
    * * "Fire magic."
    ~ opinion -= 1
        "That would probably damage the item. Not the best choice." 
    * * "Ice magic."
    ~ opinion += 1
        "That would immobalize the target and have the least risk in damaging the item." 
    * * "Lightning magic."
        "That'd probably damage the item, but it could work if you have good mana control." 
* "Hypnotize them to give me the item after they've paid for it."
~ opinion -= 1
    "I'd advise against that. The Council of Magicks doesn't like it when you use magic to remove free will."
    "Murder if okay though." adds Ebineezer. 
- ->start
    
=savior //+1 -1
"You see a frog getting attacked by a falcon. What do you do?"
* "Leave it. This is the course of nature."
    "I guess."
* "Save the frog."
    "What will you do after you save it?"
    * * "Let it go."
    ~ opinion -= 1
        "That'd be a waste. It could be used for alchemy."
        "Or as a midnight snack." chimed Ebineezer
    * * "Keep it as a familiar."
    ~ opinion += 1
        "That's a good decision. Frogs and other amphibians make great familairs."
- ->start
=mercy //+1 -1
"You encounter a young black dragon. It's injured, what would you do?"
* “Kill it, put it out of its misery.”
~ opinion += 1
    “Yes, good. This is the action that is best. Black dragons are known for their ferocity.”
* “Leave it to die.”
~ opinion -= 1
    “This could backfire if it happens to survive, as black dragons are known to hold a grudge and have excellent senses. It could find you and take revenge for not helping it.”
* “Rescue it.”
    “Hmm. It could see this as gratitude, maybe a powerful familiar.”
    “Yeah but it could also see this as weakness and take advantage of you.”
    “Indeed.” agrees the wizard.
- ->start
=sacrificeSelf //+1 +2
"Would you sacrifice your own body or soul to see a ritual to completion?"
* “No, I need to be alive to do more magic.”
~ opinion += 1
    “Good, the pursuit of higher magic must always come first, regardless of the possibilities of self-sacrifice.”
* “Maybe, depends on the ritual.”
    “Hmmm. I see.”
* “Yeah, probably.”
~ opinion += 2
    “Good, good.”
    “He plans to use you in a ritual now, good job.” Ebineezer jokes.
    “Hush.”
- ->start

