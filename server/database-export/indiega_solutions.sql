-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 22. 08 2019 kl. 18:24:11
-- Serverversion: 10.1.30-MariaDB
-- PHP-version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indiega_solutions`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL,
  `articleFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `comments`
--

INSERT INTO `comments` (`id`, `name`, `message`, `articleFK`) VALUES
(3, 'Pewdiepie', 'I love the Assassin\'s Creed game series. Odyssey is no exception! ', 1),
(4, 'Michael Jordan', 'Assassin\'s Creed is the perfect game to sit down and relax with after a long training session', 1),
(5, 'Donald Duck', 'Very good review! I really like the game', 2),
(6, 'Santa', 'Definitely handing out lots of The Witcher 3 to good kids next Christmas!', 2),
(7, 'Olaf', 'Game has really good graphics. My computer can only run at medium! :(', 3),
(9, 'Vladimir', 'So good! I love Crysis', 3),
(10, 'Anders', 'Very interesting game. I love the dark theme', 4),
(11, 'Sophie', 'It\'s really scary but i enjoy it a lot', 4),
(12, 'Hans', 'Thanks for the update! I hope you fix the issue soon :D', 5),
(13, 'Torben', 'I appreciate your hard work! ', 5),
(14, 'Casper', 'Can\'t wait for the new update! It\'s really exciting!', 6),
(15, 'Lotte', 'Only started to play Ark this week. I\'m stoked to hear that more content is on the way. Should keep me busy for at least a few months :D', 6);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `contactmessages`
--

CREATE TABLE `contactmessages` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` int(8) NOT NULL,
  `subject` varchar(256) NOT NULL,
  `message` text NOT NULL,
  `contactTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `contactmessages`
--

INSERT INTO `contactmessages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `contactTime`) VALUES
(1, 'Daniel', 'dtherkildsen@hotmail.com', 12345678, 'Hej cool site', 'Vildt bror, jeg er så glad for at være her :D', '2019-08-20 13:51:05'),
(2, 'Daniel', 'dtherkildsen@hotmail.com', 12345678, 'Hej cool site', 'Vildt bror, jeg er så glad for at være her :D', '2019-08-20 13:51:41'),
(4, 'Daniel', 'Dtherkildsen@hotmail.com', 13213231, 'Sygt bror', 'Vildt bror', '2019-08-20 14:14:37');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `img` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `text` text NOT NULL,
  `releaseDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `games`
--

INSERT INTO `games` (`id`, `name`, `img`, `price`, `description`, `text`, `releaseDate`) VALUES
(1, 'ARK: Survival Evolved', 'ark.jpg', 55, 'The world has been thrown into chaos by an ancient evil from another dimension. As one of the last remnants of humanity, you must set out alone or alongside up to two other survivors to face down hordes of deadly enemies to try to carve a foothold, rebuild, and retake what was lost.', 'Dinosaurs, Creatures, & Breeding! -- over 100+ creatures can be tamed using a challenging capture-&-affinity process, involving weakening a feral creature to knock it unconscious, and then nursing it back to health with appropriate food. Once tamed, you can issue commands to your tames, which it may follow depending on how well you’ve tamed and trained it. Tames, which can continue to level-up and consume food, can also carry Inventory and Equipment such as Armor, carry prey back to your settlement depending on their strength, and larger tames can be ridden and directly controlled! Fly a Pterodactyl over the snow-capped mountains, lift allies over enemy walls, race through the jungle with a pack of Raptors, tromp through an enemy base along a gigantic brontosaurus, or chase down prey on the back of a raging T-Rex! Take part in a dynamic ecosystem life-cycle with its own predator & prey hierarchies, where you are just one creature among many species struggling for dominance and survival. Tames can also be mated with the opposite gender, to selectively breed successive generations using a trait system based on recombinant genetic inheritance. This process includes both egg-based incubation and mammalian gestation lifecycles! Or put more simply, raise babies!', '2017-08-27'),
(2, 'Remnant: From the Ashes', 'remnant.jpg', 40, 'The world has been thrown into chaos by an ancient evil from another dimension. As one of the last remnants of humanity, you must set out alone or alongside up to two other survivors to face down hordes of deadly enemies to try to carve a foothold, rebuild, and retake what was lost.', 'Remnant: From the Ashes is a third-person survival action shooter set in a post-apocalyptic world overrun by monstrous creatures. As one of the last remnants of humanity, you’ll set out alone or alongside up to two other players to face down hordes of deadly enemies and epic bosses, and try to carve a foothold, rebuild, and then retake what was lost.  A REMNANT OF MANKIND The world has been thrown into chaos by an ancient evil from another dimension. Humanity is struggling to survive, but they possess the technology to open portals to other realms and alternate realities. They must travel through these portals to uncover the mystery of where the evil came from, scavenge resources to stay alive, and fight back to carve out a foothold for mankind to rebuild...', '2019-08-20'),
(3, 'DARQ', 'darq.jpg', 17, 'DARQ tells the story of Lloyd, a boy who becomes aware of the fact that he is dreaming. The dream quickly turns into a nightmare and all attempts to wake up end in failure. Lloyd learns how to survive the nightmare by bending the laws of physics and manipulating the fluid fabric of the dream world.', 'HELP LLOYD WAKE UP!  DARQ tells the story of Lloyd, a boy who becomes aware of the fact that he is dreaming. To Lloyd\'s misfortune, the dream quickly turns into a nightmare and all attempts to wake up end in failure. While exploring the darkest corners of his subconscious, Lloyd learns how to survive the nightmare by bending the laws of physics and manipulating the fluid fabric of the dream world. WALL WALK, STEALTH, PUZZLES  Apart from gravity-defying puzzles, Lloyd will have to use stealth when nearby enemies. He has no chance of winning in an open confrontation, since the creatures he will encounter are much more powerful and faster than him. Instead, he has to rely on careful planning to avoid getting detected.', '2019-08-15'),
(4, 'Crysis 2', 'crysis2.jpg', 20, 'Aliens are decimating New York City, only you have the technology to survive. Be The Weapon.', 'Aliens are decimating New York City, only you have the technology to survive. Adapt in real time using the unique Nanosuit 2 Stealth, Armor and Power abilities, then tackle the alien menace in ways a regular soldier could only dream of. Crysis 2 redefines the visual benchmark for console and PC platforms in the urban jungle of NYC. Be The Weapon.', '2011-03-22'),
(5, 'The Witcher 3', 'the_witcher_3.jpg', 30, 'As war rages on throughout the Northern Realms, you take on the greatest contract of your life — tracking down the Child of Prophecy, a living weapon that can alter the shape of the world.', 'The Witcher: Wild Hunt is a story-driven open world RPG set in a visually stunning fantasy universe full of meaningful choices and impactful consequences. In The Witcher, you play as professional monster hunter Geralt of Rivia tasked with finding a child of prophecy in a vast open world rich with merchant cities, pirate islands, dangerous mountain passes, and forgotten caverns to explore. KEY FEATURES PLAY AS A HIGHLY TRAINED MONSTER SLAYER FOR HIRE Trained from early childhood and mutated to gain superhuman skills, strength and reflexes, witchers are a counterbalance to the monster-infested world in which they live.', '2015-05-18'),
(6, 'Assassin\'s Creed Odyssey', 'assassins_creed_odyssey.jpg', 60, 'Choose your fate in Assassin\'s Creed® Odyssey. From outcast to living legend, embark on an odyssey to uncover the secrets of your past and change the fate of Ancient Greece.', 'Assassin\'s Creed Odyssey is an action role-playing video game developed by Ubisoft Quebec and published by Ubisoft. It is the 11th major installment, and 21st overall, in the Assassin\'s Creed series and the successor to 2017\'s Assassin\'s Creed Origins. Set in the year 431 BC, the plot tells a fictional history of the Peloponnesian War between Athens and Sparta. Players control a male or female mercenary (Ancient Greek: μίσθιος misthios) who fights for both sides as they attempt to unite their family and uncover a malign cult. ', '2018-10-05');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'RPG'),
(4, 'FPS'),
(5, 'SCi-FI'),
(6, 'Open World');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `genremanager`
--

CREATE TABLE `genremanager` (
  `id` int(11) NOT NULL,
  `fkGameID` int(11) NOT NULL,
  `fkGenreID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `genremanager`
--

INSERT INTO `genremanager` (`id`, `fkGameID`, `fkGenreID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 6, 3),
(4, 6, 6),
(6, 2, 1),
(7, 2, 3),
(8, 3, 1),
(9, 3, 2),
(10, 4, 1),
(11, 4, 4),
(12, 5, 6),
(13, 5, 3);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `src` varchar(50) NOT NULL,
  `gameFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `images`
--

INSERT INTO `images` (`id`, `src`, `gameFK`) VALUES
(1, 'ark1.jpg', 1),
(2, 'ark2.jpg', 1),
(3, 'assassinscreed1.jpg', 6),
(4, 'assassinscreed2.jpg', 6),
(5, 'crysis1.jpg', 4),
(6, 'crysis2.jpg', 4),
(7, 'darq1.jpg', 3),
(8, 'darq2.jpg', 3),
(9, 'thewitcher1.jpg', 5),
(10, 'thewitcher2.jpg', 5),
(11, 'remnant1.jpg', 2),
(12, 'remnant2.jpg', 2),
(13, 'ark3.jpg', 1),
(14, 'ark4.jpg', 1),
(15, 'ark5.jpg', 1),
(16, 'assassinscreed3.jpg', 6),
(17, 'assassinscreed4.jpg', 6),
(18, 'assassinscreed5.jpg', 6),
(19, 'crysis3.jpg', 4),
(20, 'crysis4.jpg', 4),
(21, 'crysis5.jpg', 4),
(22, 'darq3.jpg', 3),
(23, 'darq4.jpg', 3),
(24, 'darq5.jpg', 3),
(25, 'remnant3.jpg', 2),
(26, 'remnant4.jpg', 2),
(27, 'remnant5.jpg', 2),
(28, 'thewitcher3', 5),
(29, 'thewitcher4', 5),
(30, 'thewitcher5', 5);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `newsposts`
--

CREATE TABLE `newsposts` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(500) NOT NULL,
  `img` varchar(250) NOT NULL,
  `postTime` datetime NOT NULL,
  `fkGame` int(11) NOT NULL,
  `text` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `newsposts`
--

INSERT INTO `newsposts` (`id`, `title`, `description`, `img`, `postTime`, `fkGame`, `text`) VALUES
(1, 'This Month in Assassin’s Creed – August 2019 Update', 'Players will no longer be able to apply the Sphinx Mane set bonus to other set items.\r\nAddressed several issues with the Rage ability in combat.\r\nAddressed an issue that caused the Call to Arms ability to be locked after Level 81.\r\nAddressed an issue preventing players from using the NPC locking mechanic while Rage is enabled.', 'assassins_creed_odyssey_news1.jpg', '2019-08-06 00:00:00', 6, 'Combining the base game with 3 massive Expansion Packs, ARK: Survival Evolved Explorer\'s Edition is a ultimate way to get even more dinosaur action! The Explorer\'s Edition gives you access to the mega hit ARK: Survival Evolved as well as the Scorched Earth (available now), Aberration (available now), and Extinction (coming in 2018) Expansion Packs, adding nearly 900 hours of gameplay!\r\n\r\nITEMS INCLU Standard-afsnittet brugt siden 1500-tallet\r\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\r\n\r\nAfsnit 1.10.32 fra \"de Finibus Bonorum et Malorum\", skrevet af Cicero i 45 f.kr.\r\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\r\n\r\n1914-oversættelsen af Rackham\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"\r\n\r\nAfsnit 1.10.33 fra \"de Finibus Bonorum et Malorum\", skrevet af Cicero i 45 f.kr.\r\n\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"\r\n\r\n1914-oversættelsen af Rackham\r\n\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"'),
(2, 'The Witcher 3 next gen status', 'Built exclusively for next generation hardware, the REDengine 3 renders the world of The Witcher visually nuanced and organic, a real true to life fantasy.\r\nDynamic weather systems and day/night cycles affect how the citizens of the towns and the monsters of the wilds behave.\r\nRich with storyline choices in both main and subplots, this grand open world is influenced by the player unlike ever before.', 'the_witcher_3_news1.jpg', '2019-06-19 00:00:00', 5, 'The Witcher: Wild Hunt is a story-driven, next-generation open world role-playing game set in a visually stunning fantasy universe full of meaningful choices and impactful consequences. In The Witcher you play as the professional monster hunter, Geralt of Rivia, tasked with finding a child of prophecy in a vast open world rich with merchant cities, viking pirate islands, dangerous mountain passes, and forgotten caverns to explore.\r\n\r\nPlay as a Highly Trained Monster Slayer for Hire\r\nTrained from early childhood and mutated to gain superhuman skills, strength and reflexes, witchers are a distrusted counterbalance to the monster-infested world in which they live.\r\n\r\nGruesomely destroy foes as a professional monster hunter armed with a range of upgradeable weapons, mutating potions and combat magic.\r\nHunt down a wide variety of exotic monsters from savage beasts prowling the mountain passes to cunning supernatural predators lurking in the shadows of densely populated towns.\r\nInvest your rewards to upgrade your weaponry and buy custom armour, or spend them away in horse races, card games, fist fighting, and other pleasures the night brings.\r\nExplore a Morally Indifferent Fantasy Open World\r\nBuilt for endless adventure, the massive open world of The Witcher sets new standards in terms of size, depth and complexity.\r\n\r\nTraverse a fantastical open world: explore forgotten ruins, caves and shipwrecks, trade with merchants and dwarven smiths in cities, and hunt across the open plains, mountains and seas.\r\nDeal with treasonous generals, devious witches and corrupt royalty to provide dark and dangerous services.\r\nMake choices that go beyond good & evil, and face their far reaching consequences.\r\nChase Down the Child of Prophecy\r\nTake on the most important contract to track down the child of prophecy, a key to save or destroy this world.\r\n\r\nIn times of war, chase down the child of prophecy, a living weapon of power, foretold by ancient elven legends.\r\nStruggle ferocious rulers, spirits of the wilds and even a threat from beyond the veil -- all hell-bent on controlling this world.\r\nDefine your destiny in a world that may not be worth saving.\r\nFully Realized Next Generation\r\n\r\nBuilt exclusively for next generation hardware, the REDengine 3 renders the world of The Witcher visually nuanced and organic, a real true to life fantasy.\r\nDynamic weather systems and day/night cycles affect how the citizens of the towns and the monsters of the wilds behave.'),
(3, '\'But can it run Crysis?\'—10 years of a PC gaming meme', 'At a time when few games required throwing out your aging PC and starting anew, Crysis ignored the development plateau introduced by consoles and forced everyone to save up for pricey hardware for the first time in a long time. ', 'crysis2_news1.jpg', '2017-11-13 00:00:00', 4, 'At a time when few games required throwing out your aging PC and starting anew, Crysis ignored the development plateau introduced by consoles and forced everyone to save up for pricey hardware for the first time in a long time. 2007 also gave us Call of Duty 4: Modern Warfare, BioShock, Portal, and the original Witcher—all great games, but none were really melting computers at the time. Unreal and Source Engine games ran like butter on most PCs, but only because they hadn\'t changed much since the Xbox 360 and PS3 releases around 2005.  \r\n\r\nCrysis asked so much of us that over the years it imprinted on the minds of a generation and ascended into a higher form of collective thought.\'But can it run Crysis?\'\r\n\r\nA meme was born, a slimy, bawling thing that dominated message board conversations and comments sections. But does it still live 10 years on? \r\n\r\n2007 \r\nThe AGP era of graphics cards was giving way to the new PCI Express, and Nvidia\'s GeForce 8800 GTX was the reigning King of Graphics, thanks to a staggering 768MB of RAM and 128 stream processors clocked at over 1GHz. A new generation of cards were just a few months away, and when Crysis arrived in November, its graphical potential represented a desire to move on. With the Xbox 360 released in 2005 and PS3 shortly after in 2006, videogame graphics were stuck in the mud while PC hardware kept improving rapidly. Games made exclusively for the PC were a huge risk in a console-focused market, let alone any that required $2000 PCs to play. \r\n\r\nBut then Crysis came out looking like it did, and famished as they were, PC players flocked to it like ragdoll moths to a flame with advanced post-processing effects. It was a glimpse of the future of guns and jungulature as interpreted by screen space ambient occlusion, a common lighting shader that debuted in Crysis before anywhere else. And adding to the mystique (and the difficulty of running it), the highest settings were locked away behind the brand new DirectX 10 and Windows Vista, released that year.\r\n\r\nMeme culture was blowing up at the same time. 2007 was one of the most prolific years for viral internet jokes, delivering Chocolate Rain, Rick-rolling, turtles, and fellow videogame catchphrase, \"The cake is a lie.\" \r\n\r\nBorne from a genuine question, bolstered by the absurd requirements to answer it, and fueled by the excitement over a new PC game that finally summoned the skills of hardware enthusiasts, \"But can it run Crysis\" started gathering momentum and wouldn\'t stop rolling anytime soon.\r\n\r\n2009 \r\nThese were the golden days. The meme business was booming under the umbrella of classics like \'David after dentist\' and the three-wolf moon t-shirt. In the videogame sector, \'But can it run Crysis\' was on top of the world. Only the most expensive machines could run the damn thing. Everyone knew someone who played on max settings, even if their PC could only run Crysis at 12 frames per second. We were all miserable, and we loved it. '),
(4, 'Darq developer reveals why he turned down Epic Store exclusivity', 'The developer of horror-filled puzzle game Darq turned down an Epic Games Store exclusivity deal, he revealed this week, and has called on Epic to allow indie games to sell simultaneously on the store and via Steam.', 'darq_news1.jpg', '2019-08-18 00:00:00', 3, 'The developer of horror-filled puzzle game Darq turned down an Epic Games Store exclusivity deal, he revealed this week, and has called on Epic to allow indie games to sell simultaneously on the store and via Steam.\r\n\r\nEpic contacted Wlad Marhulets, the solo developer behind Unfold Games, three days after he had revealed Darq\'s Steam release date. \"On July 30 I was contacted by the Epic Store, proposing that I enter into an exclusivity agreement with them instead of releasing Darq on Steam,\" he said in a Medium blog post. \"They made it clear that releasing Darq non-exclusively is not an option. I rejected their offer before we had a chance to talk about money.\" \r\n\r\nDarq came out on Steam this week, and Marhulets said he\'ll \"probably\" make less money selling through Steam than he would if he had accepted Epic\'s deal, which included a minimum revenue guarantee. The idea of \"getting some upfront payment on top of guaranteed revenue sounds great\", but he didn\'t want to break a promise to players who expected to buy the game on Steam, he said. \r\n\r\n\"Turning down the Epic exclusivity offer might have been a foolish decision in the short term, considering the amount of money that might have been involved. When thinking long term, however, this was an easy and obvious decision to make (in my case).\r\n\r\n\"Pulling the game off Steam a few days after Steam release date announcement would forever ruin the credibility of my studio. I would like for my customers to have confidence that my word means something, especially when making announcement as crucial as release date/platform.\"\r\n\r\nHe wanted to give players as many options as possible, he said: he\'s also selling the game through GOG, for example. \"I wish the Epic Store would allow indie games to be sold there non-exclusively, as they do with larger, still unreleased games (Cyberpunk 2077), so players can enjoy what they want: a choice.\"\r\n\r\nMarhulets stressed that \"he\'s not speaking on behalf of other developers\", and that for some studios accepting an Epic exclusivity deal might be the best plan long-term. \"Every indie studio has a unique story and has to deal with a unique set of obstacles. The reasons are mine and mine only. Rejecting such offer happened to be right for my game, but might not be right for other games/studios, as their goals and long-term plans might differ from mine.\"\r\n\r\nEpic Games CEO Tim Sweeney commented on the case on Twitter after Mark Kern, team lead for vanilla World of Warcraft, said it was \"not right\" for Epic to disqualify Darq from the Epic Games Store just because they turned down an exclusivity offer.'),
(5, 'Known Issues - VIP Preview Weekend', 'These are the known issues you may experience in the VIP Preview Weekend build of Remnant: From the Ashes. Our team is aware of these issues and working to resolve them in a future update. Thank you for your patience and understanding. For technical issues, please contact official Arc support.', 'remnant_news1.jpg', '2019-08-15 06:05:38', 2, 'These are the known issues you may experience in the VIP Preview Weekend build of Remnant: From the Ashes. Our team is aware of these issues and working to resolve them in a future update. Thank you for your patience and understanding.\r\n\r\nFor technical issues, please contact official Arc support.\r\n\r\n \r\n\r\nKnown Issues\r\n​Defeating Claviger, Harrow, or Ixillis in multiplayer while the host is dead may not drop a key item.\r\nConsuming multiple Elixir of Enlightenments does not stack the duration.\r\nStaying in one area for an extended period (+2 hours) without zoning can cause slowdown in some cases on Xbox One.\r\nUnlocking one achievement erroneously unlocks multiple achievements.\r\n \r\n\r\n\"Profile does not exist\" & \"Profile is corrupt\"\r\nDisable Cloud Saving\r\n\r\nOpen Steam and navigate to your Steam Library\r\nRight-click on Remnant: From the shes and select Properties\r\nSelect the Updates tab to uncheck the Enable Steam Cloud Synchronization option\r\nClick Close\r\nDelete any local saves, which can be found by browsing to the following windows explorer path:\r\n\r\n%LOCALAPPDATA%\\Remnant\\Saved\r\nDelete the SaveGames folder\r\nWithout re-enabling Cloud Saving, launch the game and complete the tutorial\r\n\r\nRe-enable Cloud Saving, then when prompted to resolve the Steam Cloud Save conflict, make sure to choose the local files\r\n\r\nhttps://support.steampowered.com/kb_article.php?ref=6736-QEIG-8941#conflicts\r\n \r\n\r\nKeep an eye on this post! We\'ll update it with any other issues as we make new developments.'),
(6, 'Community Crunch 194: Genesis, Public Beta, and On The Horizon', 'Last week we introduced a new chapter in the ARK saga: Genesis.  By purchasing the season pass, you obtain a brand new H.L.N.A companion.  Are you enjoying H.L.N.A.\'s company on your adventures?  Genesis will be a brand new experience for old and new players alike.  Check out our live stream if you\'re looking for more details on what to expect! ', 'ark_news1.jpg', '2019-08-12 00:00:00', 1, 'The next big Ark: Survival Evolved expansion is Ark: Genesis, developer Studio Wildcard announced. Genesis will be split into two parts, with part one arriving on PC, PS4, and Xbox One this December, and part two scheduled for winter 2020. Players can pre-purchase the $35 Genesis season pass now to get immediate access to HLN-A (pronounced Helena), a little floating robot companion who acts as a narrator and guide. She\'ll just kind of hover around you for now, but she\'ll play a major role in the expansion\'s story. \r\n\r\nAs technical art director and co-creative director Jesse Rapczak told our friends at PC Gamer, \"instead of just being a sandbox survival experience, Genesis takes that sandbox heritage that comes from the rest of Ark, but wraps it up with some direction on things that you would want to do to get through the story points, and tackle the final boss, and uncover the next chapters of the story we\'re telling.\" HLN-A, the first speaking character in Ark\'s history (unless you count the dino grunts), is a key part of this new direction\r\n\r\nIn addition to HLN-A, Genesis will introduce new biomes to explore, exotic creatures to tame - including a giant sea turtle on which you can build a base, a fire-breathing lizard, and a hangry gremlin thing - and yet more items to craft. It will also add new base-building options, and good luck to them because it\'s going to be hard to follow \'build a base on the back of a giant sea turtle.\' I\'ve been wanting to do that in a video game ever since I saw the Lion Turtle in Avatar: The Last Airbender. \r\n\r\nLast year, we took a deep dive into a secret war that\'s been dominating Ark: Survival Evolved for over two years. \r\n\r\nMORE ABOUT ARK: SURVIVAL EVOLVED');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articleFK` (`articleFK`);

--
-- Indeks for tabel `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks for tabel `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `genremanager`
--
ALTER TABLE `genremanager`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gameFK` (`gameFK`);

--
-- Indeks for tabel `newsposts`
--
ALTER TABLE `newsposts`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tilføj AUTO_INCREMENT i tabel `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tilføj AUTO_INCREMENT i tabel `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tilføj AUTO_INCREMENT i tabel `genremanager`
--
ALTER TABLE `genremanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tilføj AUTO_INCREMENT i tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tilføj AUTO_INCREMENT i tabel `newsposts`
--
ALTER TABLE `newsposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`articleFK`) REFERENCES `newsposts` (`id`);

--
-- Begrænsninger for tabel `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`gameFK`) REFERENCES `games` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
