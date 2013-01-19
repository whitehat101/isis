# archer.rb
require 'isis/plugins/base'

class Isis::Plugin::Archer < Isis::Plugin::Base

  def respond_to_msg?(msg, speaker)
    msg.downcase == "!archer"
  end

  def response
    "#{QUOTES[rand(QUOTES.size)]}"
  end

  QUOTES = [
      "\"You better call Kenny Loggins. 'Cause you're in the danger zone.\" -- Sterling Archer",
      "\"Lying is like 95% of what I do.\" -- Sterling Archer",
      "\"I'm not saying I invented the turtleneck. But I was the first person to realize its potential as a tactical garment. The tactical turtleneck! The... tactleneck!\" -- Sterling Archer",
      "\"Karate? The Dane Cook of martial arts? No, ISIS agents use Krav Maga.\" -- Sterling Archer",
      "\"Hey, I am everybody's type.\" -- Sterling Archer",
      "\"M, as in Mancy.\" -- Sterling Archer",
      "\"Do not wind her up: that is a big gun and she is baby crazy.\" -- Sterling Archer",
      "\"It's like my brain's a tree and you're those little cookie elves.\" -- Sterling Archer",
      "\"Holy sh*tsnacks!\" -- Pam Poovey",
      "\"Why was I dressed like Hitler?\" -- Sterling Archer",
      "\"Benoit... balls.\" -- Sterling Archer",
      "\"Guess how many pygmies died cutting it down? Hint: six.\" -- Malory Archer",
      "\"Who taught you to punch, your husband?\" -- Pam Poovey",
      "\"And thanks Pam. Way to drag out a kidnapping. Now I'm late again. But this is a way better excuse than the train dwarf. Yuck.\" -- Cheryl Tunt",
      "\"Now shut up and kick in the door for me. And do it bad ass like I would. If I still had toe nails.\" -- Sterling Archer",
      "\"Do I look like I need bald guy cream?. Mikey, I can barely get a comb through this. It's so thick my barber charges me double\" -- Sterling Archer",
      "\"Cry 'Havoc!' and let slip the hogs of war.\" -- Sterling Archer",
      "\"Shoot him Cyril! But just him. I think the twins are warming up to me. Right? Am I getting some signals?\" -- Sterling Archer",
      "\"Who am I, Alan Turing? He was also in X-Men, remember?\" -- Sterling Archer",
      "\"What is this thing, made of Wolverine's bones? ... Does no one here read X-Men?\" -- Sterling Archer",
      "\"Did you see that? That was like like Steve McQueen and John Woo had a baby and that baby was you, baby.\" -- Sterling Archer",
      "\"I can do baby or I can do geezer murder mystery but I can't do both!\" -- Sterling Archer",
      "\"*groan*\" -- Woodhouse",
      "\"We all have to chip in to make ISIS green. Look at me chopping ice for a Tom Collins like a field hand... or do I want a mint julep?\" -- Malory Archer",
      "\"I've waited my entire life to say this exact phrase, 'I'm commandeering this airboat!'\" -- Sterling Archer",
      "\"Sometimes I think about adopting a little baby, so I could abandon it at a mall.\" -- Cheryl Tunt",
      "\"That's disgusting. If I wanted to look at your bare feet, Woodhouse, I'd sneak in and do it while you're asleep.\" -- Sterling Archer",
      "\"What do you even do here? Sit on your ass and analyze data? Well I'm a field agent, Isaac Newton. I risk my life. So yeah, I do deserve the best space in the parking garage. Like it would kill you to roll fifty feet? The stupid thing's electric.\" -- Sterling Archer",
      "\"Just try to think about something else... like there's no sink in there.\" -- Ray Gillette",
      "\"Woh. That's first degree frost bite. Too bad you don't have big mitteny gloves like me. I can't feel a thing in them.\" -- Sterling Archer",
      "\"Immigrants. Cramming their low riders full of free health care and... snow.\" -- Malory Archer",
      "\"I can't be alone. That's when she strikes like a slutty little Ninja.\" -- Sterling Archer",
      "\"Seriously, you cheated on me with Carol!?\" -- Lana Kane",
      "\"He'll be back! Crying for his mommy, just like that Christmas break when I moved and forgot to give the boarding school my new address. I mean he rode the train all the way into town he couldn't pick up a phone book!? 9 years old and crying for his mommy in that Police Station like a little girl! What does that tell you?\" -- Malory Archer",
      "\"Oh shut up. I bet you're barren.\" -- Malory Archer",
      "\"Bring me some posion Pam because I don't wish to live anymore! I'm dead inside...\" -- Malory Archer",
      "\"Barry, does this make up for Framboise? It does, other Barry, it sure does.\" -- Barry Dillon",
      "\"No, no! He ran from her, to go confess to Lana. But then this one starts going crazy and...long story short I had to drown her in the bathtub.\" -- Pam Poovey",
      "\"I don't know what that means Pam. I wasn't raised on a cheese farm..\" -- Cheryl Tunt",
      "\"Did Cyril run past here sobbing in a woman's bathrobe?\" -- Lana Kane",
      "\"And that's why I don't sleep with co-workers. That, and nobody lets me.\" -- Pam Poovey",
      "\"I'm gonna dress you up like a little gnome and just have you live in my garden.\" -- Rudi",
      "\"Oh my god, you like, sneeze glitter!\" -- Charles",
      "\"Do you not see me rocking this chiseled slab of hard man body? I mean come on. Are you gay or not?\" -- Sterling Archer",
      "\"Because how hard is it to poach a god damn egg properly? Seriously, that's like Eggs 101, Woodhouse.\" -- Sterling Archer",
      "\"I'm afraid the lemur got into the pudding cups.\" -- Woodhouse",
      "\"Keep that tramp date of yours out of my medicine cabinet! One more dead body in here and that b*tch Trudy Beekman will have me right back in front of the Co-op Board!\" -- Malory Archer",
      "\"Ugh. Just what Miami needs, more Cubans.\" -- Malory Archer",
      "\"Lana, come on. I think we both know it works fine.\" -- Sterling Archer",
      "\"Do you want ants? Because that is how you get ants!\" -- Malory Archer",
      "\"Swear to god, Mr. Archer, I have HR on speed dial.\" -- Receptionist",
      "\"That's good. Because I've waited my entire life to say this exact phrase: I'm commandeering this airboat!\" -- Sterling Archer",
      "\"Don't blame me, it's those new low-flow toilets. With the old ones, you could flush a dachshund puppy! ... I mean, not that you would...\" -- Pam Poovey",
      "\"CYRIL: \"Well next time, use the *women's* restroom\"  PAM: \"... the what?\"",
      "\"Woooo! Airboat! Seriously, Lana, this must be what it's like to have sex with me\" -- Sterling Archer",
      "\"LANA! I AM NOT. GONNA BLOW. THE..\" *engine explodes* -- Sterling Archer",
      "\"Yeah, try clearing your throat about a jillion more times, Lana. See if that helps.\" -- Sterling Archer"
  ]

  NSFW_QUOTES = [
      "\"You better call Kenny Loggins. 'Cause you're in the danger zone.\" -- Sterling Archer",
      "\"No Cyril, when they're dead, they're just hookers!\" -- Sterling Archer",
      "\"Lying is like 95% of what I do.\" -- Sterling Archer",
      "\"I'm not saying I invented the turtleneck. But I was the first person to realize its potential as a tactical garment. The tactical turtleneck! The... tactleneck!\" -- Sterling Archer",
      "\"Hm? Sorry I was picturing Whore Island.\" -- Sterling Archer",
      "\"It doesn't exist for you to just jet off to ... Whore island!\" -- Malory Archer",
      "\"Karate? The Dane Cook of martial arts? No, ISIS agents use Krav Maga.\" -- Sterling Archer",
      "\"Cyril, I paid her, I get to carry her corpse.\" -- Sterling Archer",
      "\"Hey, I am everybody's type.\" -- Sterling Archer",
      "\"M, as in Mancy.\" -- Sterling Archer",
      "\"Do not wind her up: that is a big gun and she is baby crazy.\" -- Sterling Archer",
      "\"It's like my brain's a tree and you're those little cookie elves.\" -- Sterling Archer",
      "\"Holy shitsnacks!\" -- Pam Poovey",
      "\"Why was I dressed like Hitler?\" -- Sterling Archer",
      "\"Benoit... balls.\" -- Sterling Archer",
      "\"I was jacking it on the telephone.\" -- Cyril Figgis",
      "\"Guess how many pygmies died cutting it down? Hint: six.\" -- Malory Archer",
      "\"Who taught you to punch, your husband?\" -- Pam Poovey",
      "\"I am literally wet with jealousy.\" -- Lana Kane",
      "\"And thanks Pam. Way to drag out a kidnapping. Now I'm late again. But this is a way better excuse than the train dwarf. Yuck.\" -- Cheryl Tunt",
      "\"Now shut up and kick in the door for me. And do it bad ass like I would. If I still had toe nails.\" -- Sterling Archer",
      "\"Do I look like I need bald guy cream?. Mikey, I can barely get a comb through this. It's so thick my barber charges me double\" -- Sterling Archer",
      "\"Cry 'Havoc!' and let slip the hogs of war.\" -- Sterling Archer",
      "\"Shoot him Cyril! But just him. I think the twins are warming up to me. Right? Am I getting some signals?\" -- Sterling Archer",
      "\"Dammit Cyril you said they were sexy.\" -- Sterling Archer",
      "\"Who am I, Alan Turing? He was also in X-Men, remember?\" -- Sterling Archer",
      "\"What is this thing, made of Wolverine's bones? Does no one here read X-Men?\" -- Sterling Archer",
      "\"Did you see that? That was like like Steve McQueen and John Woo had a baby and that baby was you, baby.\" -- Sterling Archer",
      "\"I can do baby or I can do geezer murder mystery but I can't do both!\" -- Sterling Archer",
      "\"*groan*\" -- Woodhouse",
      "\"We all have to chip in to make ISIS green. Look at me chopping ice for a Tom Collins like a field hand... or do I want a mint julep?\" -- Malory Archer",
      "\"I've waited my entire life to say this exact phrase, 'I'm commandeering this airboat!'\" -- Sterling Archer",
      "\"Sometimes I think about adopting a little baby so I could abandon it at a mall.\" -- Cheryl Tunt",
      "\"The mochachino ones are the cutest. And I guess he'd be half gay too. Can you say, 'best dancer ever!?'\" -- Pam Poovey",
      "\"That's disgusting. If I wanted to look at your bare feet, Woodhouse, I'd sneak in and do it while you're asleep.\" -- Sterling Archer",
      "\"Wait a minute. You liar, this isn't a condom wrapper! It's from a friggin' candy bar.\" -- Trinette",
      "\"What do you even do here? Sit on your ass and analyze data? Well I'm a field agent, Isaac Newton. I risk my life. So yeah, I do deserve the best space in the parking garage. Like it would kill you to roll fifty feet? The stupid thing's electric.\" -- Sterling Archer",
      "\"Just try to think about something else... like there's no sink in there.\" -- Ray Gillette",
      "\"Woh. That's first degree frost bite. Too bad you don't have big mitteny gloves like me. I can't feel a thing in them.\" -- Sterling Archer",
      "\"Immigrants. Cramming their low riders full of free health care and... snow.\" -- Malory Archer",
      "\"I can't be alone. That's when she strikes like a slutty little Ninja.\" -- Sterling Archer",
      "\"I'm from Germany, where the age of consent is 14.\" -- Anka",
      "\"Have sex with me!\" -- Pam Poovey",
      "\"Hi, if any of you men want to have sex with me, come to my office and take a number.\" -- Lana Kane",
      "\"What! Who's there!? What do you want!? Because all your gonna get is holes...Uh.. I mean... holes in you... not my holes...\" -- Malory Archer",
      "\"Seriously, you cheated on me with Carol!?\" -- Lana Kane",
      "\"He'll be back! Crying for his mommy, just like that Christmas break when I moved and forgot to give the boarding school my new address. I mean he rode the train all the way into town he couldn't pick up a phone book!? 9 years old and crying for his mommy in that Police Station like a little girl! What does that tell you?\" -- Malory Archer",
      "\"Oh shut up. I bet you're barren.\" -- Malory Archer",
      "\"Bring me some poison Pam because I don't wish to live anymore! I'm dead inside...\" -- Malory Archer",
      "\"Freeze every one of his accounts!! And then call Woodhouse, then we'll see how long Sterling can go without suckling at my teat!\" -- Malory Archer",
      "\"Barry, does this make up for Framboise? It does, other Barry, it sure does.\" -- Barry Dillon",
      "\"And I love that I have an erection, that didn't involve homeless people.\" -- Dr. Kreiger",
      "\"Cyril is already freaked out enough about us sharing this shoebox without you air-drying your unkempt bush.\" -- Lana Kane",
      "\"My vulva is a smoother than a veal cutlet!\" -- Lana Kane",
      "\"No, no! He ran from her, to go confess to Lana. But then this one starts going crazy and...long story short I had to drown her in the bathtub.\" -- Pam Poovey",
      "\"Oh My God you two banged!?\" -- Pam Poovey",
      "\"I don't know what that means Pam. I wasn't raised on a cheese farm..\" -- Cheryl Tunt",
      "\"Did Cyril run past here sobbing in a woman's bathrobe?\" -- Lana Kane",
      "\"Running up and down in your cheap Fiachi knockoffs, half-naked, tits bouncing around like you're at a rodeo.\" -- Malory Archer",
      "\"I tried, but you were naked, and it was all vulva this and...\" -- Cyril Figgis",
      "\"Worst case scenario: Her cover's been blown and Skorpio is now raping her senseless before chopping her mangled corpse into fish chum.\" -- Sterling Archer",
      "\"And that's why I don't sleep with co-workers. That, and nobody lets me.\" -- Pam Poovey",
      "\"So you just listen to me, Mr Man. Get me some video footage of hot man on man action by tonight, or don't bother coming home!\" -- Malory Archer",
      "\"I'm gonna dress you up like a little gnome and just have you live in my garden.\" -- Rudi",
      "\"Oh my god, you like, sneeze glitter!\" -- Charles",
      "\"Do you not see me rocking this chiseled slab of hard man body? I mean come on. Are you gay or not?\" -- Sterling Archer",
      "\"Is this some sort of viral marketing? Or are you asking me specifically if I have a penis?\" -- Ramon",
      "\"Because how hard is it to poach a god damn egg properly? Seriously, that's like Eggs 101, Woodhouse.\" -- Sterling Archer",
      "\"I'm afraid the lemur got into the pudding cups.\" -- Woodhouse",
      "\"Keep that tramp date of yours out of my medicine cabinet! One more dead body in here and that bitch Trudy Beekman will have me right back in front of the Co-op Board!\" -- Malory Archer",
      "\"Ugh. Just what Miami needs, more Cubans.\" -- Malory Archer",
      "\"Lana, come on. I think we both know it works fine.\" -- Sterling Archer",
      "\"Do you want ants? Because that is how you get ants!\" -- Malory Archer",
      "\"Swear to god, Mr. Archer, I have HR on speed dial.\" -- Receptionist",
      "\"That's good. Because I've waited my entire life to say this exact phrase: I'm commandeering this airboat!\" -- Sterling Archer",
      "\"Don't blame me, it's those new low-flow toilets. With the old ones, you could flush a dachshund puppy! ... I mean, not that you would...\" -- Pam Poovey",
      "\"CYRIL: \"Well next time, use the *women's* restroom\"  PAM: \"... the what?\"",
      "\"Woooo! Airboat! Seriously, Lana, this must be what it's like to have sex with me\" -- Sterling Archer",
      "\"LANA! I AM NOT. GONNA BLOW. THE..\" *engine explodes* -- Sterling Archer",
      "\"Yeah, try clearing your throat about a jillion more times, Lana. See if that helps.\" -- Sterling Archer"
  ]
end
