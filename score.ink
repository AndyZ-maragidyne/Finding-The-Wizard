==results
The wizard and Ebineezer mutter inaudibly to each other for a while, seemingly coming to a decision.
{opinion <= 5:->fail}
{opinion > 5 && opinion <= 15:->hired}
{opinion > 15 && opinion < 25:->well_hired}
{opinion >= 25:->praised}

=fail
"Hrm. I don't think I've seen a worse apprentice candidate in all my years." the wizard says. "I want you out, immediately!"
With a snap of his fingers, you find yourself standing where you found the flyer, late at night. You sigh and get ready to go back to your boring job.
->END
=hired
"Well, you certainly meet my criteria for a new apprentice. I'll send you home while I prepare for your first day on the job. Congradulations." said the wizard. ->salary
=well_hired
"You have an impressive wellspring of knowledge and characteristics that fit perfectly for a future master of the arcane. I look forward to helping you learn." says the wizard.->salary
=praised
"I'm suprised. I could've asked for a more qualified apprentice. You may as well be a prodigy. I look forward to working with you and helping you become a true master of the arcane." The wizard says. ->salary
==salary
Your hourly rate is ${opinion}. 
->END