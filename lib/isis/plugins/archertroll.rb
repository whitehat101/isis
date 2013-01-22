# encoding: utf-8
# archer.rb
require 'isis/plugins/base'

class Isis::Plugin::ArcherTroll < Isis::Plugin::Base

  def respond_to_msg?(msg, speaker)
    QUOTES.each do |quote,response|
      if (msg <=> quote) == 0
        @response = response
        return true
      end
    end

    false
  end

  def response
    if rand < 0.75
      @response
    else
      [ "https://s3.amazonaws.com/uploads.hipchat.com/1859/39316/sj38k7kr6kp9uty/upload.png",
        "https://s3.amazonaws.com/uploads.hipchat.com/1859/39316/blntaqyc29redhn/upload.png",
      ].sample
    end
  end

  QUOTES = {
    "\"You better call Kenny Loggins. 'Cause you're in the danger zone.\" -- Sterling Archer" => "http://assets.diylol.com/hfs/1dd/bbc/c34/resized/archer-danger-zone-meme-generator-call-kenny-loggins-coz-you-re-in-the-danger-zone-d319a5.jpg?1306676751.jpg",
    # "\"No Cyril, when they're dead, they're just hookers!\" -- Sterling Archer" => "http://cdn.memegenerator.net/instances/400x/19299158.jpg",
    "\"Lying is like 95% of what I do.\" -- Sterling Archer" => "http://cdn.memegenerator.net/instances/400x/22656455.jpg",
    "\"I'm not saying I invented the turtleneck. But I was the first person to realize its potential as a tactical garment. The tactical turtleneck! The... tactleneck!\" -- Sterling Archer" => "http://25.media.tumblr.com/tumblr_md6rjenvPB1rkfzi7o1_500.jpg",
    # "\"Hm? Sorry I was picturing Whore Island.\" -- Sterling Archer" => "http://25.media.tumblr.com/tumblr_md6rjenvPB1rkfzi7o1_500.jpg",
    # "\"It doesn't exist for you to just jet off to ... Whore island!\" -- Malory Archer" => "http://media.tumblr.com/tumblr_m61tzal3kw1r6egy9o1_500.gif",
    "\"Karate? The Dane Cook of martial arts? No, ISIS agents use Krav Maga.\" -- Sterling Archer" => "http://cdn.memegenerator.net/instances/400x/20961173.jpg",
    # "\"Cyril, I paid her, I get to carry her corpse.\" -- Sterling Archer" => "http://images2.fanpop.com/image/photos/11900000/corpse-bride-corpse-bride-11983248-513-632.jpg",
    "\"Hey, I am everybody's type.\" -- Sterling Archer" => "http://www.fanboysoftheuniverse.com/images/uploads/Honeypot_290.jpg",
    "\"M, as in Mancy.\" -- Sterling Archer" => "http://25.media.tumblr.com/tumblr_lneoujX5Vv1qzfkxgo1_500.jpg",
    "\"Do not wind her up: that is a big gun and she is baby crazy.\" -- Sterling Archer" => "http://static.someecards.com/someecards/usercards/1332290498061_1679935.png",
    "\"It's like my brain's a tree and you're those little cookie elves.\" -- Sterling Archer" => "http://upload.wikimedia.org/wikipedia/en/thumb/2/21/Keebler_Logo.png/200px-Keebler_Logo.png",
    "\"Holy sh*tsnacks!\" -- Pam Poovey" => "http://i.imgur.com/b7OXp.jpg",
    "\"Why was I dressed like Hitler?\" -- Sterling Archer" => "http://www.balettie.com/texas/Archer_why_was_I_dressed_like_Hitler.jpg",
    "\"Benoit... balls.\" -- Sterling Archer" => "http://24.media.tumblr.com/tumblr_lk0jf6qI671qzvr49o1_500.png",
    # "\"I was jacking it on the telephone.\" -- Cyril Figgis" => "http://upload.wikimedia.org/wikipedia/commons/1/15/1896_telephone.jpg",
    "\"Guess how many pygmies died cutting it down? Hint: six.\" -- Malory Archer" => "http://www.wired.com/images_blogs/wiredscience/2009/10/pygmies.jpg",
    "\"Who taught you to punch, your husband?\" -- Pam Poovey" => "http://scienceblogs.com/startswithabang/files/2011/02/face_punch2.jpeg",
    # "\"I am literally wet with jealousy.\" -- Lana Kane" => "http://nickjaina.com/wp-content/uploads/2011/05/2010-11-05-jealousy.jpg",
    "\"And thanks Pam. Way to drag out a kidnapping. Now I'm late again. But this is a way better excuse than the train dwarf. Yuck.\" -- Cheryl Tunt" => "http://images5.fanpop.com/image/photos/29900000/Kidnapping-is-Such-a-Strong-Word-the-heroes-of-olympus-29919468-298-300.jpg",
    "\"Now shut up and kick in the door for me. And do it bad ass like I would. If I still had toe nails.\" -- Sterling Archer" => "http://gifstumblr.com/images/trying-to-kick-down-a-door-in-real-life_1425.gif",
    "\"Do I look like I need bald guy cream?. Mikey, I can barely get a comb through this. It's so thick my barber charges me double\" -- Sterling Archer" => "http://i.walmartimages.com/i/p/00/31/25/47/78/0031254778135_500X500.jpg",
    "\"Cry 'Havoc!' and let slip the hogs of war.\" -- Sterling Archer" => "http://verydemotivational.files.wordpress.com/2012/04/demotivational-posters-cry-havoc.jpg",
    "\"Shoot him Cyril! But just him. I think the twins are warming up to me. Right? Am I getting some signals?\" -- Sterling Archer" => "http://outsideisoverrated.files.wordpress.com/2011/03/archer.jpg",
    # "\"Dammit Cyril you said they were sexy.\" -- Sterling Archer" => "http://24.media.tumblr.com/tumblr_mdvluopTtF1rhqgvwo1_1280.png",
    "\"Who am I, Alan Turing? He was also in X-Men, remember?\" -- Sterling Archer" => "http://i.huffpost.com/gen/801189/thumbs/a-ALAN-TURING-640x468.jpg",
    "\"What is this thing, made of Wolverine's bones? ... Does no one here read X-Men?\" -- Sterling Archer" => "http://cache.gawkerassets.com/assets/images/4/2010/09/exclusive_hugh_jackman_wolverine_workout_4920_5.jpg",
    "\"Did you see that? That was like like Steve McQueen and John Woo had a baby and that baby was you, baby.\" -- Sterling Archer" => "http://i81.photobucket.com/albums/j225/SCSnare/archer_kick.gif",
    "\"I can do baby or I can do geezer murder mystery but I can't do both!\" -- Sterling Archer" => "http://1.bp.blogspot.com/-yBL_L8K_FTI/Tl6JMz-rnbI/AAAAAAAAIxs/pKj2sT4DnVk/s1600/SeniorMomentsAreMurderFront.jpg",
    "\"*groan*\" -- Woodhouse" => "http://images.wikia.com/archer/images/c/c0/Woodhouse.png",
    "\"We all have to chip in to make ISIS green. Look at me chopping ice for a Tom Collins like a field hand... or do I want a mint julep?\" -- Malory Archer" => "http://cdn.memegenerator.net/instances/400x/25332005.jpg",
    "\"I've waited my entire life to say this exact phrase, 'I'm commandeering this airboat!'\" -- Sterling Archer" => "http://marshallmatlock.com/wp-content/uploads/2011/06/archer-fx-airboat-pipeline-fever-gif.gif",
    "\"Sometimes I think about adopting a little baby, so I could abandon it at a mall.\" -- Cheryl Tunt" => "http://25.media.tumblr.com/tumblr_m641lvb5CX1r4gm63o1_400.png",
    # "\"The mochachino ones are the cutest. And I guess he'd be half gay too. Can you say, 'best dancer ever!?'\" -- Pam Poovey" => "http://sylverblaque.files.wordpress.com/2012/09/dancing_baby.gif",
    "\"That's disgusting. If I wanted to look at your bare feet, Woodhouse, I'd sneak in and do it while you're asleep.\" -- Sterling Archer" => "http://marlomc.files.wordpress.com/2012/02/hobbit-feet.jpg",
    # "\"Wait a minute. You liar, this isn't a condom wrapper! It's from a friggin' candy bar.\" -- Trinette" => "http://25.media.tumblr.com/tumblr_li2vueTAo91qft530o1_400.gif",
    "\"What do you even do here? Sit on your ass and analyze data? Well I'm a field agent, Isaac Newton. I risk my life. So yeah, I do deserve the best space in the parking garage. Like it would kill you to roll fifty feet? The stupid thing's electric.\" -- Sterling Archer" => "http://i.imgur.com/totjp.jpg",
    "\"Just try to think about something else... like there's no sink in there.\" -- Ray Gillette" => "http://www.trianglehoneymoon.com/wp-content/uploads/2010/09/no-sink.jpg",
    "\"Woh. That's first degree frost bite. Too bad you don't have big mitteny gloves like me. I can't feel a thing in them.\" -- Sterling Archer" => "http://images.emedicinehealth.com/images/eMedicineHealth/illustrations/frostbite.jpg",
    "\"Immigrants. Cramming their low riders full of free health care and... snow.\" -- Malory Archer" => "http://johntracy.me/blog/wp-content/uploads/2009/08/ObamaHealthCare.jpg",
    "\"I can't be alone. That's when she strikes like a slutty little Ninja.\" -- Sterling Archer" => "http://cdn.uproxx.com/wp-content/uploads/2012/03/slutty-little-ninja.png",
    # "\"I'm from Germany, where the age of consent is 14.\" -- Anka" => "http://ct.fra.bz/ol/fz/sw/i45/5/1/20/fbz_e4a3985781e2a92a126d4afb9a95f6bd.jpg",
    # "\"Have sex with me!\" -- Pam Poovey" => "http://www.quotesworthrepeating.com/wp-content/uploads/2012/07/Pam-Poovey-228x300.jpg",
    # "\"Hi, if any of you men want to have sex with me, come to my office and take a number.\" -- Lana Kane" => "http://metrics.net/blog/wp-content/uploads/2010/12/take-a-number.jpg",
    # "\"What! Who's there!? What do you want!? Because all your gonna get is holes...Uh.. I mean... holes in you... not my holes...\" -- Malory Archer" => "http://www.imfdb.org/images/thumb/f/fa/Archer_629_2.jpg/600px-Archer_629_2.jpg",
    "\"Seriously, you cheated on me with Carol!?\" -- Lana Kane" => "http://cdn.memegenerator.net/instances/250x250/25561462.jpg",
    "\"He'll be back! Crying for his mommy, just like that Christmas break when I moved and forgot to give the boarding school my new address. I mean he rode the train all the way into town he couldn't pick up a phone book!? 9 years old and crying for his mommy in that Police Station like a little girl! What does that tell you?\" -- Malory Archer" => "http://www.vunie.com/wp-content/uploads/funny-picture-whenever-i-see-a-phone-book-outside-my-door-560x417.jpg",
    "\"Oh shut up. I bet you're barren.\" -- Malory Archer" => "http://3.bp.blogspot.com/_mGq93ifzOcg/SGmDnpx9EXI/AAAAAAAAAHo/PS0ZEUtcI1A/s400/Barren+Blog.jpg",
    "\"Bring me some posion Pam because I don't wish to live anymore! I'm dead inside...\" -- Malory Archer" => "http://www.wpclipart.com/medical/symbols/poison_sign.png", # brendon
    "\"Bring me some poison Pam because I don't wish to live anymore! I'm dead inside...\" -- Malory Archer" => "http://www.wpclipart.com/medical/symbols/poison_sign.png",
    # "\"Freeze every one of his accounts!! And then call Woodhouse, then we'll see how long Sterling can go without suckling at my teat!\" -- Malory Archer" => "http://static.tvfanatic.com/images/gallery/malory-archer-picture_72x250.jpg",
    "\"Barry, does this make up for Framboise? It does, other Barry, it sure does.\" -- Barry Dillon" => "http://images4.wikia.nocookie.net/__cb20110422175445/archer/images/thumb/a/a4/BarryCyborg.png/514px-BarryCyborg.png",
    # "\"And I love that I have an erection, that didn't involve homeless people.\" -- Dr. Kreiger" => "http://www.shc.edu/theolibrary/graphics/homeless.jpg",
    # "\"Cyril is already freaked out enough about us sharing this shoebox without you air-drying your unkempt bush.\" -- Lana Kane" => "http://2.bp.blogspot.com/-uHniDsA0-Rg/T6FZa8YfvAI/AAAAAAAAA0A/hcH8avAxO3c/s1600/Nike-Shoebox-psd34252.png",
    # "\"My vulva is a smoother than a veal cutlet!\" -- Lana Kane" => "http://grainveal.com/pics/veal-cutlet.jpg",
    "\"No, no! He ran from her, to go confess to Lana. But then this one starts going crazy and...long story short I had to drown her in the bathtub.\" -- Pam Poovey" => "http://cdn.memegenerator.net/instances/400x/25541435.jpg",
    # "\"Oh My God you two banged!?\" -- Pam Poovey" => "http://media.tumblr.com/tumblr_m7ebtepGb21r2isst.jpg",
    "\"I don't know what that means Pam. I wasn't raised on a cheese farm..\" -- Cheryl Tunt" => "http://www.photostaud.com/img/fotogalerie/dutch-farms-destination/holland-farms-001.3.jpg",
    "\"Did Cyril run past here sobbing in a woman's bathrobe?\" -- Lana Kane" => "http://i81.photobucket.com/albums/j225/SCSnare/woodhouse.gif",
    # "\"Running up and down in your cheap Fiachi knockoffs, half-naked, tits bouncing around like you're at a rodeo.\" -- Malory Archer" => "http://www.ableammo.com/catalog/images/ssi-2010/medium/fiocchi_762SOVA123box.jpg",
    # "\"I tried, but you were naked, and it was all vulva this and...\" -- Cyril Figgis" => "http://granitegrok.com/pix2/I%20tried%20it%20at%20home.jpg",
    # "\"Worst case scenario: Her cover's been blown and Skorpio is now raping her senseless before chopping her mangled corpse into fish chum.\" -- Sterling Archer" => "http://www.magicbait.com/mm5/graphics/00000001/FishChum-s.jpg",
    "\"And that's why I don't sleep with co-workers. That, and nobody lets me.\" -- Pam Poovey" => "http://images2.wikia.nocookie.net/__cb20110213010123/archer/images/thumb/d/da/Pam.png/288px-Pam.png",
    # "\"So you just listen to me, Mr Man. Get me some video footage of hot man on man action by tonight, or don't bother coming home!\" -- Malory Archer"=> "http://ecx.images-amazon.com/images/I/41zcYwg5xeL._SL500_SS500_.jpg",
    "\"I'm gonna dress you up like a little gnome and just have you live in my garden.\" -- Rudi" => "http://4.bp.blogspot.com/_qr45SaVdHN4/S_gD8kRf5GI/AAAAAAAAHwg/UcsiZQZsLGE/s1600/gnome+in+succulent+garden+1.jpg",
    "\"Oh my god, you like, sneeze glitter!\" -- Charles" => "http://drawception.com/pub/panels/2012/7-13/qj9D3HNQAb-2.png",
    "\"Do you not see me rocking this chiseled slab of hard man body? I mean come on. Are you gay or not?\" -- Sterling Archer" => "http://25.media.tumblr.com/tumblr_mdz0k8VToe1rkfzi7o1_500.png",
    # "\"Is this some sort of viral marketing? Or are you asking me specifically if I have a penis?\" -- Ramon"=> "http://www.usernetsite.com/webmaster/what-is-viral-marketingu/viral-marketing.jpg",
    "\"Because how hard is it to poach a god damn egg properly? Seriously, that's like Eggs 101, Woodhouse.\" -- Sterling Archer" => "http://4.bp.blogspot.com/_XK3dBKERIr0/R5o8AywUXVI/AAAAAAAAAPk/mUhk3p5e5gU/s400/HOW-TO-POACH-AN-EGG.jpg",
    "\"I'm afraid the lemur got into the pudding cups.\" -- Woodhouse" => "http://a.espncdn.com/media/motion/2012/1112/com_121112_espnw_duke_soccer_lemur_blog/com_121112_espnw_duke_soccer_lemur_blog.jpg",
    "\"Keep that tramp date of yours out of my medicine cabinet! One more dead body in here and that b*tch Trudy Beekman will have me right back in front of the Co-op Board!\" -- Malory Archer" => "http://www.scrubs123.com/blog/wp-content/uploads/2011/01/medicine-cabinet_59x73.5_we.jpg",
    "\"Ugh. Just what Miami needs, more Cubans.\" -- Malory Archer" => "http://newsimg.bbc.co.uk/media/images/41951000/jpg/_41951774_26july_ap.jpg",
    "\"Lana, come on. I think we both know it works fine.\" -- Sterling Archer" => "http://www.enfew.com/wp-content/uploads/2010/08/apache-it-works-enfew.png",
    "\"Do you want ants? Because that is how you get ants!\" -- Malory Archer" => "http://cdn.memegenerator.net/instances/400x/25331846.jpg",
    "\"Swear to god, Mr. Archer, I have HR on speed dial.\" -- Receptionist" => "http://static.someecards.com/someecards/usercards/1335017479751_6065143.png",
    "\"That's good. Because I've waited my entire life to say this exact phrase: I'm commandeering this airboat!\" -- Sterling Archer" => "http://i.imgur.com/vXPcP.png",
    "\"Don't blame me, it's those new low-flow toilets. With the old ones, you could flush a dachshund puppy! ... I mean, not that you would...\" -- Pam Poovey" => "http://upload.wikimedia.org/wikipedia/commons/c/cf/Dachshund_Puppy.jpg",
    "\"CYRIL: \"Well next time, use the *women's* restroom\"  PAM: \"... the what?\"" => "http://blogs.seattleweekly.com/reverb/restroomsignage.jpg",
    "\"Woooo! Airboat! Seriously, Lana, this must be what it's like to have sex with me\" -- Sterling Archer" => "http://2.bp.blogspot.com/-kB_dp6tBUKI/Tu5DfZeZv7I/AAAAAAAABQM/5HT0lVaSDjg/s1600/archer-fx-airboat-pipeline-fever-gif.gif",
    "\"LANA! I AM NOT. GONNA BLOW. THE..\" *engine explodes* -- Sterling Archer" => "http://2.bp.blogspot.com/-kB_dp6tBUKI/Tu5DfZeZv7I/AAAAAAAABQM/5HT0lVaSDjg/s1600/archer-fx-airboat-pipeline-fever-gif.gif",
    "\"Yeah, try clearing your throat about a jillion more times, Lana. See if that helps.\" -- Sterling Archer" => "http://musformation.com/Throat.jpg"
  }
end
