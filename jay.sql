-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2021 at 11:04 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dc_heroes`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `memberId` int(5) NOT NULL,
  `teamId` int(5) NOT NULL,
  `memberTitle` varchar(255) NOT NULL,
  `memberImage` varchar(255) NOT NULL,
  `shortDescription` text NOT NULL,
  `longDescription` text NOT NULL,
  `heroProperties` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`memberId`, `teamId`, `memberTitle`, `memberImage`, `shortDescription`, `longDescription`, `heroProperties`) VALUES
(1, 1, 'Superman ', 'img/Justice_League/superman.jpg', 'Superman was born on the planet Krypton and was given the name Kal-El at birth. As a baby, his parents sent him to Earth in a small spaceship moments before Krypton was destroyed in a natural cataclysm. His ship landed in the American countryside, near the fictional town of Smallville. ', 'Superman, also known as the Man of Steel, is one of the most powerful superheroes in the DC Universe. His abilities include incredible super-strength, super-speed, invulnerability, freezing breath, flight, and heat-vision. Born as Kal-El on the dying planet Krypton, his parents Jor-El and Lara sent him in a rocket to the planet Earth where he would be the last surviving member of his race. His rocket was discovered by the kindly Jonathan and Martha Kent, who raised him as their son Clark Kent in the town of Smallville, Kansas.', '• Flight\r\n• Invulnerability\r\n• Superhuman strength\r\n• Superhuman speed'),
(2, 1, 'Batman ', 'img/Justice_League/batman.jpg', 'Batman is a superhero who appears in American comic books published by DC Comics. Batman was created by artist Bob Kane and writer Bill Finger, and debuted in the 27th issue of the comic book Detective Comics on March 30, 1939. In the DC Universe continuity, Batman is the alias of Bruce Wayne, a wealthy American playboy, philanthropist, and owner of Wayne Enterprises based in Gotham City.', 'Batman is the super-hero protector of Gotham City, a man dressed like a bat who fights against evil and strikes terror into the hearts of criminals everywhere. In his secret identity, he assumes the alias of Bruce Wayne, billionaire industrialist and notorious playboy; though \"Bruce Wayne\" is technically his real name, this Bruce Wayne is a disguise--that of the man he would have been had his parents not been murdered before his eyes when he was no more than a mere boy.  Although Batman possesses no super-human powers, he is one of the world\'s smartest men and greatest fighters. His physical prowess and technical ingenuity make him an incredibly dangerous opponent. He is also a founding member of the Justice League and the Outsiders. Dick Grayson, the first \"crime orphan\" to assume the identity of Robin and be nicknamed \"The Boy Wonder,\" who currently uses the alias of Nightwing, is Wayne\'s hand-picked successor, and they operate simultaneously as part of Batman Incorporated.', '• Indomitable Will\r\n• Intimidation\r\n• Interrogation\r\n• Martial Arts Master'),
(3, 1, 'Flash ', 'img/Justice_League/flash.jpg', 'The Flash is the fastest man alive. He is the protector of Central City and Keystone City, fighting against evil using his super-speed and a dedicated sense of heroism. His legacy, the Flash Family, spans throughout history tapping into the enigmatic Speed Force to gain their powers.', 'The Flash (or simply Flash) is the name of several superheroes appearing in American comic books published by DC Comics. Created by writer Gardner Fox and artist Harry Lampert, the original Flash first appeared in Flash Comics #1 (cover date January 1940/release month November 1939).[1] Nicknamed the \"Scarlet Speedster\", all incarnations of the Flash possess \"super speed\", which includes the ability to run, move, and think extremely fast, use superhuman reflexes, and seemingly violate certain laws of physics.  Thus far, at least four different characters—each of whom somehow gained the power of \"the speed force\"—have assumed the mantle of the Flash in DC\'s history: college athlete Jay Garrick (1940–1951, 1961–2011, 2017–present), forensic scientist Barry Allen (1956–1985, 2008–present), Barry\'s nephew Wally West (1986–2011, 2016–present), and Barry\'s grandson Bart Allen (2006–2007). Each incarnation of the Flash has been a key member of at least one of DC\'s premier teams: the Justice Society of America, the Justice League, and the Teen Titans.', '• Time Travel\r\n• Healing factor\r\n• Agility\r\n• Superhuman Speed'),
(4, 1, 'Wonder Woman ', 'img/Justice_League/wonderwoman.jpg', 'Wonder Woman is an Amazon warrior princess and one of the most powerful superheroes in the DC Universe. The daughter of Hippolyta, she was given power by the Gods to fight against evil in all its forms. Although she was raised entirely by women on the island of Themyscira, she was sent as an ambassador to the Man\'s World, spreading their idealistic message of strength and love.', 'Wonder Woman is a fictional superheroine appearing in American comic books published by DC Comics.[3] The character is a founding member of the Justice League. The character first appeared in All Star Comics #8 in October 1941[1] with her first feature in Sensation Comics #1 in January 1942. The Wonder Woman title has been published by DC Comics almost continuously except for a brief hiatus in 1986.[4] In her homeland, the island nation of Themyscira, her official title is Princess Diana of Themyscira. When blending into the society outside of her homeland, she sometimes adopts her civilian identity Diana Prince.[5]  Wonder Woman was created by the American psychologist and writer William Moulton Marston (pen name: Charles Moulton),[2] and artist Harry G. Peter. Marston\'s wife, Elizabeth, and their life partner, Olive Byrne,[6] are credited as being his inspiration for the character\'s appearance.[2][7][8][9][10] Marston\'s comics featured his ideas on DISC theory,[11] and the character drew a great deal of inspiration from early feminists, and especially from birth control pioneer Margaret Sanger; in particular, her piece \"Woman and the New Race\".', '• Superhuman strength\r\n• Nigh-invulnerability\r\n• Speed\r\n• Flight'),
(5, 1, 'Aquaman ', 'img/Justice_League/aquaman.jpg', 'Aquaman, also known as Arthur Curry and Orin, is a superhero and the ruler of the seas. As the king of Atlantis and other undersea territories, he technically controls most of the planet.', 'Aquaman (Arthur Curry) is a fictional superhero appearing in American comic books published by DC Comics. Created by Paul Norris and Mort Weisinger, the character debuted in More Fun Comics #73 (Nov. 1941).[1] Initially a backup feature in DC\'s anthology titles, Aquaman later starred in several volumes of a solo comic book series. During the late 1950s\' and 1960s\' superhero-revival period known as the Silver Age, he was a founding member of the Justice League. In the 1990s\' Modern Age, writers interpreted Aquaman\'s character more seriously, with storylines depicting the weight of his role as king of Atlantis.[2]', '• Superhuman strength\r\n• Staying underwater indefinitely\r\n• Telepathy\r\n• Super-speed'),
(6, 1, 'Green Lantern ', 'img/Justice_League/greenlantern.jpg', 'Green Lantern is a name that has been used by many characters in the DC Universe, appearing in two distinct legacies. The original (during the Golden Age) was businessman Alan Scott, who wore a magic power ring that created energy constructs and had to be charged using his mystic lantern.', 'Green Lantern is the name of several superheroes appearing in American comic books published by DC Comics. They fight evil with the aid of rings that grant them a variety of extraordinary powers, all of which come from imagination and/or emotions.[citation needed] The characters are typically depicted as members of the Green Lantern Corps, an interstellar law enforcement agency.  The first Green Lantern character, Alan Scott, was created in 1940 by Martin Nodell during the Golden Age of Comic Books and usually fought common criminals in Capitol City (and later, Gotham City) with the aid of his magic ring. For the Silver Age of Comic Books, John Broome and Gil Kane reinvented the character as Hal Jordan in 1959 and shifted the focus of Green Lantern stories from fantasy to science fiction. Other notable Green Lanterns include Guy Gardner, John Stewart, Kyle Rayner, Simon Baz and Jessica Cruz.', '• Flight\r\n• Hypnotize\r\n• Invisibility \r\n• Time Travel'),
(10, 2, 'Godspeed', 'img/Flash_Family/godspeed.jpg', 'August Heart was the former detective partner of Barry Allen. August was the only witness to Barry\'s accident, that turned him into the Flash. While going after a criminal organization called the Black Hole, August was struck by lightning during a Speed Force storm in Central City. He became the Flash\'s \"partner\", but in secret, August became the ruthless vigilante known as Godspeed, and got his revenge on who he suspected to be his brother\'s killer.', 'Godspeed (August Heart) is a fictional character appearing in comic books published by DC Comics. Heart was established as a detective and one of The Flash (Barry Allen)\'s best friends on the police force. When his brother is murdered and the man he suspects is exonerated, he becomes vengeful and eventually gains speed-based superpowers. Donning the identity of Godspeed, Heart becomes a vigilante bent on killing criminals instead of incarcerating them, serving as an antithesis to the Flash. He has been portrayed as both a supervillain and an antihero in the comic books and adapted media since his introduction in 2016.', '• Self-duplication\r\n• Electrokinesis\r\n• Vortex creation\r\n• Enhanced senses'),
(11, 2, 'Barry Allen', 'img/Flash_Family/barryallen.jpg', 'Barry Allen is The Flash, the fastest man alive. Using his super-speed powers, he taps into the Speed Force and becomes a costumed crime-fighter. He is a founding member of the Justice League.', 'The Flash (or simply Flash) is the name of several superheroes appearing in American comic books published by DC Comics. Created by writer Gardner Fox and artist Harry Lampert, the original Flash first appeared in Flash Comics #1 (cover date January 1940/release month November 1939).[1] Nicknamed the \"Scarlet Speedster\", all incarnations of the Flash possess \"super speed\", which includes the ability to run, move, and think extremely fast, use superhuman reflexes, and seemingly violate certain laws of physics.  Thus far, at least four different characters—each of whom somehow gained the power of \"the speed force\"—have assumed the mantle of the Flash in DC\'s history: college athlete Jay Garrick (1940–1951, 1961–2011, 2017–present), forensic scientist Barry Allen (1956–1985, 2008–present), Barry\'s nephew Wally West (1986–2011, 2016–present), and Barry\'s grandson Bart Allen (2006–2007). Each incarnation of the Flash has been a key member of at least one of DC\'s premier teams: the Justice Society of America, the Justice League, and the Teen Titans.', '• Time Travel\r\n• Healing factor\r\n• Agility\r\n• Superhuman Speed'),
(12, 2, 'Wally West ', 'img/Flash_Family/wallywest.jpg', 'Wally West is a speedster, the original superhero known as Kid Flash and the third character known as The Flash. His mentor was the second Flash, Barry Allen, who took him on as a sidekick after accidentally duplicating an experiment that had given him powers.', 'Wallace Rudolph West II is a fictional superhero appearing in American comic books published by DC Comics as the original Kid Flash and the third Flash.[1] His power consists mainly of superhuman speed. The nephew of Barry Allen, the second Flash, he first appeared in Flash #110 (1959), which depicted his transformation into Kid Flash. Under the mantle of Kid Flash, Wally was depicted as a teenage sidekick to his uncle and a founding member of the Teen Titans. After Barry\'s death in Crisis on Infinite Earths in 1985, Wally took on the role of the Flash from 1986 to 2009 in DC\'s main lineup until Barry returned in The Flash: Rebirth. Even so, Wally is the fastest character to ever hold the mantle of the Flash, and continues to be a fan favorite. in near future super hero covert-ops( the fastest speedster of all time, will kill wally west during a race to the death.', '• Superhuman Speed\r\n• Superhuman Reflexes\r\n• Superhuman Stamina\r\n• Superhuman Agility '),
(13, 2, 'Max Mercury', 'img/Flash_Family/maxmercury.jpg', 'Max Mercury is a legendary speedster who has traveled through time studying the Speed Force. Born in the 19th Century, he has taken different identities throughout history to fight crime.', 'Max is a human granted superhuman speed by ancient Native American rituals. His speed is enough that he can accelerate well beyond the standard Mach 1 super-speed limit, or the speed of sound; though he cannot reach escape velocity. Over time, he tried to find the fuel for his powers (and those of other speedsters): the Speed Force. Though he never quite entered it nor obtained its energies to power his speed, his attempts allowed him to travel forward through time.  Among his peers, Max is unique in his attempts to understand the Speed Force in a mystical way (referred to by other characters as \"Zen\"). He also differs from other speedsters because of his agility; he cannot run as quickly as the Flashes, but he has a greater ability to perform acrobatic stunts and finely coordinated actions than they do. Thus, he was even able to outmaneuver Professor Zoom during their initial fight, although Zoom still gained the advantage by threatening innocent people.', '• Speed Force Conduit\r\n• Accelerated Healing\r\n• Enhanced Senses\r\n• Phasing'),
(14, 3, 'Batman ', 'img/Batman_and_Robin/batman.jpg', 'Batman is a superhero who appears in American comic books published by DC Comics. Batman was created by artist Bob Kane and writer Bill Finger, and debuted in the 27th issue of the comic book Detective Comics on March 30, 1939. In the DC Universe continuity, Batman is the alias of Bruce Wayne, a wealthy American playboy, philanthropist, and owner of Wayne Enterprises based in Gotham City.', 'Batman is the super-hero protector of Gotham City, a man dressed like a bat who fights against evil and strikes terror into the hearts of criminals everywhere. In his secret identity, he assumes the alias of Bruce Wayne, billionaire industrialist and notorious playboy; though \"Bruce Wayne\" is technically his real name, this Bruce Wayne is a disguise--that of the man he would have been had his parents not been murdered before his eyes when he was no more than a mere boy.  Although Batman possesses no super-human powers, he is one of the world\'s smartest men and greatest fighters. His physical prowess and technical ingenuity make him an incredibly dangerous opponent. He is also a founding member of the Justice League and the Outsiders. Dick Grayson, the first \"crime orphan\" to assume the identity of Robin and be nicknamed \"The Boy Wonder,\" who currently uses the alias of Nightwing, is Wayne\'s hand-picked successor, and they operate simultaneously as part of Batman Incorporated.', '• Indomitable Will\r\n• Intimidation\r\n• Interrogation\r\n• Martial Arts Master'),
(15, 3, 'Robin ', 'img/Batman_and_Robin/robin.jpg', 'Robin is the position of Batman\'s sidekick and crimefighting partner, a teenage vigilante who patrols Gotham City armed with intensive martial arts abilities and a number of high-tech gadgets. There have been five as members of the Batman Family in regular continuity. The original Robin was Dick Grayson, a young circus acrobat whose parents had been killed by mobsters.', 'Robin is the alias of several fictional superheroes appearing in American comic books published by DC Comics. The character was originally created by Bob Kane, Bill Finger, and Jerry Robinson, to serve as a junior counterpart to the superhero Batman. The character\'s first incarnation, Dick Grayson, debuted in Detective Comics #38 (April 1940). Conceived as a way to attract young readership, Robin garnered overwhelmingly positive critical reception, doubling the sales of the Batman titles.[1] The early adventures of Robin included Star Spangled Comics #65–130 (1947–1952), which was the character\'s first solo feature. Robin made regular appearances in Batman related comic books and other DC Comics publications from 1940 through the early 1980s until the character set aside the Robin identity and became the independent superhero Nightwing. The team of Batman and Robin has commonly been referred to as the Caped Crusaders or the Dynamic Duo.[2]', '• Enhanced Speed\r\n• Enhanced Reflexes\r\n• Enhanced Stamina\r\n• High Strength'),
(16, 4, 'Robin', 'img/Teen_Titans/robin.jpg', 'Robin is the position of Batman\'s sidekick and crimefighting partner, a teenage vigilante who patrols Gotham City armed with intensive martial arts abilities and a number of high-tech gadgets. There have been five as members of the Batman Family in regular continuity. The original Robin was Dick Grayson, a young circus acrobat whose parents had been killed by mobsters.', 'Robin is the alias of several fictional superheroes appearing in American comic books published by DC Comics. The character was originally created by Bob Kane, Bill Finger, and Jerry Robinson, to serve as a junior counterpart to the superhero Batman. The character\'s first incarnation, Dick Grayson, debuted in Detective Comics #38 (April 1940). Conceived as a way to attract young readership, Robin garnered overwhelmingly positive critical reception, doubling the sales of the Batman titles.[1] The early adventures of Robin included Star Spangled Comics #65–130 (1947–1952), which was the character\'s first solo feature. Robin made regular appearances in Batman related comic books and other DC Comics publications from 1940 through the early 1980s until the character set aside the Robin identity and became the independent superhero Nightwing. The team of Batman and Robin has commonly been referred to as the Caped Crusaders or the Dynamic Duo.[2]', '• Enhanced Speed\r\n• Enhanced Reflexes\r\n• Enhanced Stamina\r\n• High Strength'),
(17, 4, 'Starfire', 'img/Teen_Titans/starfire.jpg', 'Starfire is an alien superhero with powers of flight and energy projection. Born a princess on the planet Tamaran, she escaped execution at the hands of her older sister Blackfire and traveled to Earth. Meeting the Teen Titans, she became a charter member and stayed with the team for most of her career.', 'Koriand\'r, Starfire\'s given name, is a princess of the fictional planet Tamaran in the Vega system, and was in line to rule the planet as queen. Komand\'r (also known as Blackfire), her older sister, developed a bitter rivalry with her after suffering a disease in infancy that robbed her of the ability to harness solar energy to allow her to fly, and by extension, her right to the throne. This rivalry continued and intensified when the siblings were sent for warrior training with the Warlords of Okaara.[4] Things came to a head during a sparring exercise in which Komand\'r attempted to kill her sister. As a result, Komand\'r was expelled and she swore vengeance.  That revenge came in a plot where Komand\'r betrayed her planet by supplying detailed information about Tamaran\'s defenses to their enemies, the Citadel. They conquered Tamaran with ease, and the surrender conditions included the enslavement of Koriand\'r, who was never permitted to return, since that would mean the Citadel would devastate the planet for abrogating the treaty. To her horror, Koriand\'r learned that Komand\'r was her master; her own older sister made the most of her sibling\'s years of horrific servitude. When Koriand\'r killed one of her captors, Komand\'r decided to execute her as punishment, but the sisters were attacked and captured by the Psions, a group of sadistic alien scientists. While performing deadly experiments on the sisters, the Psion were attacked by Komand\'r\'s forces. Koriand\'r broke free using her newly developed starbolts, destructive blasts of ultraviolet energy which were a result of the experiment. She freed Komand\'r, who was still absorbing more amounts of ultraviolet energy. Far from grateful, Komand\'r struck her sister with the same, but with more intensity and power and had her restrained for later execution.  Koriand\'r escaped by stealing a spacecraft to flee to the nearest planet, Earth, where she met the first Robin and his compatriots; she joined them in forming the Teen Titans. She became a charter member of this team and remained a member for years, finding work as a professional model using the name Kory Anders.', '• Flight\r\n• Bright-Green Energy Projection\r\n• Self-Sustenance\r\n• Invulnerability '),
(18, 4, 'Cyborg ', 'img/Teen_Titans/cyborg.jpg', 'Cyborg is the half cybernetic half man, chief technological expert and one of the five founding members of the Teen Titans and Justice League.', 'As a person, Cyborg is a very outspoken and fun-loving character Cyborg eating meat  who likes to enjoy life, especially since he found friends who consider him a person, not a freak. He likes to enjoy playing video games, tinkering with technological gizmos and eating. He also tends to be stubborn and has had some serious arguments with Robin in the past, but he does make a capable second-in-command in Robin\'s absence. He also has frequent arguments with Beast Boy, mostly about the latter\'s culinary taste and habit of misplacing all manners of personal items, though the two entertain a close relationship. He takes on the protective big brother role to Raven and Starfire, getting quite upset when they get sad and tries his best to confort them when he can.[1][2]', '• Cybernetic Exoskeleton\r\n• Mechanical Engineering\r\n• Immense Will Power\r\n• Leadership'),
(19, 4, 'Raven ', 'img/Teen_Titans/raven.jpg', 'Raven, also known as Rachel Roth, is a superhero with dark magic powers. Her strong personal motivations and desire to see good conflict with her heritage, as her father is a powerful demon named Trigon who wants to enslave the planet. Her mother is a human woman named Arella who was living on Earth at the time of conception, later to relocate to the mystical realm of Azarath.', 'Raven is a fictional superhero appearing in American comic books published by DC Comics. The character first appeared in a special insert in DC Comics Presents #26 (October 1980), and was created by writer Marv Wolfman and artist George Pérez.[1] A Cambion, daughter of a demon father (Trigon) and human mother (Arella), Raven is a powerful empath who can sense emotions and control her \"soul-self\", which can fight physically, as well as act as Raven\'s eyes and ears away from her physical body; more recently, she\'s been shown as being adept with various types of magic and sorcery. She is a prominent member of the superhero team Teen Titans. The character also goes by the alias Rachel Roth as a false civilian name.  Raven has appeared in numerous cartoon television shows and films, including as one of the Teen Titans in Cartoon Network\'s eponymous series, voiced by Tara Strong, and in the 2014–2020 DC Animated Movie Universe, voiced by Taissa Farmiga. Rachel Roth makes her live adaptation debut in the DC Universe and HBO Max series Titans, played by Teagan Croft.', '• Telekinesis\r\n• Solid Constructs\r\n• Dimensional Travel and Teleportation\r\n• Empathy'),
(20, 4, 'Beast Boy ', 'img/Teen_Titans/beastboy.jpg', 'Beast Boy was a former member of the Doom Patrol, and one of the five founding members of the Teen Titans and Justice League.', 'Garfield Mark \"Beast Boy\" Logan is a fictional superhero appearing in American comic books published by DC Comics. He has also gone under the alias Changeling. Created by writer Arnold Drake and artist Bob Brown, he is a shapeshifter who possesses the ability to metamorph into any animal he chooses. The character first appeared in The Doom Patrol #99 (November 1965) and is usually depicted as a member of the Doom Patrol and the Teen Titans.[2]  Beast Boy has appeared in numerous cartoon television shows and films, including as one of the Teen Titans in Cartoon Network\'s eponymous series, voiced by Greg Cipes. Gar Logan makes his live adaptation debut in the DC Universe and HBO Max series Titans, played by Ryan Potter.', '• Metamorphic ability \r\n• Highly skilled hand to hand combatant\r\n• Werewolf physiology \r\n• Shapeshifting'),
(21, 5, 'Appa Ali Apsa ', 'img/Guardians_of_the_Universe/appaaliapsa.jpg', 'Appa Ali Apsa, also known as Old Timer was one of the immortal Guardians of the Universe who chose to act as a representative of the Guardians in their desire to become closer to mortals they had sworn to protect and accompanied Green Lantern and Green Arrow on their cross-country road trip to examine humanity.[1]', 'Travelling across the U.S.A., Appa experienced many adventures and learns some valuable lessons about life. He later renounced his Guardian title and chose to travel the universe.  Shortly after the Crisis on Infinite Earths, the Guardians withdrew from the universe to mate with the Zamarons, but Appa Ali Apsa chose to remain alone on the planet Oa. However, the isolation caused him to slowly lose his sanity. The former Green Lantern called Priest decided to help the insane Guardian, but is ultimately killed by Appa Ali Apsa after refusing to give up his own mind to merge with the Guardian.  Gone Mad Now completely insane, Appa Ali Apsa ended his solitude by transporting multiple cities from multiple planets to Oa, as his playthings and company, creating the \"Mosaic World\". All of them were cities that Appa had visited during his many travels, including one from the USA. Earth\'s Green Lanterns Hal Jordan, John Stewart, and Guy Gardner intervened and opposed the mad Guardian. After an arduous battle, Appa\'s brethren Guardians returned from oblivion and helped kill the insane Guardian.[2]', '• Psionic Powers\r\n• Telepathy\r\n• Telekinesis\r\n• Thought Projection'),
(22, 5, 'Krona ', 'img/Guardians_of_the_Universe/krona.jpg', 'Krona was born on the planet Maltus during the height of the Maltusians civilization when they had reached the peak of their evolution by becoming immortal beings around four billion years ago. This period of his species existence saw them ceasing to reproduce and dividing their lines between males and females in order to better control their growing overpopulation problem.', 'Born on Maltus, Krona is an Oan[2] scientist who became obsessed with observing the origins of the universe itself, despite an ancient legend that said discovering that secret would cause a great calamity. Krona constructs a machine that pierces the temporal barrier and views the beginnings of time itself. Krona catches a glimpse of the hand of creation depositing the speck that would become the entire cosmos. His machine explodes at that instant, and the universe is shattered causing the creation of the Multiverse as the universe replicates into an infinite number of parallel universes. At this same moment, the Anti-Matter Universe is created, unleashing evil into the cosmos; thus, the Monitor and the Anti-Monitor are born. As punishment for this act, Krona is transformed into pure energy by his fellow Oans and is sent to forever wander the cosmos. Krona\'s actions are what caused the Oans to become the Guardians of the Universe.[3]  Krona returns to a physical state using the energies of Alan Scott\'s mystical power ring, but is again turned into his energy form by the Guardians.[4] Krona is finally restored to his original form thanks to Nekron—who gained additional power due to the anomaly of an immortal entering the realm of the dead when the Guardians kill him—and attempts to kill all of the Guardians, only to be narrowly defeated by the weakened Green Lantern Corps.[5]  Krona later resurfaces as the manifestation of Entropy itself and battles the New Guardians.[6]', '• Mental Powers\r\n• Entropic Mastery\r\n• Emotional Spectrum Mastery\r\n• Absorption'),
(23, 5, 'Master Builder ', 'img/Guardians_of_the_Universe/masterbuilder.jpg', 'John Stewart was an architect from Detroit, Michigan who was selected by The Guardians of the Universe as Hal Jordan\'s backup after Guy Gardner was seriously injured in a disaster. Although Jordan objected after seeing that Stewart had a belligerent attitude to authority figures, the Guardians stood by their selection.', 'John Stewart debuted in Green Lantern vol. 2 #87 (December 1971/January 1972) when artist Neal Adams came up with the idea of a substitute Green Lantern.[3] The decision to make the character black resulted from a conversation between Adams and editor Julius Schwartz, in which Adams recounts saying that given the racial makeup of the world\'s population, \"we ought to have a black Green Lantern, not because we’re liberals, but because it just makes sense.\"[1] The character was DC\'s first black superhero.[1]  John Stewart has become a major recurring character in the Green Lantern mythos within the DC Universe.[4] He became the primary character of Green Lantern vol. 2 from issues #182 through #200, when Hal Jordan relinquished his place in the Green Lantern Corps (1984–1986). He continued to star in the book when the title changed to The Green Lantern Corps from issue #201 to #224 (1986–1988). He would continue to make key appearances in Action Comics Weekly after The Green Lantern Corps\' cancellation (1988). He starred in the comic Green Lantern: Mosaic, which DC spun out of Green Lantern vol. 3, with a four-part storyline titled \"Mosaic\" (issues #14–17). DC published 18 issues of the ongoing Green Lantern: Mosaic title between June 1992 and November 1993.  John Stewart was featured as one of the lead characters on the television cartoon Justice League from 2001 until 2004. He continued to appear as a major character on the show\'s 2004–2006 sequel, Justice League Unlimited. In 2011, John Stewart starred in the New 52 relaunch of Green Lantern Corps alongside Guy Gardner, and became the sole lead character of the title from 2013 until the series\' conclusion in 2015. Green Lantern Corps was replaced by Green Lantern: The Lost Army, which also stars John Stewart as the lead.[5]', '• Indomitable Will\r\n• Compassion\r\n• Green Lantern Ring Mastery\r\n• Flight Combat Expert'),
(24, 5, 'Sinestro ', 'img/Guardians_of_the_Universe/sinestro.jpg', 'Thaal Sinestro of Korugar is the nemesis of Green Lantern. At one point the greatest member of the Green Lantern Corps, he was corrupted by his power and exiled for crimes against his own people.', 'Sinestro was born on the planet Korugar in space sector 1417. His dedication to preserving order originally manifested in his previous career, an anthropologist specializing in reconstructions of ruins of long-dead civilizations. One day while he was on one such site, a Green Lantern named Prohl Gosgotha crash-landed into the site, injured and apparently dying. He quickly gave his ring to Sinestro, just in time for Sinestro, who barely even understood what the ring could do, to defend himself from the Lantern\'s pursuer: a Weaponer of Qward; however, Sinestro had to destroy the ruins he had spent time restoring in order to crush the Qwardian. Afterwards, Gosgotha turned out to still be alive and asked for his ring back to keep him alive long enough to get help. Sinestro, knowing this would mean not being a Green Lantern himself, instead let him die and took over his post. The Guardians were unaware of his actions.[3]  In Green Lantern #45, his wife is shown for the first time in a flashback and revealed to be the sister of Abin Sur.  When Hal Jordan joined the Green Lantern Corps, Sinestro was assigned to be his instructor. Jordan was horrified at his new mentor\'s totalitarian methods, though Sinestro maintained that his iron-fisted rule was necessary to protect his people from alien forces. During his training, Jordan helped Sinestro repel an attempted invasion of Korugar by the alien warlords known as the Khunds. When Jordan called for help from the other Green Lanterns, Sinestro\'s dictatorship was exposed and he was forced to appear before the Guardians for punishment. Katma Tui, the leader of a Korugarian resistance movement who felt that Sinestro\'s \"protection\" kept her people from growing as a society through contact with other alien races, was recruited as his replacement in the Corps. Though Katma Tui eventually grew into one of the most respected Green Lanterns, she and the rest of Korugar initially resisted her appointment to the Corps; due to Sinestro\'s actions, Korugar had come to consider the symbol of the Green Lantern Corps an emblem of terror and oppression.', '• Fear Attunement \r\n• Indomitable Will\r\n• Intimidation\r\n• Qwardian Ring Mastery');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `ratingId` int(5) NOT NULL,
  `memberId` int(11) NOT NULL,
  `firstNamelastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ratingReview` text NOT NULL,
  `ratingNumber` int(5) NOT NULL,
  `ratingDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`ratingId`, `memberId`, `firstNamelastName`, `email`, `ratingReview`, `ratingNumber`, `ratingDate`) VALUES
(6, 14, 'Charles Barkley', 'Charlesbarkley@gmail.com', 'test', 0, '2021-03-04 10:56:22'),
(7, 4, 'First and Last Name', 'Charlesbarkley@gmail.com', 'test', 0, '2021-03-04 10:58:02'),
(8, 23, 'Charles Barkley', 'jayleesykes@gmail.com', 'test', 0, '2021-03-04 11:00:19'),
(9, 14, 'Charles Barkley', 'jayleesykes@gmail.com', 'test', 3, '2021-03-04 11:29:28'),
(10, 5, 'Charles Barkley', 'jayleesykes@gmail.com', 'test', 2, '2021-03-10 12:09:31'),
(11, 14, 'Charles Barkley', 'jayleesykes@gmail.com', 'test', 3, '2021-03-12 12:50:06'),
(12, 14, 'Dennis Chambers', 'jayleesykes@gmail.com', 'test', 4, '2021-03-12 12:50:30'),
(13, 11, 'Charles Barkley', 'jayleesykes@gmail.com', 'test', 2, '2021-03-13 10:58:27'),
(14, 10, 'Charles Barkley', 'jayleesykes@gmail.com', 'test', 1, '2021-03-18 10:48:56');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `teamId` int(5) NOT NULL,
  `teamTitle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`teamId`, `teamTitle`) VALUES
(1, 'Justice League'),
(2, 'Flash Family'),
(3, 'Batman and Robin'),
(4, 'Teen Titans'),
(5, 'Guardians of the Universe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberId`),
  ADD KEY `member_ibfk_1` (`teamId`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`ratingId`),
  ADD KEY `memberId` (`memberId`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`teamId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `memberId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `ratingId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `teamId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`teamId`) REFERENCES `team` (`teamId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`memberId`) REFERENCES `member` (`memberId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
