CREATE DATABASE intel;
USE intel;

-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (arm64)
--
-- Host: localhost    Database: intel
-- ------------------------------------------------------
-- Server version	8.0.29

--
-- Table structure for table `spectrum`
--
-- CREATING TABLES
-- CREATE TABLE `morbius` (
--   `id` int DEFAULT NULL,
--   `name` varchar(255) DEFAULT NULL,
--   `comics` varchar(1000) DEFAULT NULL,
--   `image` varchar(255) DEFAULT NULL,
--   `description` varchar(1000) DEFAULT NULL
-- ); 

-- CREATE TABLE `spectrum` (
--   `id` INTEGER,
--   `name` VARCHAR(255),
--   `comics` varchar(1000),
--   `image` VARCHAR(255),
--   `description` VARCHAR(1000)
-- );

-- CREATE TABLE `thor` (
--   `id` int DEFAULT NULL,
--   `name` varchar(255) DEFAULT NULL,
--   `comics` varchar(1000) DEFAULT NULL,
--   `image` varchar(255) DEFAULT NULL,
--   `description` varchar(1000) DEFAULT NULL
-- );


DROP TABLE IF EXISTS `spectrum`;

CREATE TABLE `spectrum` (
  `id` INTEGER,
  `name` VARCHAR(255),
  `comics` varchar(1000),
  `image` VARCHAR(255),
  `description` VARCHAR(1000)
);

INSERT INTO
  `spectrum`
VALUES
  (
    1010705,
    'Spectrum',
    'The Amazing Spider-Man (2018) #92.1, Avengers (1963) #290, Avengers No Road Home (2019) #7, Avengers No Road Home (2019) #9, Avengers No Road Home (2019) #10, Black Panther (2018) #25, Black Panther by Reginald Hudlin: The Complete Collection Vol. 1 (Trade Paperback), Captain Marvel (2019) #17, Captain Marvel (2019) #35, Captain Marvel (2019) #36, Captain Marvel (2019) #37, Infinity Countdown: Captain Marvel (2018) #1, Marvel\'s Voices: Legacy (2021) #1, Marvel\'s Voices: Legacy (2022) #1, Strikeforce (2019) #1, Strikeforce (2019) #2, Strikeforce (2019) #4, Strikeforce (2019) #7, Strikeforce (2019) #8, Strikeforce (2019) #9, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/9/00/4c0030bee8c86.jpg',
    ''
  ),(
    1010676,
    'Colleen Wing',
    'The Amazing Spider-Man (2018) #78.1, The Amazing Spider-Man (2018) #92.1, Civil War II: Choosing Sides (2016) #5, Daredevil: Shadowland Omnibus (John Cassaday Cover) (Hardcover), Daughters of the Dragon (2006) #1, Daughters of the Dragon (2006) #2, Daughters of the Dragon (2006) #3, Daughters of the Dragon (2006) #4, Daughters of the Dragon (2006) #5, Daughters of the Dragon (2006) #6, Daughters of the Dragon: Deadly Hands Special (2005) #1, Daughters Of The Dragon: Deep Cuts (Trade Paperback), Daughters of the Dragon: Marvel Digital Original (2018) #1, Daughters of the Dragon: Marvel Digital Original (2018) #2, Daughters of the Dragon: Marvel Digital Original (2018) #3, Deadly Hands of Kung Fu (2014) #1, Deadly Hands of Kung Fu (2014) #2, Deadly Hands of Kung Fu (2014) #3, Deadly Hands of Kung Fu (2014) #4, Deadly Hands of Kung Fu (1974) #32, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/8/e0/52740e24bddb4.jpg',
    'Colleen Wing was raised in Japan by her grandfather Kanji Ozawa, who taught her the ways of a samurai, in which she became highly skilled, after which she teamed up with Misty Knight at the behest of Tony Stark as a new Heroes for Hire tasked with capturing superhumans who have not registered.'
  ),(
    1010682,
    'Misty Knight',
    'Absolute Carnage: Lethal Protectors (2019) #1, Absolute Carnage: Lethal Protectors (2019) #2, Absolute Carnage: Lethal Protectors (2019) #3, The Amazing Spider-Man (2018) #78.1, The Amazing Spider-Man (2018) #92.1, Barnes & Noble Black Panther: Who Is the Black Panther? (Trade Paperback), Black Panther (2016) #7, Black Panther (2016) #8, Black Panther (2018) #24, Black Panther (2018) #25, Black Panther and the Crew (2017) #1, Black Panther and the Crew (2017) #2, Black Panther and the Crew (2017) #3, Black Panther and the Crew (2017) #5, Black Panther and the Crew (2017) #6, Black Panther and the Crew: We Are the Streets (Trade Paperback), Cage! (2016) #3, Captain America (2018) #11, Captain America (2018) #16, Captain America (2018) #22, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/d/90/511151789a863.jpg',
    ''
  ),(
    1009454,
    'Morbius',
    'Absolute Carnage: Lethal Protectors (2019) #3, Adventure Into Fear (1970) #20, Adventure Into Fear (1970) #21, Adventure Into Fear (1970) #22, Adventure Into Fear (1970) #23, Adventure Into Fear (1970) #24, Adventure Into Fear (1970) #25, Adventure Into Fear (1970) #26, Adventure Into Fear (1970) #27, Adventure Into Fear (1970) #28, Adventure Into Fear (1970) #29, Adventure Into Fear (1970) #30, Adventure Into Fear (1970) #31, The Amazing Spider-Man (1963) #379, The Amazing Spider-Man (1963) #380, Amazing Spider-Man (1999) #622, Amazing Spider-Man (1999) #679.1, Amazing Spider-Man (1999) #688, Amazing Spider-Man (1999) #689, Amazing Spider-Man (1999) #690, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/b/c0/535fee11e0e1a.jpg',
    ''
  ),(
    1014858,
    'Spider-Man (Ben Reilly)',
    'Spider-Man: 101 Ways to End the Clone Saga (1997) #1, The Amazing Spider-Man (2018) #78.1, The Amazing Spider-Man (2018) #92.1, Ben Reilly: Spider-Man (2022) #1, Ben Reilly: Spider-Man (2022) #2, Ben Reilly: Spider-Man (2022) #3, Ben Reilly: Spider-Man (2022) #4, Death of Doctor Strange: Spider-Man (2021) #1, Devils Reign (2021) #1, Devils Reign (2021) #2, Devils Reign (2021) #3, Devils Reign: Spider-Man (2022) #1, Spider-Man (1990) #72, Spider-Man by Todd Dezago & Mike Wieringo Vol. 1 (Trade Paperback), Spider-Man Unlimited (1993) #11, Spider-Man Unlimited (1993) #12, Spider-Man Unlimited (1993) #13, Spider-Man Unlimited (1993) #14, Spider-Man: Ben Reilly Omnibus Vol. 1 (Hardcover), Spider-Man: Clone Saga Omnibus Vol. 2 (Hardcover), ',
    'http://i.annihil.us/u/prod/marvel/i/mg/9/c0/5317717bed6fe.jpg',
    ''
  ),(
    1009610,
    'Spider-Man (Peter Parker)',
    'Spider-Man: 101 Ways to End the Clone Saga (1997) #1, 2099 Alpha (2019) #1, A YEAR OF MARVELS TPB (Trade Paperback), A Year of Marvels: April Infinite Comic (2016) #1, A Year of Marvels: February Infinite Comic (2016) #1, A+X (2012) #4, Absolute Carnage (2019) #1, Absolute Carnage (2019) #2, Absolute Carnage (2019) #5, Absolute Carnage: Symbiote Spider-Man (2019) #1, Actor Presents Spider-Man and the Incredible Hulk (2003) #1, Adventures of Spider-Man (1996) #1, Adventures of Spider-Man (1996) #2, Adventures of Spider-Man (1996) #3, Adventures of Spider-Man (1996) #4, Adventures of Spider-Man (1996) #5, Adventures of Spider-Man (1996) #6, Adventures of Spider-Man (1996) #7, Adventures of Spider-Man (1996) #8, Adventures of Spider-Man (1996) #9, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/3/50/526548a343e4b.jpg',
    'Bitten by a radioactive spider, high school student Peter Parker gained the speed, strength and powers of a spider. Adopting the name Spider-Man, Peter hoped to start a career using his new abilities. Taught that with great power comes great responsibility, Spidey has vowed to use his powers to help people.'
  ),(
    1009165,
    'Avengers',
    'Absolute Carnage: Avengers (2019) #1, Acts of Vengeance: Avengers (Trade Paperback), Age of Apocalypse (2011) #2 (Avengers Art Appreciation Variant), Age of Heroes (2010) #1, Age of Heroes (2010) #2, Age of Heroes (2010) #3, Age of Heroes (2010) #4, Age of Ultron (2013) #3, Age of Ultron (2013) #4, Age of Ultron (2013) #5, Age of Ultron (2013) #6, Age of Ultron (2013) #7, Age of Ultron (2013) #8, Age of Ultron (2013) #9, Age of Ultron (2013) #10, Age of X: Universe (2011) #1, Age of X: Universe (2011) #2, Alias (2001) #4, Alias Omnibus (Hardcover), All-New X-Men (2012) #8, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/9/20/5102c774ebae7.jpg',
    'Earths Mightiest Heroes joined forces to take on threats that were too big for any one hero to tackle. With a roster that has included Captain America, Iron Man, Ant-Man, Hulk, Thor, Wasp and dozens more over the years, the Avengers have come to be regarded as Earths No. 1 team.'
  ),(
    1011809,
    'Black Knight (Dane Whitman)',
    'Avengers (1963) #48, Avengers (1963) #54, Avengers (1963) #55, Avengers (1963) #61, Avengers (1963) #62, Avengers (1963) #71, Avengers (1963) #84, Avengers (1963) #85, Avengers (1963) #100, Avengers (1963) #225, Avengers (1963) #267, Avengers (1963) #271, Avengers (1963) #281, Avengers (1963) #282, Avengers (1963) #283, Avengers (1963) #284, Avengers (1963) #285, Avengers (1963) #286, Avengers (1963) #287, Avengers (1963) #288, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/c/d0/4ce5a883e8df0.gif',
    'Nephew of the villainous Black Knight that went by the name of Nathan Garrett, Dane was summoned by his uncle when he was mortally wounded following a battle with Iron Man.'
  ),(
    1009220,
    'Captain America',
    'A+X (2012) #1, A+X (2012) #4, A+X (2012) #9, A-Next (1998) #2, A-Next (1998) #3, A-Next (1998) #4, A-Next (1998) #5, A-Next (1998) #6, A-Next (1998) #7, A-Next (1998) #8, A-Next (1998) #9, A-Next (1998) #10, A-Next (1998) #11, A-Next (1998) #12, Adventures of Captain America (1991) #1, Adventures of Captain America (1991) #2, Adventures of Captain America (1991) #3, Adventures of Captain America (1991) #4, Age of Apocalypse (2011) #2 (Avengers Art Appreciation Variant), Age of Heroes (2010) #1, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/3/50/537ba56d31087.jpg',
    'Vowing to serve his country any way he could, young Steve Rogers took the super soldier serum to become Americas one-man army. Fighting for the red, white and blue for over 60 years, Captain America is the living, breathing symbol of freedom and liberty.'
  ),(
    1011095,
    'Captain Marvel (Monica Rambeau)',
    'Amazing Spider-Man Annual (1964) #16, Avengers (1963) #227, Avengers (1963) #232, Avengers (1963) #238, Avengers (1963) #240, Avengers (1963) #245, Avengers (1963) #271, Avengers (1963) #283, Avengers (1963) #284, Avengers (1963) #285, Avengers (1963) #286, Avengers (1963) #287, Avengers (1963) #288, Avengers (1963) #290, Avengers (1963) #291, Avengers (1963) #292, Avengers (1963) #293, Avengers (1963) #294, Avengers Annual (1967) #14, Avengers Annual (1967) #16, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/9/00/4c0030bee8c86.jpg',
    ''
  ),(
    1009583,
    'She-Hulk (Jennifer Walters)',
    'Marvel New Years Eve Special Infinite Comic (2017) #1, A-Force (2016) #6, A-Force (2016) #7, A-Force (2016) #8, A-Force (2016) #10, Adam: Legend of the Blue Marvel (2008) #1, Age of Ultron (2013) #3, Age of Ultron (2013) #4, All-New Savage She-Hulk (2009) #1, All-New Savage She-Hulk (2009) #2, All-New Savage She-Hulk (2009) #3, All-New, All-Different Avengers Annual (2016) #1, Alpha Flight (1983) #61, Alpha Flight (1983) #111, Alpha Flight (1983) #127, Atlantis Attacks (2011) #1, Atlantis Attacks (DM Only) (2011), Atlantis Attacks: The Original Epic (Trade Paperback), Avengers (2018) #1, Avengers (1998) #1, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/7/20/527bb5d64599e.jpg',
    'Seriously wounded, young lawyer Jennifer Walters was given a blood transfusion by her cousin Bruce Banner. Usually in better control of her powers and temper than the Hulk, She-Hulk has been a high profile New York lawyer as well as an upstanding member of both the Avengers and Fantastic Four.'
  ),(
    1010791,
    'Sub-Mariner',
    'All Winners Comics 70th Anniversary Special (2009) #1, All-Winners Comics (1941) #1, All-Winners Comics (1941) #2, All-Winners Comics (1941) #3, All-Winners Comics (1941) #4, All-Winners Comics (1941) #5, All-Winners Comics (1941) #6, All-Winners Comics (1941) #7, All-Winners Comics (1941) #8, All-Winners Comics (1941) #9, All-Winners Comics (1941) #10, All-Winners Comics (1941) #11, All-Winners Comics (1941) #12, All-Winners Comics (1941) #13, All-Winners Comics (1941) #14, All-Winners Squad: Band of Heroes (2011) #4, Alpha Flight (1983) #39, Avengers (1998) #1, Avengers (1998) #2, Avengers (1998) #3, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/3/b0/5245ef8c83126.jpg',
    'Prince Namor is the half-human/half-Atlantean ruler of Atlantis.'
  ),(
    1011022,
    'Super-Adaptoid',
    'Avengers (1996) #9, Avengers (1963) #290, Avengers: Earths Mightiest Heroes II (2006) #3, Avengers: Earths Mightiest Heroes II (2006) #7, Avengers: Earths Mightiest Heroes II (2006) #8, Heroes Reborn: Avengers (Trade Paperback), Iron Man (1968) #51, Marvel Masterworks: The X-Men Vol. 3 DM Variant TPB (Trade Paperback), Marvel Masterworks: The X-Men Vol. 3 TPB (Trade Paperback), Uncanny X-Men (1963) #77, Uncanny X-Men (1963) #29, X-Men (2010) #39, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/5/e0/4c00325af279c.jpg',
    'The Super-Adaptoid was created by the organization known as A.I.M. using a piece of the Cosmic Cube.'
  ),(
    1009562,
    'Scarlet Witch',
    'A+X (2012) #10, Alpha Flight (1983) #111, Astonishing X-Men (2004) #51 (Create Your Own Wedding Variant), Atlantis Attacks: The Original Epic (Trade Paperback), Avengers (1996) #1, Avengers (1998) #1, Avengers (1996) #2, Avengers (1998) #2, Avengers (1996) #3, Avengers (1998) #3, Avengers (2016) #3.1, Avengers (1998) #4, Avengers (1996) #4, Avengers (1998) #5, Avengers (1998) #6, Avengers (1998) #7, Avengers (1996) #7, Avengers (1998) #8, Avengers (1996) #8, Avengers (1998) #9, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/6/70/5261a7d7c394b.jpg',
    ''
  ),(
    1009343,
    'Hercules',
    'Alpha Flight (1983) #110, Assault on New Olympus Prologue One-Shot (2009) #1, Astonishing X-Men (2004) #60, Avengers (2016) #1, Avengers (1998) #1, Avengers (1998) #2, Avengers (1998) #3, Avengers (1998) #4, Avengers (2016) #8, Avengers (1963) #10, Avengers (2016) #11, Avengers (1998) #25, Avengers (1998) #27, Avengers (1963) #38, Avengers (1963) #39, Avengers (1963) #40, Avengers (1963) #42, Avengers (1963) #43, Avengers (1963) #44, Avengers (1998) #44, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/b/d0/52052ebddfa53.jpg',
    ''
  ),(
    1009697,
    'Vision',
    'Age of Ultron (2013) #4, All-New, All-Different Avengers (2015) #10, All-New, All-Different Avengers (2015) #11, All-New, All-Different Avengers (2015) #12, All-New, All-Different Avengers (2015) #13, ALL-NEW, ALL-DIFFERENT AVENGERS HC (Hardcover), Alpha Flight (1983) #127, Avengers (1996) #1, Avengers (2016) #1, Avengers (2010) #1, Avengers (1998) #1, Avengers (2010) #1 (ROMITA JR. VARIANT), Avengers (2010) #1 (DJURDJEVIC VARIANT), Avengers (2010) #1 (ROMITA SR. VARIANT), Avengers (2010) #1 (I AM AN AVENGER BLANK COVER VARIANT), Avengers (2010) #1 (HEROIC AGE VARIANT), Avengers (1998) #2, Avengers (1996) #2, Avengers (1998) #3, Avengers (1996) #3, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/9/d0/5111527040594.jpg',
    'The metal monstrosity called Ultron created the synthetic humanoid known as the Vision from the remains of the original android Human Torch of the 1940s to serve as a vehicle of vengeance against the Avengers.'
  ),(
    1009338,
    'Hawkeye',
    'A+X (2012) #3, A+X (2012) #8, All-New Hawkeye (2015) #1, All-New Hawkeye (2015) #2, All-New Hawkeye (2015) #3, All-New Hawkeye (2015) #4, All-New Hawkeye (2015) #5, Amazing Spider-Man (1999) #666, Amazing Spider-Man (1999) #667, Amazing Spider-Man (1999) #668, Amazing Spider-Man (1999) #670, Annihilators: Earthfall (2011) #2, Ant-Man and the Wasp Adventures (Digest), Avengers (2010) #1, Avengers (2010) #1 (DJURDJEVIC VARIANT), Avengers (2010) #1 (ROMITA SR. VARIANT), Avengers (2010) #1 (I AM AN AVENGER BLANK COVER VARIANT), Avengers (2010) #1 (HEROIC AGE VARIANT), Avengers (2010) #1 (ROMITA JR. VARIANT), Avengers (2010) #2, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/e/90/50fecaf4f101b.jpg',
    ''
  ),(
    1011515,
    'Zeus',
    'Avengers (1963) #50, Avengers (1963) #283, Avengers (1963) #284, Avengers (1963) #285, Avengers No Road Home (2019) #1, Avengers No Road Home (2019) #2, Avengers No Road Home (2019) #4, Avengers No Road Home (2019) #10, Guardians of the Galaxy (2020) #1, Guardians of the Galaxy (2020) #2, Guardians of the Galaxy (2020) #9, Guardians of the Galaxy (2020) #10, Guardians of the Galaxy (2020) #11, Guardians of the Galaxy (2020) #12, Herc (2010) #6.1, Herc (2010) #9, Herc (2010) #10, Hercules: Prince of Power (1982) #2, Hercules: Prince of Power (1982) #4, Hercules: Prince of Power (1982) #1, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/f/60/4ce5a7fcaa386.png',
    'Zeus ruled a peaceful Olympus for centuries while he and his siblings populated the realm through interbreeding with humans, extradimensionals, Titans, and whatever else caught their fancy.'
  ),(
    1009187,
    'Black Panther',
    'A+X (2012) #3, AGE OF HEROES TPB (Trade Paperback), Amazing Spider-Man Annual (1964) #15, Amazing Spider-Man Annual (1964) #25, Astonishing Tales (1970) #6, Astonishing X-Men (2004) #51 (Create Your Own Wedding Variant), Avengers (2018) #1, Avengers (1998) #1, Avengers (2018) #2, Avengers (1998) #2, Avengers (1998) #3, Avengers (1998) #4, Avengers (2018) #6, Avengers (2018) #12, Avengers (1998) #19, Avengers (1998) #20, Avengers (1998) #21, Avengers (1998) #22, Avengers (1998) #23, Avengers (2018) #36, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/6/60/5261a80a67e7d.jpg',
    ''
  ),(
    1017838,
    'Black Panther (Shuri)',
    'Black Panther (2009) #1, Black Panther (2009) #2, Black Panther (2021) #4, Black Panther (2021) #5, Black Panther (2016) #9, Black Panther (2016) #10, Black Panther (2016) #11, Black Panther (2018) #15, Black Panther (2016) #15, Black Panther (2018) #24, Black Panther (2018) #25, Black Panther (2016) #170, Black Panther by Reginald Hudlin: The Complete Collection Vol. 3 (Trade Paperback), BLACK PANTHER VOL. 1: A NATION UNDER OUR FEET HC (Hardcover), Black Panther: Shuri - The Deadliest of the Species (Trade Paperback), King In Black: Black Panther  (2021) #1, Klaws of the Panther (2010) #1, Klaws of the Panther (2010) #2, Klaws of the Panther (2010) #3, Klaws of the Panther (2010) #4, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg',
    ''
  ),(
    1011289,
    'Killmonger',
    'Black Panther (2018) #19, Black Panther (2018) #24, Black Panther (2018) #25, Black Panther (2005) #36, Black Panther (2005) #37, Black Panther (2005) #38, Black Panther: Killmonger - By Any Means (Trade Paperback), Iron Man Annual (1976) #5, Jungle Action (1972) #6, Jungle Action (1972) #7, Jungle Action (1972) #8, Jungle Action (1972) #12, Jungle Action (1972) #13, Jungle Action (1972) #14, Jungle Action (1972) #15, Jungle Action (1972) #16, Jungle Action (1972) #17, Jungle Action (1972) #18, Killmonger (2018) #1, Killmonger (2018) #2, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg',
    ''
  ),(
    1009629,
    'Storm',
    'Age of Apocalypse: The Chosen (1995) #1, A+X (2012) #3, Age of X: Alpha (2010) #1, Alpha Flight (1983) #17, Alpha Flight (1983) #33, Alpha Flight (1983) #61, Alpha Flight (1983) #127, Astonishing X-Men (2004) #25, Astonishing X-Men (2004) #26, Astonishing X-Men (2004) #27, Astonishing X-Men (2004) #28, Astonishing X-Men (2004) #29, Astonishing X-Men (2004) #30, Astonishing X-Men (2004) #32, Astonishing X-Men (2004) #33, Astonishing X-Men (2004) #34, Astonishing X-Men (2004) #35, Astonishing X-Men (2004) #38, Astonishing X-Men (2004) #40, Astonishing X-Men (2004) #44, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/6/40/526963dad214d.jpg',
    'Ororo Monroe is the descendant of an ancient line of African priestesses, all of whom have white hair, blue eyes, and the potential to wield magic.'
  ),(
    1017834,
    'War Machine (James Rhodes)',
    '2020 Force Works (2020) #1, 2020 Force Works (2020) #2, 2020 Force Works (2020) #3, Avengers Vs. Pet Avengers (2010) #2, West Coast Avengers (1985) #94, Avengers: The Initiative (2007) #2, Avengers: The Initiative (2007) #4, Avengers: The Initiative (2007) #7, Avengers: The Initiative (2007) #12, Avengers: The Initiative (2007) #13, Avengers: The Initiative (2007) #15, Avengers: The Initiative (2007) #16, Black Panther (2018) #25, Captain Marvel (2019) #20, Captain Marvel (2019) #26, Captain Marvel (2019) #31, Captain Marvel (2019) #35, Captain Marvel (2019) #36, Dark Reign: New Nation (2008) #1, Force Works (1994) #12, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg',
    '<span style=\"color: #333333; font-family: &amp;amp;amp; font-size: 14.4px; letter-spacing: normal; line-height: normal; background-color: #eeeeee;\">U.S. Air Force pilot and Tony Starks friend who has his own suit of Iron Man armor, nicknamed, \"War Machine.\"</span>'
  ),(
    1009191,
    'Blade',
    'Avengers (2018) #16, Avengers (2018) #45, Avengers (2018) #49, Avengers (2018) #50, Avengers (2018) #51, Avengers (2018) #52, Black Panther (2005) #12, Black Panther by Reginald Hudlin: The Complete Collection Vol. 1 (Trade Paperback), Black Panther: Bad Mutha (Trade Paperback), Blade (2006) #1, Blade (1998) #1, Blade (2006) #2, Blade (1998) #2, Blade (2006) #3, Blade (1998) #3, Blade (2006) #4, Blade (2006) #5, Blade (2006) #5 (Bloody Variant), Blade (2006) #6, Blade (2006) #7, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/8/a0/523ca6f2b11e4.jpg',
    ''
  ),(
    1011090,
    'Brother Voodoo',
    'Black Panther by Reginald Hudlin: The Complete Collection Vol. 1 (Trade Paperback), Doctor Strange: Damnation (2018) #3, Heroes for Hire (1997) #13, Marvel Team-Up (1972) #24, New Avengers (2004) #30, New Avengers (2010) #32, Tomb of Dracula (1972) #35, Uncanny Avengers (2015) #20, Werewolf By Night (1972) #39, Werewolf By Night (1972) #40, Werewolf by Night: The Complete Collection Vol. 3 (Trade Paperback), ',
    'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg',
    ''
  ),(
    1009215,
    'Luke Cage',
    'Age of Ultron (2013) #3, Age of Ultron (2013) #4, Alias (2001) #1, Alias (2001) #2, Alias (2001) #3, Alias (2001) #15, Alias Omnibus (Hardcover), Amazing Spider-Man (1999) #519, Amazing Spider-Man (1999) #520, Amazing Spider-Man (1999) #522, Amazing Spider-Man (1999) #523, Amazing Spider-Man (1999) #601, Amazing Spider-Man (1999) #653, Amazing Spider-Man (1999) #654, Amazing Spider-Man (1999) #654 (2nd Printing Variant), Amazing Spider-Man (1999) #666, Amazing Spider-Man (1999) #667, Amazing Spider-Man (1999) #669 (Architect Variant), Amazing Spider-Man (1999) #669 (Slott Variant), Amazing Spider-Man Annual (1964) #39, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/6/a0/5112d8b6e596c.jpg',
    ''
  ),(
    1009726,
    'X-Men',
    'Age of Apocalypse: The Chosen (1995) #1, 1602 (2003) #1, 1602 (2003) #2, 1602 (2003) #3, 1602 (2003) #4, Adventures of the X-Men (1996) #3, Adventures of the X-Men (1996) #7, Adventures of the X-Men (1996) #8, Adventures of the X-Men (1996) #9, Adventures of the X-Men (1996) #10, Adventures of the X-Men (1996) #11, Adventures of the X-Men (1996) #12, Adventures Of The X-Men: Clear And Present Dangers (Trade Paperback), Adventures Of The X-Men: Rites Of Passage (Trade Paperback), Age of Apocalypse (2011) #2, Age of X-Man Alpha (2019) #1, Age Of X-Man Omega (2019) #1, Age of X-Man: Apocalypse & the X-Tracts (2019) #1, Age of X-Man: Apocalypse & the X-Tracts (2019) #2, Age of X-Man: Apocalypse & the X-Tracts (2019) #3, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/8/03/510c08f345938.jpg',
    'Feared and hated by humans because theyre different, the X-Men are heroic mutants, individuals born with special powers whove sworn to use their gifts to protect mutants as well as humans.'
  ),(
    1010338,
    'Captain Marvel (Carol Danvers)',
    'Marvel New Years Eve Special Infinite Comic (2017) #1, A+X (2012) #6, A-Force (2016) #6, A-Force (2016) #7, A-Force (2016) #8, A-Force (2016) #9, A-Force (2016) #10, Absolute Carnage: Captain Marvel (2019) #1, Adam: Legend of the Blue Marvel (2008) #1, Adam: Legend of the Blue Marvel (2008) #5, Agents of Atlas (2009) #5 (MCGUINNESS VARIANT), Alias (2001) #3, Alias (2001) #6, Alias Omnibus (Hardcover), All-New, All-Different Avengers Annual (2016) #1, Alpha Flight (1983) #10, Amazing Spider-Man (1999) #533, Amazing Spider-Man (1999) #653, Amazing Spider-Man (1999) #654, Amazing Spider-Man (1999) #654 (2nd Printing Variant), ',
    'http://i.annihil.us/u/prod/marvel/i/mg/6/80/5269608c1be7a.jpg',
    ''
  ),(
    1010667,
    'Jessica Drew',
    'Age of X: Universe (2011) #1, Age of X: Universe (2011) #2, Captain Marvel (2019) #17, Spider-Woman (2009) #1, Spider-Woman (2009) #2, Spider-Woman (2009) #3, Spider-Woman (2009) #4, Spider-Woman (2009) #5, Spider-Woman (2009) #6, Spider-Woman: Agent of S.W.O.R.D. with Motion Comic DVD (Hardcover), The Amazing Spider-Man (1963) #409, The Amazing Spider-Man (1963) #411, The Amazing Spider-Man (1963) #414, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg',
    ''
  ),(
    1009718,
    'Wolverine',
    '5 Ronin (Hardcover), 5 Ronin (2010) #1, 5 Ronin (2010) #1 (Variant), A+X (2012) #1, A+X (2012) #4, A+X (2012) #6, A+X (2012) #9, Acts Of Evil (Trade Paperback), ACTS OF VENGEANCE CROSSOVERS OMNIBUS (Hardcover), ACTS OF VENGEANCE CROSSOVERS OMNIBUS (DM Only) (Hardcover), Age of X: Alpha (2010) #1, Agents of Atlas (2009) #3 (Wolverine Art Appreciation Variant), Agents of Atlas (2009) #5, Agents of Atlas (2009) #5 (MCGUINNESS VARIANT), Agents of Atlas: The Complete Collection Vol. 1 (Trade Paperback), All-New Wolverine Vol. 5: Orphans of X (Trade Paperback), All-New X-Men (2012) #2, Alpha Flight (1983) #3, Alpha Flight (2011) #7, Alpha Flight (1983) #13, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/2/60/537bcaef0f6cf.jpg',
    'Born with super-human senses and the power to heal from almost any wound, Wolverine was captured by a secret Canadian organization and given an unbreakable skeleton and claws. Treated like an animal, it took years for him to control himself. Now, hes a premiere member of both the X-Men and the Avengers.'
  ),(
    1011097,
    'Captain Marvel (Phyla-Vell)',
    'Captain Marvel (2002) #16, Captain Marvel (2002) #17, Captain Marvel (2002) #18, Captain Marvel (2002) #19, Captain Marvel (2002) #20, Captain Marvel (2002) #21, Captain Marvel (2002) #22, Captain Marvel (2002) #23, Captain Marvel (2002) #24, Captain Marvel (2002) #25, Captain Marvel (2019) #32, Captain Marvel (2019) #34, Captain Marvel (2019) #35, Captain Marvel (2019) #36, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/5/a0/4c0030bc4629e.jpg',
    ''
  ),(
    1017577,
    'Ms. Marvel (Kamala Khan)',
    'Ms. Marvel: Garden State of Mind (2018), All-New, All-Different Avengers (2015) #10, All-New, All-Different Avengers (2015) #11, All-New, All-Different Avengers (2015) #12, All-New, All-Different Avengers Annual (2016) #1, ALL-NEW, ALL-DIFFERENT AVENGERS HC (Hardcover), Avengers (2016) #674, Avengers: Back to Basics (2018) #6, Avengers: Back to Basics (Trade Paperback), Captain Marvel (2019) #33, Captain Marvel (2019) #35, Captain Marvel: Marvels Snapshots (2021) #1, Champions (2020) #1, Champions (2016) #1, Champions (2019) #1, Champions (2019) #2, Champions (2020) #2, Champions (2016) #2, Champions (2019) #3, Champions (2020) #3, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/5/b0/548730dac2a40.jpg',
    'A Muslim-American teenager growing up in Jersey City, Kamala Khan gained shape-shifting powers when Inhumanity spread over the Earth. A fan of super heroes, in particular Carol Danvers, Kamala took up Captain Marvels former identity, becoming the new Ms. Marvel. This up and coming hero works to protect her community and understand her place in the world.'
  ),(
    1009608,
    'Spider-Woman (Jessica Drew)',
    'A+X (2012) #8, Alias (2001) #1, Alias (2001) #2, Alias (2001) #3, Alias Omnibus (Hardcover), Amazing Spider-Man (1999) #519, Amazing Spider-Man (1999) #520, Amazing Spider-Man (1999) #522, Amazing Spider-Man (1999) #523, Amazing Spider-Man (1999) #538, Amazing Spider-Man (1999) #666, Amazing Spider-Man (1999) #667, Amazing Spider-Man (1999) #668, Amazing Spider-Man Annual (1964) #39, AMAZING SPIDER-MAN VOL. 10: NEW AVENGERS TPB (Trade Paperback), Amazing Spider-Man: The Sins of Norman Osborn (2020) #1, Avengers (2010) #1, Avengers (2010) #1 (ROMITA JR. VARIANT), Avengers (2010) #1 (DJURDJEVIC VARIANT), Avengers (2010) #1 (ROMITA SR. VARIANT), ',
    'http://i.annihil.us/u/prod/marvel/i/mg/b/50/5265479097743.jpg',
    'When young Jessica Drew suffered uranium poisoning in 1931, her father was forced to inject her with his untested spider serum and seal her in a genetic accelerator.'
  ),(
    1009224,
    'Captain Marvel (Mar-Vell)',
    'Avengers Assemble Vol. 4 (Hardcover), Avengers Epic Collection: The Avengers/Defenders War (Trade Paperback), Avengers Forever (1998) #1, Avengers Forever (1998) #2, Avengers Forever (1998) #3, Avengers Forever (1998) #4, Avengers Forever (1998) #5, Avengers Forever (1998) #6, Avengers Forever (1998) #7, Avengers Forever (1998) #8, Avengers Forever (1998) #9, Avengers Forever (1998) #10, Avengers Forever (1998) #11, Avengers Forever (1998) #12, Avengers Legends Vol. I: Avengers Forever (Trade Paperback), AVENGERS: THE COMPLETE CELESTIAL MADONNA SAGA TPB (Trade Paperback), Captain America (1998) #16, Captain Marvel (1968) #1, Captain Marvel (2008) #1, Captain Marvel (1968) #2, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/f/60/526032048d1a1.jpg',
    ''
  ),(
    1009277,
    'Domino',
    'A+X (2012) #10, Cable (1993) #4, Cable (1993) #6, Cable (1993) #7, Cable (2020) #8, Cable (1993) #8, Cable (2008) #13, Cable (2008) #13 (MW, 50/50 Variant), Cable (2008) #14, Cable (2008) #14 (MW, 50/50 Variant), Cable (2008) #15, Cable (1993) #15, Cable (2008) #15 (MW, 50/50 Variant), Cable (1993) #17, Cable (1993) #18, Cable (1993) #21, Cable (1993) #23, Cable (1993) #24, Cable (1993) #25, Cable (1993) #26, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/f/60/526031dc10516.jpg',
    ''
  ),(
    1017831,
    'Ironheart (Riri Williams)',
    '2020 Ironheart (2020) #1, 2020 Ironheart (2020) #2, All-New Wolverine (2015) #21, Black Panther (2018) #24, Champions (2020) #2, Champions (2019) #3, Champions (2020) #3, Champions (2020) #4, Champions (2020) #5, Champions (2020) #6, Champions (2019) #6, Champions (2020) #7, Champions (2019) #8, Champions (2020) #8, Champions (2019) #9, Champions (2020) #9, Champions (2020) #10, Champions (2019) #10, Champions (2016) #11, Champions (2016) #16, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg',
    ''
  ),(
    1009381,
    'Jubilee',
    'A-Next (1998) #2, A-Next (1998) #3, A-Next (1998) #4, A-Next (1998) #5, A-Next (1998) #6, A-Next (1998) #7, A-Next (1998) #8, A-Next (1998) #9, A-Next (1998) #10, A-Next (1998) #11, A-Next (1998) #12, Age of X: Alpha (2010) #1, Astonishing X-Men (2004) #66, Astonishing X-Men (2004) #67, CLANDESTINE CLASSIC PREMIERE HC (Hardcover), Decimation: Generation M (Trade Paperback), Excalibur (2019) #1, Excalibur (2019) #3, Excalibur (2019) #4, Excalibur (2019) #6, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/6/c0/4e7a2148b6e59.jpg',
    ''
  ),(
    1017824,
    'Ms. America (America Chavez)',
    'America (2017) #1, America (2017) #2, America (2017) #3, America (2017) #4, America (2017) #5, America (2017) #6, America (2017) #7, America (2017) #8, America (2017) #9, America (2017) #10, America (2017) #11, America (2017) #12, America Chavez: Made In The USA (Trade Paperback), America Chavez: Made in the USA (2021) #1, America Chavez: Made in the USA (2021) #2, America Chavez: Made in the USA (2021) #3, America Chavez: Made in the USA (2021) #4, America Chavez: Made in the USA (2021) #5, America Vol. 2: Fast and Fuertona (Trade Paperback), Free Comic Book Day 2022: Marvels Voices (2022) #1, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg',
    ''
  ),(
    1016181,
    'Spider-Man (Miles Morales)',
    'Marvel New Years Eve Special Infinite Comic (2017) #1, Absolute Carnage (2019) #2, Absolute Carnage: Miles Morales (2019) #1, Absolute Carnage: Miles Morales (2019) #2, Absolute Carnage: Miles Morales (2019) #3, All-New Ultimates (2014) #11, All-New Ultimates (2014) #12, All-New, All-Different Avengers (2015) #1, All-New, All-Different Avengers (2015) #2, All-New, All-Different Avengers (2015) #3, All-New, All-Different Avengers (2015) #4, All-New, All-Different Avengers (2015) #5, All-New, All-Different Avengers (2015) #6, All-New, All-Different Avengers (2015) #7, All-New, All-Different Avengers (2015) #8, All-New, All-Different Avengers (2015) #9, All-New, All-Different Avengers (2015) #10, All-New, All-Different Avengers (2015) #11, All-New, All-Different Avengers (2015) #12, All-New, All-Different Avengers Annual (2016) #1, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/f/50/537bcfa1eed73.jpg',
    'Teenager Miles Morales grew up in Brooklyn, New York. Recently, Miles took on the controversial and pressured role of Spider-Man shortly after the death of the original. Morales made his debut against The Kangaroo, much to the surprise and disapproval of many present at the confrontation.'
  ),(
    1009182,
    'Bishop',
    'Age of Apocalypse: The Chosen (1995) #1, Astonishing X-Men (2017) #1, Astonishing X-Men (2017) #2, Astonishing X-Men (2017) #4, Astonishing X-Men (2017) #5, Astonishing X-Men (2017) #6, Astonishing X-Men (2017) #7, Astonishing X-Men (2017) #8, Astonishing X-Men (2017) #9, Astonishing X-Men (2017) #12, Astonishing X-Men by Charles Soule Vol. 1: Life of X (Trade Paperback), Avengers Assemble Vol. 4 (Hardcover), Bishop (1994) #1, Bishop: The Last X-Man (1999) #1, Bishop: The Last X-Man (1999) #3, Bishop: The Last X-Man (1999) #4, Bishop: The Last X-Man (1999) #5, Bishop: The Last X-Man (1999) #6, Bishop: The Last X-Man (1999) #7, Bishop: The Last X-Man (1999) #8, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/3/70/52602f4b42d98.jpg',
    ''
  ),(
    1017575,
    'Captain America (Sam Wilson)',
    'All-New, All-Different Avengers (2015) #10, All-New, All-Different Avengers (2015) #11, All-New, All-Different Avengers (2015) #12, ALL-NEW, ALL-DIFFERENT AVENGERS HC (Hardcover), Avengers (2016) #1, Avengers (2016) #8, Avengers (2016) #11, Avengers: Standoff (Trade Paperback), Avengers: Unleashed Vol. 1 - Kang War One (Trade Paperback), AVENGERS: UNLEASHED VOL. 2 - SECRET EMPIRE TPB (Trade Paperback), Black Panther: The Most Dangerous Man Alive  (2010) #527, Captain America (2018), Captain America (2018) #22, Captain America (2018) #25, Captain America Special (2015) #1, Captain America: Sam Wilson (2015) #10, Captain America: Sam Wilson (2015) #11, Captain America: Sam Wilson (2015) #12, Captain America: Sam Wilson (2015) #13, Captain America: Sam Wilson (2015) #14, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/c/80/545a84a75ddaf.jpg',
    '<p class=\"Body\">Sam Wilson, a Harlem native, previously operated under the name Falcon, fighting alongside the Avengers. When his longtime friend Steve Rogers stepped down as Captain America, Wilson was hand-picked to fill the role. Now the former Falcon soars through the skies wearing red, white and blue.</p>'
  ),(
    1017814,
    'Moon Girl (Lunella Layfayette)',
    'Champions (2020) #1, Champions (2016) #16, Deadpool Classic Vol. 22: Murder Most Fowl (Trade Paperback), Deadpool Kills the Marvel Universe Again (2017) #4, Extraordinary X-Men Annual (2016) #1, Free Comic Book Day 2022: Marvel\'s Voices (2022) #1, Moon Girl and Devil Dinosaur Infinity Comic Primer (2021) #1, Marvel\'s Voices: Legacy (2022) #1, Monsters Unleashed (2017) #12, Moon Girl and Devil Dinosaur (2015) #7, Moon Girl and Devil Dinosaur (2015) #8, Moon Girl and Devil Dinosaur (2015) #9, Moon Girl and Devil Dinosaur (2015) #10, Moon Girl and Devil Dinosaur (2015) #11, Moon Girl and Devil Dinosaur (2015) #12, Moon Girl and Devil Dinosaur (2015) #13, Moon Girl and Devil Dinosaur (2015) #14, Moon Girl and Devil Dinosaur (2015) #15, Moon Girl and Devil Dinosaur (2015) #16, Moon Girl and Devil Dinosaur (2015) #17, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg',
    ''
  ),(
    1017574,
    'Angela (Aldrif Odinsdottir)',
    '1602 Witch Hunter Angela (2015) #4, Angela: Queen of Hel (2015) #5, Asgardians of the Galaxy (2018) #1, Asgardians of the Galaxy (2018) #2, Asgardians of the Galaxy (2018) #3, Asgardians of the Galaxy (2018) #4, Asgardians of the Galaxy (2018) #5, Asgardians of the Galaxy (2018) #6, Asgardians of the Galaxy (2018) #7, Asgardians of the Galaxy (2018) #8, Asgardians of the Galaxy (2018) #10, Asgardians Of The Galaxy Vol. 1: The Infinity Armada (Trade Paperback), Guardians of the Galaxy (2013) #5, Guardians of the Galaxy (2013) #6, Guardians of the Galaxy (2013) #10, Guardians of the Galaxy (2013) #11, Guardians of the Galaxy (2015) #18, GUARDIANS OF THE GALAXY VOL. 4 HC (Hardcover), Guardians of The Galaxy: New Guard Vol. 3 - Civil War II (Hardcover), Guardians of the Galaxy: New Guard Vol. 3 - Civil War II (Trade Paperback), ',
    'http://i.annihil.us/u/prod/marvel/i/mg/7/00/545a82f59dd73.jpg',
    ''
  ),(
    1010719,
    'Daimon Hellstrom',
    'Chaos War: Chaos King (2010) #1, Defenders (1972) #94, Defenders (1972) #118, Defenders (1972) #120, Defenders (1972) #121, DEFENDERS EPIC COLLECTION: ASHES, ASHES… TPB (Trade Paperback), Doctor Voodoo: Avenger of the Supernatural (2009) #2, Fear Itself: The Fearless (2011) #8, Hellstorm: Son of Satan (2006) #1, Hellstorm: Son of Satan (2006) #2, Hellstorm: Son of Satan (2006) #3, Hellstorm: Son of Satan (2006) #4, Hellstorm: Son of Satan (2006) #5, Journey Into Mystery (2011) #633, Journey Into Mystery (2011) #634, Journey Into Mystery (2011) #635, Journey Into Mystery (2011) #636, Journey Into Mystery (2011) #640, Marvel Masterworks: Marvel Two-In-One Vol. 2 (Hardcover), Marvel Team-Up (1972) #32, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/9/60/4ce5a2959ba25.jpg',
    ''
  ),(
    1009714,
    'Wiccan',
    'Avengers: The Childrens Crusade (2010) #4, Avengers: The Childrens Crusade - Young Avengers (2010) #1, Avengers: The Initiative (2007) #1, Civil War (2006) #1, Civil War (2006) #2, Civil War: Young Avengers & Runaways (2006) #1, Civil War: Young Avengers & Runaways (2006) #2, Civil War: Young Avengers & Runaways (2006) #3, Civil War: Young Avengers & Runaways (2006) #4, Dark Reign: Young Avengers (2009) #2, Deaths Head (2019) #3, Deaths Head (2019) #4, Doctor Strange and the Sorcerers Supreme (2016) #9, Doctor Strange and the Sorcerers Supreme (2016) #10, Doctor Strange and the Sorcerers Supreme (2016) #11, DOCTOR STRANGE AND THE SORCERERS SUPREME VOL. 1: OUT OF TIME TPB (Trade Paperback), DOCTOR STRANGE AND THE SORCERERS SUPREME VOL. 2: TIME AFTER TIME TPB (Trade Paperback), Doctor Strange and the Sorcerers Supreme (2016) #5, Empyre (2020) #5, Empyre: Aftermath Avengers (2020) #1, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/2/50/4c003a6e38300.jpg',
    'Believing himself to be one of the Scarlet Witchs twin boys, Billy Kaplan also has reality-altering powers and is a member of the Young Avengers.'
  ),(
    1010740,
    'Winter Soldier',
    'A YEAR OF MARVELS TPB (Trade Paperback), Agents of Atlas (2009) #3, Agents of Atlas (2009) #4, Agents of Atlas (2009) #5 (MCGUINNESS VARIANT), All Winners Comics 70th Anniversary Special (2009) #1, All-Winners Comics (1941) #1, All-Winners Comics (1941) #2, All-Winners Squad: Band of Heroes (2011) #4, Amazing Spider-Man (1999) #531, Amazing Spider-Man (1999) #534, Amazing Spider-Man (1999) #537, Amazing Spider-Man (1999) #667, Avengers Vs. Pet Avengers (2010) #3, Avengers/Invaders (2008) #2, Avengers/Invaders (2008) #2 (Perkins Variant), Avengers: Standoff (Trade Paperback), Black Widow (2014) #1, Black Widow (2010) #1, Black Widow (2010) #1 (MOVIE VARIANT), Black Widow (2010) #1 (FOREMAN VARIANT), ',
    'http://i.annihil.us/u/prod/marvel/i/mg/d/03/5265478293c1e.jpg',
    ''
  ),(
    1009268,
    'Deadpool',
    '5 Ronin (Hardcover), 5 Ronin (2010) #5, 5 Ronin (2010) #5 (MCGUINNESS COVER), A+X (2012) #8, Absolute Carnage Vs. Deadpool (2019) #1, Absolute Carnage Vs. Deadpool (2019) #2, Absolute Carnage Vs. Deadpool (2019) #3, Agent X (2002) #13, Agent X (2002) #14, Agent X (2002) #15, All-New Wolverine (2015) #31, Amazing Spider-Man (1999) #611, Amazing Spider-Man (1999) #620 (DEADPOOL VARIANT), Amazing Spider-Man Annual (2011) #38, Avengers (2016) #10, Avengers: The Initiative (2007) #33 (DEADPOOL VARIANT), Avenging Spider-Man (2011) #12, Avenging Spider-Man (2011) #13, Avenging Spider-Man: The Complete Collection (Trade Paperback), Babys First Deadpool Book (1998) #1, ',
    'http://i.annihil.us/u/prod/marvel/i/mg/9/90/5261a86cacb99.jpg',
    ''
  );


-- INSERT INTO
--   `morbius`
-- VALUES
--   (
--     1009454,
--     'Morbius',
--     'Absolute Carnage: Lethal Protectors (2019) #3, Adventure Into Fear (1970) #20, Adventure Into Fear (1970) #21, Adventure Into Fear (1970) #22, Adventure Into Fear (1970) #23, Adventure Into Fear (1970) #24, Adventure Into Fear (1970) #25, Adventure Into Fear (1970) #26, Adventure Into Fear (1970) #27, Adventure Into Fear (1970) #28, Adventure Into Fear (1970) #29, Adventure Into Fear (1970) #30, Adventure Into Fear (1970) #31, The Amazing Spider-Man (1963) #379, The Amazing Spider-Man (1963) #380, Amazing Spider-Man (1999) #622, Amazing Spider-Man (1999) #679.1, Amazing Spider-Man (1999) #688, Amazing Spider-Man (1999) #689, Amazing Spider-Man (1999) #690, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/b/c0/535fee11e0e1a.jpg',
--     ''
--   ),(
--     1009241,
--     'Cloak',
--     'Absolute Carnage: Lethal Protectors (2019) #3, The Amazing Spider-Man (1963) #379, The Amazing Spider-Man (1963) #380, Amazing Spider-Man (1999) #663, Amazing Spider-Man (1999) #666, Amazing Spider-Man (1999) #667, Amazing Spider-Man (1999) #668, Amazing Spider-Man: Worldwide Vol. 3 (Hardcover), Cataclysm: Ultimate Spider-Man (2013) #1, Cataclysm: Ultimate Spider-Man (2013) #2, Cataclysm: Ultimate Spider-Man (2013) #3, Civil War (2006) #1, Civil War (2006) #1 (Turner Variant), Civil War (2006) #1 (sketch variant), Civil War (2006) #6, Civil War (2006) #6 (Turner Variant), Spider-Island: Cloak & Dagger (2011) #3, Cloak and Dagger (1985) #1, Cloak and Dagger (2010) #1, Cloak and Dagger (1983) #1, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/5/e0/528d31d76a2b0.jpg',
--     ''
--   ),(
--     1009258,
--     'Dagger',
--     'Absolute Carnage: Lethal Protectors (2019) #3, Amazing Spider-Man (1999) #663, Amazing Spider-Man (1999) #666, Amazing Spider-Man (1999) #667, Amazing Spider-Man: Worldwide Vol. 3 (Hardcover), Cataclysm: Ultimate Spider-Man (2013) #1, Cataclysm: Ultimate Spider-Man (2013) #2, Cataclysm: Ultimate Spider-Man (2013) #3, Civil War (2006) #1 (Turner Variant), Civil War (2006) #1 (sketch variant), Spider-Island: Cloak & Dagger (2011) #3, Cloak and Dagger (1985) #1, Cloak and Dagger (1983) #1, Cloak and Dagger (2010) #1, Cloak and Dagger (1985) #2, Cloak and Dagger (1983) #2, Cloak and Dagger (1985) #3, Cloak and Dagger (1983) #3, Cloak and Dagger (1983) #4, Cloak and Dagger (1985) #4, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/8/e0/528d31c9eac10.jpg',
--     ''
--   ),(
--     1009367,
--     'Iron Fist (Danny Rand)',
--     'A+X (2012) #5, Absolute Carnage: Lethal Protectors (2019) #2, Absolute Carnage: Lethal Protectors (2019) #3, The Amazing Spider-Man (1963) #380, Amazing Spider-Man (1999) #653, Amazing Spider-Man (1999) #654, Amazing Spider-Man (1999) #654 (2nd Printing Variant), Amazing Spider-Man (1999) #666, Amazing Spider-Man (1999) #667, Amazing Spider-Man (1999) #668, Avengers (2010) #1, Avengers (2010) #1 (HEROIC AGE VARIANT), Avengers (2010) #1 (ROMITA JR. VARIANT), Avengers (2010) #1 (DJURDJEVIC VARIANT), Avengers (2010) #1 (ROMITA SR. VARIANT), Avengers (2010) #1 (I AM AN AVENGER BLANK COVER VARIANT), Avengers (2010) #10, Avengers (2010) #12, Avengers (2010) #16, Avengers Academy (2010) #3, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/3/f0/52616788ebc63.jpg',
--     ''
--   ),(
--     1010682,
--     'Misty Knight',
--     'Absolute Carnage: Lethal Protectors (2019) #1, Absolute Carnage: Lethal Protectors (2019) #2, Absolute Carnage: Lethal Protectors (2019) #3, The Amazing Spider-Man (2018) #78.1, The Amazing Spider-Man (2018) #92.1, Barnes & Noble Black Panther: Who Is the Black Panther? (Trade Paperback), Black Panther (2016) #7, Black Panther (2016) #8, Black Panther (2018) #24, Black Panther (2018) #25, Black Panther and the Crew (2017) #1, Black Panther and the Crew (2017) #2, Black Panther and the Crew (2017) #3, Black Panther and the Crew (2017) #5, Black Panther and the Crew (2017) #6, Black Panther and the Crew: We Are the Streets (Trade Paperback), Cage! (2016) #3, Captain America (2018) #11, Captain America (2018) #16, Captain America (2018) #22, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/d/90/511151789a863.jpg',
--     ''
--   ),(
--     1009185,
--     'Black Cat',
--     'The Amazing Spider-Man (1963) #335, The Amazing Spider-Man (1963) #379, The Amazing Spider-Man (1963) #380, Amazing Spider-Man (1999) #605, Amazing Spider-Man (1999) #606, Amazing Spider-Man (1999) #607, Amazing Spider-Man (1999) #612 (VARIANT), Amazing Spider-Man (1999) #621, Amazing Spider-Man (1999) #622, Amazing Spider-Man (1999) #630, Amazing Spider-Man (1999) #630 (QUINONES VARIANT), Amazing Spider-Man (1999) #632 (HEROIC AGE VARIANT), Amazing Spider-Man (1999) #648, Amazing Spider-Man (1999) #648 (CAMPBELL VARIANT), Amazing Spider-Man (1999) #648 (BLANK COVER VARIANT), Amazing Spider-Man (1999) #648 (WRAPAROUND VARIANT), Amazing Spider-Man (1999) #648 (2ND PRINTING VARIANT), Amazing Spider-Man (1999) #648 (CASELLI VARIANT), Amazing Spider-Man (1999) #649, Amazing Spider-Man (1999) #649 (2ND PRINTING VARIANT), ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/e/03/526952357d91c.jpg',
--     ''
--   ),(
--     1009227,
--     'Carnage',
--     'Absolute Carnage (2019) #1, Absolute Carnage (2019) #2, Absolute Carnage (2019) #3, Absolute Carnage (2019) #4, Absolute Carnage (2019) #5, Absolute Carnage (Trade Paperback), Absolute Carnage Vs. Deadpool (2019) #1, Absolute Carnage Vs. Deadpool (2019) #2, Absolute Carnage Vs. Deadpool (2019) #3, Absolute Carnage Vs. Deadpool (Trade Paperback), Absolute Carnage: Immortal Hulk (2019) #1, Absolute Carnage: Immortal Hulk And Other Tales  (Trade Paperback), Absolute Carnage: Lethal Protectors (2019) #1, Absolute Carnage: Lethal Protectors (2019) #2, Absolute Carnage: Lethal Protectors (Trade Paperback), Absolute Carnage: Miles Morales (2019) #1, Absolute Carnage: Miles Morales (2019) #2, Absolute Carnage: Miles Morales (Trade Paperback), Absolute Carnage: Scream (2019) #1, Absolute Carnage: Scream (2019) #3, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/6/50/535fee423f170.jpg',
--     ''
--   ),(
--     1010890,
--     'Deathlok',
--     'The Amazing Spider-Man (1963) #379, The Amazing Spider-Man (1963) #380, Astonishing Tales (1970) #25, Astonishing Tales (1970) #26, Astonishing Tales (1970) #27, Astonishing Tales (1970) #28, Astonishing Tales (1970) #30, Astonishing Tales (1970) #31, Astonishing Tales (1970) #32, Astonishing Tales (1970) #33, Astonishing Tales (1970) #34, Astonishing Tales (1970) #35, Astonishing Tales (1970) #36, Avengers (2018) #54, Avengers Arena (2012) #2, Avengers Arena (2012) #4, Avengers Forever (2021) #2, Avengers Forever (2021) #3, Beyond! (Hardcover), Beyond! (2006) #6, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/7/10/526165a98dd8e.jpg',
--     '&nbsp;'
--   ),(
--     1011071,
--     'Demogoblin',
--     'The Amazing Spider-Man (1963) #379, The Amazing Spider-Man (1963) #380, Marvel Comics Presents (1988) #112, Venom: The Enemy Within (1994) #2, Venom: The Enemy Within (1994) #3, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/c/80/535fedd611db9.jpg',
--     'Jason Macendale, the newest Hobgoblin was down on his luck and offered the demon Nastirh his soul in exchange for power during the  Inferno crisis, turning him into the Demogoblin.'
--   ),(
--     1009306,
--     'Firestar',
--     'Alpha Flight (1983) #127, The Amazing Spider-Man (1963) #379, The Amazing Spider-Man (1963) #380, Amazing Spider-Man (1999) #666, Amazing Spider-Man (1999) #667, Amazing Spider-Man (1999) #668, Amazing X-Men (2013) #1, Amazing X-Men (2013) #2, Amazing X-Men (2013) #3, Amazing X-Men (2013) #4, Amazing X-Men (2013) #5, Amazing X-Men (2013) #6, Amazing X-Men (2013) #14, Amazing X-Men (2013) #19, Avengers (1998) #1, Avengers (1998) #2, Avengers (1998) #3, Avengers (1998) #4, Avengers (1998) #7, Avengers (1998) #8, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/7/03/526032b8247e8.jpg',
--     ''
--   ),(
--     1009403,
--     'Liz Osborn',
--     'The Amazing Spider-Man (1963) #379, Amazing Spider-Man (1999) #581, Amazing Spider-Man (1999) #582, Amazing Spider-Man Family (2008) #3, Green Goblin (1995) #7, Peter Parker, the Spectacular Spider-Man (1976) #85, Peter Parker, the Spectacular Spider-Man (1976) #146, SPIDER-MAN LEGENDS VOL. 2: TODD MCFARLANE BOOK 2 TPB (Trade Paperback), SPIDER-MAN LEGENDS VOL. 3: TODD MCFARLANE BOOK 3 TPB (Trade Paperback), The Amazing Spider-Man (1963) #311, The Amazing Spider-Man (1963) #321, The Amazing Spider-Man (1963) #412, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg',
--     ''
--   ),(
--     1009708,
--     'Mary Jane Watson',
--     'Spider-Man: 101 Ways to End the Clone Saga (1997) #1, Amazing Mary Jane (2019) #1, Amazing Mary Jane (2019) #2, Amazing Mary Jane (2019) #3, Amazing Mary Jane (2019) #4, Amazing Mary Jane (2019) #6, Amazing Spider-Man (1999) #1, The Amazing Spider-Man (2015) #15, The Amazing Spider-Man (1963) #334, The Amazing Spider-Man (1963) #336, The Amazing Spider-Man (1963) #337, The Amazing Spider-Man (1963) #338, The Amazing Spider-Man (1963) #339, The Amazing Spider-Man (1963) #378, The Amazing Spider-Man (1963) #379, The Amazing Spider-Man (1963) #380, The Amazing Spider-Man (1963) #394, The Amazing Spider-Man (1963) #395, The Amazing Spider-Man (1963) #396, The Amazing Spider-Man (1963) #397, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/2/03/528d33d000749.jpg',
--     'Mary Jane Watson was the guiding light in Peter Parkers life, and their love had overcome countless obstacles.'
--   ),(
--     1009490,
--     'May Parker',
--     'Amazing Spider-Man (1999) #1, The Amazing Spider-Man (1963) #379, The Amazing Spider-Man (1963) #380, The Amazing Spider-Man (1963) #394, The Amazing Spider-Man (1963) #398, Amazing Spider-Man (1999) #500, Amazing Spider-Man (1999) #501, Amazing Spider-Man (1999) #506, Amazing Spider-Man (1999) #509, Amazing Spider-Man (1999) #510, Amazing Spider-Man (1999) #544, Amazing Spider-Man (1999) #546, Amazing Spider-Man (1999) #579, Amazing Spider-Man (1999) #580, Amazing Spider-Man (1999) #591, Amazing Spider-Man (1999) #592, Amazing Spider-Man (1999) #599, Amazing Spider-Man (1999) #600, Amazing Spider-Man (1999) #600 (2ND PRINTING VARIANT), Amazing Spider-Man (1999) #608, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/c/30/535fec80bb4a6.jpg',
--     ''
--   ),(
--     1009587,
--     'Shriek',
--     'The Amazing Spider-Man (1963) #379, The Amazing Spider-Man (1963) #380, Peter Parker, the Spectacular Spider-Man (1976) #201, Peter Parker, the Spectacular Spider-Man (1976) #202, Peter Parker, the Spectacular Spider-Man (1976) #203, Peter Parker, the Spectacular Spider-Man (1976) #223, Spider-Man Maximum Carnage (Trade Paperback), ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/8/03/528d36b054844.jpg',
--     'Shriek became a groupie for a rock band and a drug dealer on the side until the vigilantes Cloak and Dagger happened by during one of her deals.'
--   ),(
--     1009610,
--     'Spider-Man (Peter Parker)',
--     'Spider-Man: 101 Ways to End the Clone Saga (1997) #1, 2099 Alpha (2019) #1, A YEAR OF MARVELS TPB (Trade Paperback), A Year of Marvels: April Infinite Comic (2016) #1, A Year of Marvels: February Infinite Comic (2016) #1, A+X (2012) #4, Absolute Carnage (2019) #1, Absolute Carnage (2019) #2, Absolute Carnage (2019) #5, Absolute Carnage: Symbiote Spider-Man (2019) #1, Actor Presents Spider-Man and the Incredible Hulk (2003) #1, Adventures of Spider-Man (1996) #1, Adventures of Spider-Man (1996) #2, Adventures of Spider-Man (1996) #3, Adventures of Spider-Man (1996) #4, Adventures of Spider-Man (1996) #5, Adventures of Spider-Man (1996) #6, Adventures of Spider-Man (1996) #7, Adventures of Spider-Man (1996) #8, Adventures of Spider-Man (1996) #9, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/3/50/526548a343e4b.jpg',
--     'Bitten by a radioactive spider, high school student Peter Parker gained the speed, strength and powers of a spider. Adopting the name Spider-Man, Peter hoped to start a career using his new abilities. Taught that with great power comes great responsibility, Spidey has vowed to use his powers to help people.'
--   ),(
--     1009220,
--     'Captain America',
--     'A+X (2012) #1, A+X (2012) #4, A+X (2012) #9, A-Next (1998) #2, A-Next (1998) #3, A-Next (1998) #4, A-Next (1998) #5, A-Next (1998) #6, A-Next (1998) #7, A-Next (1998) #8, A-Next (1998) #9, A-Next (1998) #10, A-Next (1998) #11, A-Next (1998) #12, Adventures of Captain America (1991) #1, Adventures of Captain America (1991) #2, Adventures of Captain America (1991) #3, Adventures of Captain America (1991) #4, Age of Apocalypse (2011) #2 (Avengers Art Appreciation Variant), Age of Heroes (2010) #1, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/3/50/537ba56d31087.jpg',
--     'Vowing to serve his country any way he could, young Steve Rogers took the super soldier serum to become Americas one-man army. Fighting for the red, white and blue for over 60 years, Captain America is the living, breathing symbol of freedom and liberty.'
--   ),(
--     1010325,
--     'Betty Brant',
--     'Alias (2001) #10, Alias Omnibus (Hardcover), Amazing Spider-Man (1999) #614, Amazing Spider-Man (1999) #622, Amazing Spider-Man (1999) #647 (MCNIVEN VARIANT), Amazing Spider-Man (1999) #654.1, Amazing Spider-Man (1999) #655, Amazing Spider-Man (1999) #655 (2nd Printing Variant), Amazing Spider-Man (1999) #665, Amazing Spider-Man (1999) #665 (AMAZING SPIDER-MAN 665 I AM CAPTAIN AMERICA VARIANT), Amazing Spider-Man (1999) #666, Amazing Spider-Man Annual (1964) #16, Amazing Spider-Man Annual (1964) #21, Amazing Spider-Man Annual (2010) #37, Amazing-Spider-Man: Worldwide Vol. 8 (Trade Paperback), Avengers: The Initiative (2007) #7, Daily Bugle (1996) #1, Daily Bugle (1996) #2, Daily Bugle (1996) #3, Peter Parker, the Spectacular Spider-Man (1976) #85, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/9/a0/4c7c644f453fb.jpg',
--     ''
--   ),(
--     1009404,
--     'Lizard',
--     'The Amazing Spider-Man (1963) #6, The Amazing Spider-Man (1963) #75, The Amazing Spider-Man (1963) #76, The Amazing Spider-Man (1963) #77, Amazing Spider-Man (1999) #612, Amazing Spider-Man (1999) #612 (VARIANT), Amazing Spider-Man (1999) #612 (GRANOV 50/50 COVER), Amazing Spider-Man (1999) #614, Amazing Spider-Man (1999) #622, Amazing Spider-Man (1999) #630, Amazing Spider-Man (1999) #630 (QUINONES VARIANT), Amazing Spider-Man (1999) #631, Amazing Spider-Man (1999) #631 (HEROIC AGE VARIANT), Amazing Spider-Man (1999) #632, Amazing Spider-Man (1999) #633, Amazing Spider-Man (1999) #633 (HEROIC AGE VARIANT), Amazing Spider-Man (1999) #634, Amazing Spider-Man (1999) #634 (2ND PRINTING VARIANT), Amazing Spider-Man (1999) #634 (VILLAIN VARIANT), Amazing Spider-Man (1999) #634 (50/50 VARIANT), ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/f/50/528d33efe2cae.jpg',
--     ''
--   ),(
--     1009663,
--     'Venom (Flash Thompson)',
--     'Amazing Spider-Man (1999) #574, Amazing Spider-Man (1999) #622, Amazing Spider-Man (1999) #642, Amazing Spider-Man (1999) #647, Amazing Spider-Man (1999) #654, Amazing Spider-Man (1999) #654 (2nd Printing Variant), Amazing Spider-Man (1999) #654.1, Amazing Spider-Man (1999) #665, Amazing Spider-Man (1999) #665 (AMAZING SPIDER-MAN 665 I AM CAPTAIN AMERICA VARIANT), Amazing Spider-Man (1999) #668, Amazing Spider-Man (1999) #668 (2nd Printing Variant), Amazing Spider-Man (1999) #669, Amazing Spider-Man Family (2008) #3, Amazing Spider-Man: Extra! (2008) #3, Amazing Spider-Man: Venom Inc. Omega (2018) #1, Extreme Carnage Alpha (2021) #1, Extreme Carnage: Agony (2021) #1, Extreme Carnage: Lasher (2021) #1, Extreme Carnage: Phage (2021) #1, Extreme Carnage: Riot (2021) #1, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/7/80/5269668c7d5df.jpg',
--     'Flash Thompson was the high school bully of Peter Parker while also being one of Spider-Mans biggest fans. After losing his legs during military service, he became the new Venom, working as an operative of the United States government.'
--   ),(
--     1011258,
--     'Carlie Cooper',
--     'Amazing Spider-Man (1999) #556, Amazing Spider-Man (1999) #557, Amazing Spider-Man (1999) #586, Amazing Spider-Man (1999) #588, Amazing Spider-Man (1999) #590, Amazing Spider-Man (1999) #615, Amazing Spider-Man (1999) #621, Amazing Spider-Man (1999) #627, Amazing Spider-Man (1999) #630, Amazing Spider-Man (1999) #630 (QUINONES VARIANT), Amazing Spider-Man (1999) #631, Amazing Spider-Man (1999) #631 (HEROIC AGE VARIANT), Amazing Spider-Man (1999) #632, Amazing Spider-Man (1999) #642, Amazing Spider-Man (1999) #643, Amazing Spider-Man (1999) #643 (SHS VARIANT), Amazing Spider-Man (1999) #643 (JIMENEZ VARIANT), Amazing Spider-Man (1999) #644, Amazing Spider-Man (1999) #644 (BACHALO VARIANT), Amazing Spider-Man (1999) #645, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg',
--     ''
--   ),(
--     1009244,
--     'Curt Conners',
--     'Amazing Spider-Man (1999) #688, Amazing Spider-Man (1999) #689, Amazing Spider-Man (1999) #690, Sensational Spider-Man (2006) #37, SPIDER-MAN LEGENDS VOL. 2: TODD MCFARLANE BOOK 2 TPB (Trade Paperback), Spider-Man, Peter Parker: Back in Black (2007), Spider-Man: Birth of Venom (Trade Paperback), The Amazing Spider-Man (1963) #243, The Amazing Spider-Man (1963) #252, The Amazing Spider-Man (1963) #311, The Amazing Spider-Man (1963) #312, The Amazing Spider-Man (1963) #313, The Amazing Spider-Man (1963) #414, Ultimate Spider-Man (2000) #61, Ultimate Spider-Man (2000) #62, Ultimate Spider-Man (2000) #63, Ultimate Spider-Man (2000) #64, Ultimate Spider-Man Vol. 11: Carnage (Trade Paperback), ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg',
--     ''
--   ),(
--     1009491,
--     'Peter Parker',
--     'The Amazing Spider-Man (1963) #394, The Amazing Spider-Man (1963) #395, The Amazing Spider-Man (1963) #396, The Amazing Spider-Man (1963) #397, The Amazing Spider-Man (1963) #398, The Amazing Spider-Man (1963) #399, Amazing Spider-Man (1999) #502, Amazing Spider-Man (1999) #503, Amazing Spider-Man (1999) #505, Amazing Spider-Man (1999) #506, Amazing Spider-Man (1999) #507, Amazing Spider-Man (1999) #509, Amazing Spider-Man (1999) #510, Amazing Spider-Man (1999) #601, Amazing Spider-Man (1999) #602, Amazing Spider-Man (1999) #603, Amazing Spider-Man (1999) #604, Amazing Spider-Man (1999) #605, Amazing Spider-Man (1999) #608, Amazing Spider-Man (1999) #609, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg',
--     ''
--   ),(
--     1009389,
--     'Kingpin',
--     'Amazing Spider-Girl (2006) #5, Amazing Spider-Girl (2006) #17, The Amazing Spider-Man (1963) #336, Amazing Spider-Man (1999) #538, Amazing Spider-Man (1999) #541, Amazing Spider-Man (1999) #542, Amazing Spider-Man (1999) #640, Amazing Spider-Man (1999) #648, Amazing Spider-Man (1999) #649, Amazing Spider-Man (1999) #649 (2ND PRINTING VARIANT), Amazing Spider-Man (1999) #650, Amazing Spider-Man (1999) #650 (2ND PRINTING VARIANT), Amazing Spider-Man (1999) #651, Amazing Spider-Man (1999) #651 (2nd Printing Variant), Amazing Spider-Man (1999) #651 (TRON VARIANT), Amazing Spider-Man (1999) #674, Amazing Spider-Man (1999) #690, Amazing Spider-Man Annual (1964) #19, Amazing Spider-Man: Family Business (Trade Paperback), Black Panther: The Most Dangerous Man Alive  (2010) #525, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/9/60/526034fb5aff7.jpg',
--     ''
--   );

--   INSERT INTO
--   `thor`
-- VALUES
--   (
--     1009664,
--     'Thor',
--     'A+X (2012) #7, Age of Heroes (2010) #1, Age of Heroes (2010) #2, Age of Heroes (2010) #3, Age of Heroes (2010) #4, Alligator Loki Infinity Comic (2022) #1, Alligator Loki Infinity Comic (2022) #2, Alligator Loki Infinity Comic (2022) #4, Alpha: Big Time (2013) #4, Alpha Flight (1983) #1, Alpha Flight (1983) #61, Alpha Flight (1983) #127, The Amazing Spider-Man (1963) #339, Amazing Spider-Man (1999) #500, Amazing Spider-Man (1999) #538, Amazing Spider-Man Annual (1964) #3, Amazing Spider-Man Annual (1964) #16, Amazing Spider-Man Vol. 6 (Trade Paperback), Art of Marvel Studios TPB Slipcase (Hardcover), Astonishing Thor (2010) #1, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/d/d0/5269657a74350.jpg',
--     'As the Norse God of thunder and lightning, Thor wields one of the greatest weapons ever made, the enchanted hammer Mjolnir. While others have described Thor as an over-muscled, oafish imbecile, he\'s quite smart and compassionate.  He\'s self-assured, and he would never, ever stop fighting for a worthwhile cause.'
--   ),(
--     1009175,
--     'Beast',
--     'A+X (2012) #4, A+X (2012) #7, All-New X-Men (2012) #3 (Mcguinness Variant), Alpha Flight (1983) #111, Amazing Adventures (1970) #11, Amazing Adventures (1970) #12, Amazing Adventures (1970) #13, Amazing Adventures (1970) #14, Amazing Adventures (1970) #15, Amazing Adventures (1970) #16, Amazing Adventures (1970) #17, Amazing X-Men (2013) #3, Astonishing X-Men (2004) #1, Astonishing X-Men (2004) #2, Astonishing X-Men (2004) #3, Astonishing X-Men (2004) #4, Astonishing X-Men (2004) #5, Astonishing X-Men (2004) #6, Astonishing X-Men (2004) #7, Astonishing X-Men (2004) #8, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/2/80/511a79a0451a3.jpg',
--     ''
--   ),(
--     1009351,
--     'Hulk',
--     '5 Ronin (Hardcover), 5 Ronin (2010) #2, 5 Ronin (2010) #2 (BROOKS COVER), A+X (2012) #1, A+X (2012) #7, Absolute Carnage: Immortal Hulk (2019) #1, Actor Presents Spider-Man and the Incredible Hulk (2003) #1, Age of X: Universe (2011) #1, Age of X: Universe (2011) #2, All-New Savage She-Hulk (2009) #1, All-New Savage She-Hulk (2009) #2, Alpha Flight (1983) #29, Alpha Flight (1983) #110, Alpha Flight (1983) #111, Alpha Flight (1983) #127, Amazing Spider-Man (1999) #667, Amazing Spider-Man Annual (1964) #3, Amazing Spider-Man Annual (1964) #12, Amazing Spider-Man Annual (2011) #38, Ant-Man and the Wasp Adventures (Digest), ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/5/a0/538615ca33ab0.jpg',
--     'Caught in a gamma bomb explosion while trying to save the life of a teenager, Dr. Bruce Banner was transformed into the incredibly powerful creature called the Hulk. An all too often misunderstood hero, the angrier the Hulk gets, the stronger the Hulk gets.'
--   ),(
--     1009362,
--     'Iceman',
--     'A+X (2012) #7, Astonishing X-Men (1995) #1, Astonishing X-Men (1995) #4, Astonishing X-Men (2004) #51, Astonishing X-Men (2004) #51 (Djurdjevic Variant), Astonishing X-Men (2004) #56, Astonishing X-Men (2004) #59, Astonishing X-Men (2004) #60, Astonishing X-Men (2004) #61, Astonishing X-Men (2004) #62, Astonishing X-Men (2004) #63, Astonishing X-Men (2004) #64, Astonishing X-Men (2004) #65, Astonishing X-Men (2004) #68, Astonishing X-Men Annual (2018) #1, Avengers (1998) #27, Avengers (1963) #110, Avengers Assemble Vol. 3 (Hardcover), Black Panther (1998) #35, Cable (2008) #6, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/1/d0/52696c836898c.jpg',
--     ''
--   ),(
--     1009368,
--     'Iron Man',
--     'A+X (2012) #2, A+X (2012) #7, Adam: Legend of the Blue Marvel (2008) #1, Adam: Legend of the Blue Marvel (2008) #2, Adam: Legend of the Blue Marvel (2008) #5, Aero (2019) #11, Aero (2019) #12, Age of Heroes (2010) #1, Age of Heroes (2010) #2, Age of Heroes (2010) #3, Age of Heroes (2010) #4, Age of Innocence: The Rebirth of Iron Man (1996) #1, Age of X: Universe (2011) #1, Age of X: Universe (2011) #2, All-New Iron Manual (2008) #1, All-New, All-Different Avengers (2015) #10, All-New, All-Different Avengers (2015) #11, Alpha Flight (1983) #113, Alpha Flight (1983) #127, The Amazing Spider-Man (2015) #13, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/9/c0/527bb7b37ff55.jpg',
--     'Wounded, captured and forced to build a weapon by his enemies, billionaire industrialist Tony Stark instead created an advanced suit of armor to save his life and escape captivity. Now with a new outlook on life, Tony uses his money and intelligence to make the world a safer, better place as Iron Man.'
--   ),(
--     1009165,
--     'Avengers',
--     'Absolute Carnage: Avengers (2019) #1, Acts of Vengeance: Avengers (Trade Paperback), Age of Apocalypse (2011) #2 (Avengers Art Appreciation Variant), Age of Heroes (2010) #1, Age of Heroes (2010) #2, Age of Heroes (2010) #3, Age of Heroes (2010) #4, Age of Ultron (2013) #3, Age of Ultron (2013) #4, Age of Ultron (2013) #5, Age of Ultron (2013) #6, Age of Ultron (2013) #7, Age of Ultron (2013) #8, Age of Ultron (2013) #9, Age of Ultron (2013) #10, Age of X: Universe (2011) #1, Age of X: Universe (2011) #2, Alias (2001) #4, Alias Omnibus (Hardcover), All-New X-Men (2012) #8, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/9/20/5102c774ebae7.jpg',
--     'Earths Mightiest Heroes joined forces to take on threats that were too big for any one hero to tackle. With a roster that has included Captain America, Iron Man, Ant-Man, Hulk, Thor, Wasp and dozens more over the years, the Avengers have come to be regarded as Earths No. 1 team.'
--   ),(
--     1011339,
--     'Blue Marvel',
--     'Adam: Legend of the Blue Marvel (2008) #1, Adam: Legend of the Blue Marvel (2008) #2, Adam: Legend of the Blue Marvel (2008) #3, Adam: Legend of the Blue Marvel (2008) #4, Adam: Legend of the Blue Marvel (2008) #5, Age of Heroes (2010) #1, Age of Heroes (2010) #4, AGE OF HEROES TPB (Trade Paperback), Fear Itself: The Home Front (2010) #4, Mighty Avengers (2013) #1, Mighty Avengers (2013) #2, Mighty Avengers (2013) #3, Mighty Avengers (2013) #4, Mighty Avengers (2013) #5, Mighty Avengers (2013) #7, Mighty Avengers (2013) #8, Mighty Avengers (2013) #10, Ultimates (2015) #7, Ultimates (2015) #8, Ultimates (2015) #9, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg',
--     ''
--   ),(
--     1009220,
--     'Captain America',
--     'A+X (2012) #1, A+X (2012) #4, A+X (2012) #9, A-Next (1998) #2, A-Next (1998) #3, A-Next (1998) #4, A-Next (1998) #5, A-Next (1998) #6, A-Next (1998) #7, A-Next (1998) #8, A-Next (1998) #9, A-Next (1998) #10, A-Next (1998) #11, A-Next (1998) #12, Adventures of Captain America (1991) #1, Adventures of Captain America (1991) #2, Adventures of Captain America (1991) #3, Adventures of Captain America (1991) #4, Age of Apocalypse (2011) #2 (Avengers Art Appreciation Variant), Age of Heroes (2010) #1, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/3/50/537ba56d31087.jpg',
--     'Vowing to serve his country any way he could, young Steve Rogers took the super soldier serum to become Americas one-man army. Fighting for the red, white and blue for over 60 years, Captain America is the living, breathing symbol of freedom and liberty.'
--   ),(
--     1010823,
--     'Cloud 9',
--     'Age of Heroes (2010) #1, Age of Heroes (2010) #2, Age of Heroes (2010) #3, Age of Heroes (2010) #4, AGE OF HEROES TPB (Trade Paperback), Avengers: The Initiative (2007) #2, Avengers: The Initiative (2007) #5, Avengers: The Initiative (2007) #6, Avengers: The Initiative (2007) #7, Avengers: The Initiative (2007) #8, Avengers: The Initiative (2007) #9, Avengers: The Initiative (2007) #10, Avengers: The Initiative (2007) #11, Avengers: The Initiative (2007) #12, Avengers: The Initiative (2007) #18, Avengers: The Initiative (2007) #18 (ZOMBIE VARIANT), Fear Itself: Youth in Revolt (2011) #1, Fear Itself: Youth in Revolt (2011) #4, Fear Itself: Youth in Revolt (2011) #5, Fear Itself: Youth in Revolt (2011) #6, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/6/80/526955ef00db6.jpg',
--     ''
--   ),(
--     1010702,
--     'Gravity',
--     'Age of Heroes (2010) #1, Age of Heroes (2010) #2, Age of Heroes (2010) #3, Age of Heroes (2010) #4, AGE OF HEROES TPB (Trade Paperback), Amazing Spider-Man (1999) #666, Avengers: The Initiative (2007) #18, Avengers: The Initiative (2007) #18 (ZOMBIE VARIANT), Avengers: The Initiative (2007) #25, Beyond! (Hardcover), Beyond! (2006) #1, Beyond! (2006) #2, Beyond! (2006) #3, Beyond! (2006) #4, Beyond! (2006) #5, Beyond! (2006) #6, Fear Itself: Youth in Revolt (2011) #1, Fear Itself: Youth in Revolt (2011) #4, Fear Itself: Youth in Revolt (2011) #5, Fear Itself: Youth in Revolt (2011) #6, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/5/70/526033d50fa1b.jpg',
--     ''
--   ),(
--     1011335,
--     'Maria Hill',
--     'Age of Heroes (2010) #1, Age of Heroes (2010) #2, Age of Heroes (2010) #3, Age of Heroes (2010) #4, AGE OF HEROES TPB (Trade Paperback), Avengers (2010) #1, Avengers (2010) #1 (HEROIC AGE VARIANT), Avengers (2010) #1 (ROMITA JR. VARIANT), Avengers (2010) #1 (DJURDJEVIC VARIANT), Avengers (2010) #1 (ROMITA SR. VARIANT), Avengers (2010) #1 (I AM AN AVENGER BLANK COVER VARIANT), Avengers (2010) #2, Avengers (2010) #3, Avengers (2010) #3 (ROMITA JR. VARIANT), Avengers (2010) #5, Avengers (2010) #8, Avengers (2010) #9, Avengers (2010) #10, Avengers (2010) #11, Avengers (2010) #11 (CAPTAIN AMERICA 70TH ANNIVERSARY VARIANT), ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/a/00/535ff3f5397cb.jpg',
--     ''
--   ),(
--     1009228,
--     'Sharon Carter',
--     'Age of Heroes (2010) #1, Age of Heroes (2010) #2, Age of Heroes (2010) #3, Age of Heroes (2010) #4, AGE OF HEROES TPB (Trade Paperback), Avengers (2010) #10, Avengers (2010) #11, Avengers (2010) #11 (CAPTAIN AMERICA 70TH ANNIVERSARY VARIANT), Avengers (2010) #16, Avengers (1998) #32, Avengers Assemble Vol. 3 (Hardcover), Captain America (2004) #1, Captain America (2004) #2, Captain America (1998) #3, Captain America (2004) #3, Captain America (2004) #4, Captain America (2004) #6, Captain America (2004) #8, Captain America (2011) #9, Captain America (2004) #9, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/6/d0/4ce59f2323b88.jpg',
--     ''
--   ),(
--     1009610,
--     'Spider-Man (Peter Parker)',
--     'Spider-Man: 101 Ways to End the Clone Saga (1997) #1, 2099 Alpha (2019) #1, A YEAR OF MARVELS TPB (Trade Paperback), A Year of Marvels: April Infinite Comic (2016) #1, A Year of Marvels: February Infinite Comic (2016) #1, A+X (2012) #4, Absolute Carnage (2019) #1, Absolute Carnage (2019) #2, Absolute Carnage (2019) #5, Absolute Carnage: Symbiote Spider-Man (2019) #1, Actor Presents Spider-Man and the Incredible Hulk (2003) #1, Adventures of Spider-Man (1996) #1, Adventures of Spider-Man (1996) #2, Adventures of Spider-Man (1996) #3, Adventures of Spider-Man (1996) #4, Adventures of Spider-Man (1996) #5, Adventures of Spider-Man (1996) #6, Adventures of Spider-Man (1996) #7, Adventures of Spider-Man (1996) #8, Adventures of Spider-Man (1996) #9, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/3/50/526548a343e4b.jpg',
--     'Bitten by a radioactive spider, high school student Peter Parker gained the speed, strength and powers of a spider. Adopting the name Spider-Man, Peter hoped to start a career using his new abilities. Taught that with great power comes great responsibility, Spidey has vowed to use his powers to help people.'
--   ),(
--     1010860,
--     'Squirrel Girl',
--     'Marvel New Years Eve Special Infinite Comic (2017) #1, Age of Heroes (2010) #1, Age of Heroes (2010) #2, Age of Heroes (2010) #3, Age of Heroes (2010) #4, AGE OF HEROES TPB (Trade Paperback), All-New Wolverine (2015) #7, All-New, All-Different Avengers Annual (2016) #1, Amazing Spider-Man (1999) #653, Deadpool Classic Vol. 21: DvX (Trade Paperback), Deadpool: Too Soon? Infinite Comic (2016) #1, Deadpool: Too Soon? Infinite Comic (2016) #2, Deadpool: Too Soon? Infinite Comic (2016) #3, Deadpool: Too Soon? Infinite Comic (2016) #7, Deadpool: Too Soon? Infinite Comic (2016) #8, DEADPOOL: TOO SOON? TPB (Trade Paperback), G.L.a. (2005) #1, Marvel Action Avengers (2020) #2, Marvel Action Captain Marvel (2021) #4, Marvel Rising (2019) #1, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/8/60/4c0035beb0c55.jpg',
--     'Escaping the taunts of her fellow school students regarding her physical mutation, Los-Angeles born Doreen Green fled into the nearby woods where she quickly discovered her affinity for squirrels.'
--   ),(
--     1009648,
--     'Taskmaster',
--     'Age of Heroes (2010) #1, Age of Heroes (2010) #2, Age of Heroes (2010) #3, Age of Heroes (2010) #4, AGE OF HEROES TPB (Trade Paperback), Agent X (2002) #4, Agent X (2002) #5, Agent X (2002) #6, Agent X (2002) #7, Agent X (2002) #10, Agent X (2002) #11, Agent X (2002) #13, Agent X (2002) #14, Agent X (2002) #15, Alpha Flight (2011) #5, Ant-Man and the Wasp Adventures (Digest), Avengers (2016) #10, Avengers (1963) #195, Avengers (1963) #196, Avengers (1963) #223, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/6/c0/526957dc0c27f.jpg',
--     'Taskmaster first exhibited his unusual ability, called \"photographic reflexes,\" which allowed him to mimic the motion of anyone he saw, when he was a young boy.'
--   ),(
--     1011432,
--     'Enchantress (Sylvie Lushton)',
--     'Age of Heroes (2010) #2, Marvel Fanfare (1982) #45, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg',
--     ''
--   ),(
--     1009316,
--     'Gauntlet (Joseph Green)',
--     'Age of Heroes (2010) #2, AGE OF HEROES TPB (Trade Paperback), Avengers: The Initiative (2007) #2, Avengers: The Initiative (2007) #4, Avengers: The Initiative (2007) #6, Avengers: The Initiative (2007) #7, Avengers: The Initiative (2007) #9, Avengers: The Initiative (2007) #10, Avengers: The Initiative (2007) #15, Avengers: The Initiative (2007) #20, Avengers: The Initiative (2007) #21, Avengers: The Initiative (2007) #22, Avengers: The Initiative (2007) #23, Avengers: The Initiative (2007) #24, Avengers: The Initiative (2007) #25, Avengers: The Initiative (2007) #27, Avengers: The Initiative (2007) #27 (70TH FRAME VARIANT), Avengers: The Initiative (2007) #33, Avengers: The Initiative (2007) #33 (DEADPOOL VARIANT), Avengers: The Initiative (2007) #35, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/7/20/535ff2a48869b.jpg',
--     ''
--   ),(
--     1009407,
--     'Loki',
--     'A+X (2012) #5, All-Winners Squad: Band of Heroes (2011) #3, Alligator Loki Infinity Comic (2022) #1, Alligator Loki Infinity Comic (2022) #2, Alligator Loki Infinity Comic (2022) #3, Alligator Loki Infinity Comic (2022) #4, Alligator Loki Infinity Comic (2022) #5, Alligator Loki Infinity Comic (2022) #6, Alligator Loki Infinity Comic (2022) #7, Alpha Flight (1983) #50, Amazing Spider-Man (1999) #503, Amazing Spider-Man (1999) #504, AMAZING SPIDER-MAN VOL. 7: BOOK OF EZEKIEL TPB (Trade Paperback), Amazing Spider-Man Vol. 7: The Book of Ezekiel (Trade Paperback), Amazing-Spider-Man: Worldwide Vol. 8 (Trade Paperback), Asgardians Of The Galaxy Vol. 2: War Of The Realms (Trade Paperback), Vengeance (2011) #4, Avengers (1996) #1, Avengers (1963) #1, Avengers (2018) #3, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/d/90/526547f509313.jpg',
--     ''
--   ),(
--     1010370,
--     'Alpha Flight',
--     'Alpha Flight (2011) #0.1, Alpha Flight (1983) #1, Alpha Flight (2004) #1, Alpha Flight (2011) #1 (Eaglesham Variant), Alpha Flight (1983) #2, Alpha Flight (2004) #2, Alpha Flight (2011) #2, Alpha Flight (2011) #2 (Eaglesham Variant), Alpha Flight (2004) #3, Alpha Flight (1983) #3, Alpha Flight (2011) #3 (Eaglesham Variant), Alpha Flight (2011) #4, Alpha Flight (2004) #4, Alpha Flight (1983) #4, Alpha Flight (2011) #5, Alpha Flight (1983) #5, Alpha Flight (2004) #5, Alpha Flight (1983) #6, Alpha Flight (2011) #6, Alpha Flight (2004) #6, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/1/60/52695277ee088.jpg',
--     ''
--   ),(
--     1009163,
--     'Aurora',
--     'Age of Apocalypse: The Chosen (1995) #1, Alpha Flight (1983) #1, Alpha Flight (2011) #1, Alpha Flight (2011) #1 (Eaglesham Variant), Alpha Flight (1983) #2, Alpha Flight (2011) #2, Alpha Flight (2011) #3, Alpha Flight (1983) #3, Alpha Flight (1983) #4, Alpha Flight (1983) #7, Alpha Flight (1983) #8, Alpha Flight (1983) #10, Alpha Flight (1983) #11, Alpha Flight (1983) #12, Alpha Flight (2004) #12, Alpha Flight (1983) #13, Alpha Flight (1983) #14, Alpha Flight (1983) #15, Alpha Flight (1983) #16, Alpha Flight (1983) #17, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/f/10/4c004203f1072.jpg',
--     ''
--   ),(
--     1009257,
--     'Cyclops',
--     'Age of Apocalypse: The Chosen (1995) #1, Adventures of Cyclops & Phoenix (1994) #1, Adventures of Cyclops & Phoenix (1994) #2, Adventures of Cyclops & Phoenix (1994) #3, Adventures of Cyclops & Phoenix (1994) #4, Age of X: Alpha (2010) #1, Age of X: Universe (2011) #1, Alpha Flight (1983) #1, Alpha Flight (1983) #110, Alpha Flight (1983) #111, Amazing Spider-Man (1999) #661 (X-Men Art Variant), Astonishing X-Men (2004) #1, Astonishing X-Men (2004) #2, Astonishing X-Men (2004) #3, Astonishing X-Men (2004) #4, Astonishing X-Men (2004) #5, Astonishing X-Men (2004) #6, Astonishing X-Men (2004) #7, Astonishing X-Men (2004) #8, Astonishing X-Men (2004) #9, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/6/70/526547e2d90ad.jpg',
--     ''
--   ),(
--     1009262,
--     'Daredevil',
--     'ACTS OF VENGEANCE CROSSOVERS OMNIBUS (Hardcover), ACTS OF VENGEANCE CROSSOVERS OMNIBUS (DM Only) (Hardcover), Alias (2001) #10, Alias Omnibus (Hardcover), Alpha Flight (1983) #1, Alpha Flight (1983) #127, Amazing Spider-Man (1999) #1, The Amazing Spider-Man (1963) #16, The Amazing Spider-Man (1963) #396, Amazing Spider-Man (1999) #538, Amazing Spider-Man (1999) #566, Amazing Spider-Man (1999) #567, Amazing Spider-Man (1999) #587, Amazing Spider-Man (1999) #600, Amazing Spider-Man (1999) #600 (2ND PRINTING VARIANT), Amazing Spider-Man (1999) #677, Amazing Spider-Man Annual (1964) #3, Amazing Spider-Man Annual (1964) #15, Amazing Spider-Man: Extra! (2008) #1, Astonishing Tales (2009) #4, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/d/50/50febb79985ee.jpg',
--     'Abandoned by his mother, Matt Murdock was raised by his father, boxer \"Battling Jack\" Murdock, in Hells Kitchen. Realizing that rules were needed to prevent people from behaving badly, young Matt decided to study law; however, when he saved a man from an oncoming truck, it spilled a radioactive cargo that rendered Matt blind while enhancing his remaining senses. Under the harsh tutelage of blind martial arts master Stick, Matt mastered his heightened senses and became a formidable fighter.'
--   ),(
--     1009366,
--     'Invisible Woman',
--     '4 (2004) #1, 4 (2004) #2, 4 (2004) #3, 4 (2004) #4, 4 (2004) #5, 4 (2004) #6, 4 (2004) #7, 4 (2004) #8, 4 (2004) #9, 4 (2004) #10, 4 (2004) #11, 4 (2004) #12, 4 (2004) #19, 4 (2004) #20, 4 Vol. 1: Wolf at the Door (Trade Paperback), 4 Vol. 2: The Stuff of Nightmares (Trade Paperback), Adam: Legend of the Blue Marvel (2008) #2, Age of X: Universe (2011) #1, Age of X: Universe (2011) #2, Alpha Flight (1983) #1, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/6/a0/52695b9cd40b6.jpg',
--     ''
--   ),(
--     1009459,
--     'Mr. Fantastic',
--     '4 (2004) #11, 4 (2004) #12, 4 (2004) #20, 4 Vol. 2: The Stuff of Nightmares (Trade Paperback), Adam: Legend of the Blue Marvel (2008) #2, Alpha Flight (1983) #1, Amazing Spider-Man (1999) #500, Amazing Spider-Man (1999) #657, Amazing Spider-Man (1999) #658, Amazing Spider-Man (1999) #658 (THOR HOLLYWOOD VARIANT), Amazing Spider-Man (1999) #659, Amazing Spider-Man (1999) #659 (2nd Printing Variant), Amazing Spider-Man (1999) #660, Amazing Spider-Man (1999) #661, Amazing Spider-Man (1999) #661 (X-Men Art Variant), Amazing Spider-Man (1999) #663, Amazing Spider-Man (1999) #665, Amazing Spider-Man (1999) #665 (AMAZING SPIDER-MAN 665 I AM CAPTAIN AMERICA VARIANT), Amazing Spider-Man (1999) #666, Amazing Spider-Man (1999) #667, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/d/c0/51127e9337538.jpg',
--     ''
--   ),(
--     1009472,
--     'Nightcrawler',
--     'Age of X-Man: The Amazing Nightcrawler (2019) #1, Age of X-Man: The Amazing Nightcrawler (2019) #2, Age of X-Man: The Amazing Nightcrawler (2019) #3, Age of X-Man: The Amazing Nightcrawler (2019) #4, Age of X-Man: The Amazing Nightcrawler (2019) #5, Age Of X-Man: The Amazing Nightcrawler (Trade Paperback), Alpha Flight (1983) #1, Alpha Flight (1983) #33, Amazing X-Men (2013) #1, Amazing X-Men (2013) #5, Amazing X-Men (2013) #6, Amazing X-Men (2013) #14, Astonishing X-Men (2004) #59, Astonishing X-Men (2004) #60, Astonishing X-Men (2004) #61, Avengers (1998) #10, Avengers (1998) #60, Avengers Assemble (Hardcover), Avengers Assemble Vol. 4 (Hardcover), Avengers Vol. 1: World Trust (Trade Paperback), ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/1/40/526034979bc98.jpg',
--     ''
--   ),(
--     1009476,
--     'Northstar',
--     'Age of Apocalypse: The Chosen (1995) #1, Age of X-Man: X-Tremists (2019) #4, Alpha Flight (1983) #1, Alpha Flight (2011) #1 (Eaglesham Variant), Alpha Flight (1983) #2, Alpha Flight (1983) #3, Alpha Flight (1983) #4, Alpha Flight (2011) #4, Alpha Flight (1983) #7, Alpha Flight (1983) #8, Alpha Flight (1983) #10, Alpha Flight (1983) #11, Alpha Flight (2004) #11, Alpha Flight (1983) #12, Alpha Flight (2004) #12, Alpha Flight (1983) #13, Alpha Flight (1983) #16, Alpha Flight (1983) #32, Alpha Flight (1983) #33, Alpha Flight (1983) #34, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/2/c0/4c003d15985a0.jpg',
--     ''
--   ),(
--     1009513,
--     'Puck',
--     'Alpha Flight (1983) #1, Alpha Flight (1983) #2, Alpha Flight (2011) #4, Alpha Flight (2004) #5, Alpha Flight (1983) #11, Alpha Flight (1983) #12, Alpha Flight (1983) #13, Alpha Flight (1983) #14, Alpha Flight (1983) #15, Alpha Flight (1983) #16, Alpha Flight (1983) #32, Alpha Flight (1983) #33, Alpha Flight (1983) #34, Alpha Flight (1983) #50, Alpha Flight (1983) #52, Alpha Flight (1983) #61, Alpha Flight (1983) #88, Alpha Flight (1983) #89, Alpha Flight (1983) #110, Alpha Flight (1983) #111, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/b/d0/4c003c7cc0d8f.jpg',
--     ''
--   ),(
--     1009560,
--     'Sasquatch (Walter Langkowski)',
--     'Alpha Flight (1983) #1, Alpha Flight (2011) #1, Alpha Flight (2004) #1, Alpha Flight (2011) #1 (Eaglesham Variant), Alpha Flight (2011) #2, Alpha Flight (2004) #2, Alpha Flight (1983) #2, Alpha Flight (2011) #2 (Eaglesham Variant), Alpha Flight (2004) #3, Alpha Flight (2011) #3, Alpha Flight (1983) #3, Alpha Flight (2011) #3 (Eaglesham Variant), Alpha Flight (1983) #4, Alpha Flight (2004) #4, Alpha Flight (2011) #4, Alpha Flight (2004) #5, Alpha Flight (2004) #6, Alpha Flight (2004) #7, Alpha Flight (2004) #8, Alpha Flight (2004) #9, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg',
--     ''
--   ),(
--     1009576,
--     'Shaman',
--     'Alpha Flight (1983) #1, Alpha Flight (2011) #1, Alpha Flight (2011) #1 (Eaglesham Variant), Alpha Flight (1983) #2, Alpha Flight (1983) #3, Alpha Flight (2011) #3, Alpha Flight (2011) #3 (Eaglesham Variant), Alpha Flight (1983) #4, Alpha Flight (2011) #4, Alpha Flight (1983) #7, Alpha Flight (1983) #8, Alpha Flight (1983) #11, Alpha Flight (1983) #12, Alpha Flight (1983) #16, Alpha Flight (1983) #24, Alpha Flight (1983) #34, Alpha Flight (1983) #50, Alpha Flight (1983) #61, Alpha Flight (1983) #87, Alpha Flight (1983) #88, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg',
--     'Dr. Michael Twoyoungmen was a surgeon who found that modern science was insufficient to accomplish everything he wished to do, and so he turned to mysticism that his grandfather told him about.'
--   ),(
--     1009606,
--     'Snowbird',
--     'Alpha Flight (1983) #1, Alpha Flight (2011) #1 (Eaglesham Variant), Alpha Flight (2011) #2, Alpha Flight (1983) #2, Alpha Flight (2011) #2 (Eaglesham Variant), Alpha Flight (1983) #3, Alpha Flight (1983) #4, Alpha Flight (2011) #4, Alpha Flight (2004) #5, Alpha Flight (1983) #6, Alpha Flight (2004) #6, Alpha Flight (2004) #11, Alpha Flight (1983) #11, Alpha Flight (1983) #12, Alpha Flight (2004) #12, Alpha Flight (1983) #13, Alpha Flight (1983) #14, Alpha Flight (1983) #15, Alpha Flight (1983) #16, Alpha Flight (1983) #33, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/e/a0/4c003ae37eccd.jpg',
--     'Naryas origins trace back to ancient times when the Eskimo Gods of the North battled the mystical Great Beasts for the fate of the world.'
--   ),(
--     1009662,
--     'Thing',
--     '4 (2004) #1, 4 (2004) #2, 4 (2004) #3, 4 (2004) #4, 4 (2004) #5, 4 (2004) #6, 4 (2004) #7, 4 (2004) #8, 4 (2004) #10, 4 (2004) #12, 4 (2004) #19, 4 (2004) #20, 4 (2004) #22, 4 Vol. 1: Wolf at the Door (Trade Paperback), 4 Vol. 2: The Stuff of Nightmares (Trade Paperback), A+X (2012) #6, Alpha Flight (1983) #1, Amazing Spider-Man (1999) #653, Amazing Spider-Man (1999) #654, Amazing Spider-Man (1999) #654 (2nd Printing Variant), ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/9/00/527bb4d36b5c2.jpg',
--     'The radiation that mutated Reed Richards, Sue Storm and Johnny Storm into superhuman beings had also mutated Ben Grimm, transforming him into a grotesque, rock-hided strongman dubbed the Thing.'
--   ),(
--     1009695,
--     'Vindicator',
--     'Alpha Flight (1983) #1, Alpha Flight (2011) #1, Alpha Flight (2011) #1 (Eaglesham Variant), Alpha Flight (2011) #2, Alpha Flight (2011) #2 (Eaglesham Variant), Alpha Flight (2011) #3, Alpha Flight (2011) #3 (Eaglesham Variant), Alpha Flight (2011) #5, Alpha Flight (2004) #6, Alpha Flight (1983) #17, Alpha Flight (1983) #32, Alpha Flight (1983) #33, Alpha Flight (1983) #34, Alpha Flight (1983) #50, Alpha Flight (1983) #87, Alpha Flight (1983) #90, Black Panther (1998) #42, Black Panther (1998) #43, Black Panther (1998) #44, Chaos War: Alpha Flight (2010) #1, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/3/b0/4c003a7f39967.jpg',
--     'Heather McNeil-Hudson married James Hudson, founder of Canadian super-team, Alpha Flight, and donned a version of his Vindicator armor after his death.'
--   ),(
--     1009186,
--     'Black Knight (Sir Percy of Scandia)',
--     'Alpha Flight (1983) #61, Alpha Flight (1983) #110, Avengers (1998) #1, Avengers (1998) #2, Avengers (1998) #3, Avengers (1998) #4, Avengers (1996) #8, Avengers (1996) #9, Avengers (1998) #16, Avengers (1998) #17, Avengers (1998) #18, Avengers (1998) #38, Avengers (1998) #40, Avengers (1998) #41, Avengers (1998) #42, Avengers (1998) #44, Avengers (1998) #46, Avengers (1998) #48, Avengers (1998) #52, Avengers (1998) #53, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/9/b0/4ce59ed1590a7.jpg',
--     ''
--   ),(
--     1009243,
--     'Colossus',
--     'Age of Apocalypse: The Chosen (1995) #1, Age of X: Alpha (2010) #1, Age of X: Universe (2011) #1, Age of X: Universe (2011) #2, Alpha Flight (1983) #17, Alpha Flight (1983) #33, Alpha Flight (1983) #61, Amazing X-Men (2013) #19, Astonishing X-Men (2004) #4, Astonishing X-Men (2004) #5, Astonishing X-Men (2004) #6, Astonishing X-Men (2004) #8, Astonishing X-Men (2004) #11, Astonishing X-Men (2004) #12, Astonishing X-Men (2004) #13, Astonishing X-Men (2004) #14, Astonishing X-Men (2017) #14, Astonishing X-Men (2004) #15, Astonishing X-Men (2017) #15, Astonishing X-Men (2004) #16, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/6/e0/51127cf4b996f.jpg',
--     ''
--   ),(
--     1009255,
--     'Crystal',
--     'Alpha Flight (1983) #61, Avengers (1998) #1, Avengers (1998) #2, Avengers (1998) #3, Avengers (1998) #4, Avengers (1963) #110, Avengers (1963) #188, Avengers (1963) #353, Avengers (1963) #354, Avengers (1963) #361, Avengers (1963) #365, Avengers (1963) #366, Avengers (1963) #369, Avengers (1963) #370, Avengers (1963) #372, Avengers (1963) #373, Avengers (1963) #374, Avengers (1963) #376, Avengers (1963) #379, Avengers (1963) #380, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/6/c0/52695564bcf1e.jpg',
--     ''
--   ),(
--     1009267,
--     'Dazzler',
--     'A-Force (2016) #6, A-Force (2016) #7, A-Force (2016) #8, A-Force (2016) #9, A-Force (2016) #10, Age of X: Alpha (2010) #1, Alpha Flight (1983) #61, Astonishing X-Men (2017) #14, Astonishing X-Men (2017) #15, Astonishing X-Men (2017) #16, Astonishing X-Men (2004) #60, Astonishing X-Men (2004) #61, Avengers (1963) #221, Avengers: The Initiative (2007) #27 (70TH FRAME VARIANT), Beauty and the Beast (1985) #1, Beauty and the Beast (1985) #2, Beauty and the Beast (1985) #3, Beauty and the Beast (1985) #4, Classic X-Men (1986) #36, Classic X-Men (1986) #37, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/6/10/4fe364b0a2177.jpg',
--     ''
--   ),(
--     1009337,
--     'Havok',
--     'Age of Apocalypse: The Chosen (1995) #1, Alpha Flight (1983) #61, Astonishing X-Men (2017) #13, Astonishing X-Men (2017) #14, Astonishing X-Men (2017) #15, Astonishing X-Men (2017) #16, Astonishing X-Men (2017) #17, Cable and X-Force (2012) #3, Cable and X-Force (2012) #9, Cable and X-Force (2012) #10, CLANDESTINE CLASSIC PREMIERE HC (Hardcover), Classic X-Men (1986) #5, Classic X-Men (1986) #12, Classic X-Men (1986) #13, Classic X-Men (1986) #33, Decimation: X-Men the Day After (Trade Paperback), Defenders (1972) #63, Earth X (1999) #5, Earth X (1999) #6, EARTH X TPB [NEW PRINTING] (Trade Paperback), ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/9/e0/5261659ebeaf8.jpg',
--     ''
--   ),(
--     1009408,
--     'Longshot',
--     'Alpha Flight (1983) #61, Cable (2017) #150, Cable (2017) #152, Cable (2017) #153, Cable Vol. 2: The Newer Mutants (Trade Paperback), Domino (2018) #10, Exiles (2001) #90, Longshot (1985) #1, Longshot (1985) #2, Longshot (1985) #3, Longshot (1985) #4, Longshot (1985) #5, Longshot (1985) #6, Marvel Comics Presents (1988) #16, Marvel Fanfare (1982) #38, New Mutants Classic Vol. 6 (Trade Paperback), Uncanny X-Men (1963), Uncanny X-Men (1963) #215, Uncanny X-Men (1963) #216, Uncanny X-Men (1963) #217, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/5/60/4c003d6176aa1.jpg',
--     ''
--   ),(
--     1009512,
--     'Psylocke',
--     '5 Ronin (2010) #4, 5 Ronin (2010) #4 (MACK COVER), ACTS OF VENGEANCE CROSSOVERS OMNIBUS (Hardcover), ACTS OF VENGEANCE CROSSOVERS OMNIBUS (DM Only) (Hardcover), Alpha Flight (1983) #61, Astonishing X-Men (2017) #1, Astonishing X-Men (2017) #2, Astonishing X-Men (2017) #4, Astonishing X-Men (2017) #5, Astonishing X-Men (2017) #6, Astonishing X-Men (2017) #7, Astonishing X-Men (2017) #8, Astonishing X-Men (2017) #9, Astonishing X-Men (2017) #11, Astonishing X-Men (2017) #12, Astonishing X-Men by Charles Soule Vol. 1: Life of X (Trade Paperback), Astonishing X-Men By Charles Soule Vol. 2: A Man Called X (Trade Paperback), Avengers Assemble Vol. 4 (Hardcover), Avengers Vs. X-Men: Versus (2011) #4, Cable (1993) #16, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/1/50/526961ce86539.jpg',
--     ''
--   ),(
--     1009546,
--     'Rogue',
--     'A+X (2012) #2, Age of X: Alpha (2010) #1, Age of X: Universe (2011) #1, Age of X: Universe (2011) #2, Alpha Flight (1983) #33, Alpha Flight (1983) #61, Astonishing X-Men (2017) #1, Astonishing X-Men (2017) #2, Astonishing X-Men (2017) #4, Astonishing X-Men (2017) #5, Astonishing X-Men (2017) #6, Astonishing X-Men (2017) #7, Astonishing X-Men (2017) #8, Astonishing X-Men (2017) #9, Astonishing X-Men (2017) #12, Astonishing X-Men (2004) #51 (Djurdjevic Variant), Astonishing X-Men by Charles Soule Vol. 1: Life of X (Trade Paperback), Avengers (1998) #10, Avengers (1963) #401, Avengers Annual (1967) #10, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/3/10/5112d84e2166c.jpg',
--     ''
--   ),(
--     1009583,
--     'She-Hulk (Jennifer Walters)',
--     'Marvel New Years Eve Special Infinite Comic (2017) #1, A-Force (2016) #6, A-Force (2016) #7, A-Force (2016) #8, A-Force (2016) #10, Adam: Legend of the Blue Marvel (2008) #1, Age of Ultron (2013) #3, Age of Ultron (2013) #4, All-New Savage She-Hulk (2009) #1, All-New Savage She-Hulk (2009) #2, All-New Savage She-Hulk (2009) #3, All-New, All-Different Avengers Annual (2016) #1, Alpha Flight (1983) #61, Alpha Flight (1983) #111, Alpha Flight (1983) #127, Atlantis Attacks (2011) #1, Atlantis Attacks (DM Only) (2011), Atlantis Attacks: The Original Epic (Trade Paperback), Avengers (2018) #1, Avengers (1998) #1, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/7/20/527bb5d64599e.jpg',
--     'Seriously wounded, young lawyer Jennifer Walters was given a blood transfusion by her cousin Bruce Banner. Usually in better control of her powers and temper than the Hulk, She-Hulk has been a high profile New York lawyer as well as an upstanding member of both the Avengers and Fantastic Four.'
--   ),(
--     1009629,
--     'Storm',
--     'Age of Apocalypse: The Chosen (1995) #1, A+X (2012) #3, Age of X: Alpha (2010) #1, Alpha Flight (1983) #17, Alpha Flight (1983) #33, Alpha Flight (1983) #61, Alpha Flight (1983) #127, Astonishing X-Men (2004) #25, Astonishing X-Men (2004) #26, Astonishing X-Men (2004) #27, Astonishing X-Men (2004) #28, Astonishing X-Men (2004) #29, Astonishing X-Men (2004) #30, Astonishing X-Men (2004) #32, Astonishing X-Men (2004) #33, Astonishing X-Men (2004) #34, Astonishing X-Men (2004) #35, Astonishing X-Men (2004) #38, Astonishing X-Men (2004) #40, Astonishing X-Men (2004) #44, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/6/40/526963dad214d.jpg',
--     'Ororo Monroe is the descendant of an ancient line of African priestesses, all of whom have white hair, blue eyes, and the potential to wield magic.'
--   ),(
--     1009646,
--     'Talisman (Elizabeth Twoyoungmen)',
--     'Alpha Flight (1983) #19, Alpha Flight (1983) #61, Alpha Flight (1983) #87, Alpha Flight (1983) #88, Alpha Flight (1983) #89, Alpha Flight (1983) #90, Alpha Flight (1983) #110, Alpha Flight (1983) #111, Alpha Flight (1983) #127, Doctor Strange, Sorcerer Supreme (1988) #55, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg',
--     'Elizabeth Twoyoungmen was born in Calgary, Alberta, Canada, the daughter of Michael Twoyoungman (Shaman) of the Canadian superhero team Alpha Flight.'
--   ),(
--     1009718,
--     'Wolverine',
--     '5 Ronin (Hardcover), 5 Ronin (2010) #1, 5 Ronin (2010) #1 (Variant), A+X (2012) #1, A+X (2012) #4, A+X (2012) #6, A+X (2012) #9, Acts Of Evil (Trade Paperback), ACTS OF VENGEANCE CROSSOVERS OMNIBUS (Hardcover), ACTS OF VENGEANCE CROSSOVERS OMNIBUS (DM Only) (Hardcover), Age of X: Alpha (2010) #1, Agents of Atlas (2009) #3 (Wolverine Art Appreciation Variant), Agents of Atlas (2009) #5, Agents of Atlas (2009) #5 (MCGUINNESS VARIANT), Agents of Atlas: The Complete Collection Vol. 1 (Trade Paperback), All-New Wolverine Vol. 5: Orphans of X (Trade Paperback), All-New X-Men (2012) #2, Alpha Flight (1983) #3, Alpha Flight (2011) #7, Alpha Flight (1983) #13, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/2/60/537bcaef0f6cf.jpg',
--     'Born with super-human senses and the power to heal from almost any wound, Wolverine was captured by a secret Canadian organization and given an unbreakable skeleton and claws. Treated like an animal, it took years for him to control himself. Now, hes a premiere member of both the X-Men and the Avengers.'
--   ),(
--     1009282,
--     'Doctor Strange',
--     'A+X (2012) #9, ACTS OF VENGEANCE CROSSOVERS OMNIBUS (Hardcover), ACTS OF VENGEANCE CROSSOVERS OMNIBUS (DM Only) (Hardcover), All-New Guardians of the Galaxy (2017) #12, All-New Wolverine (2015) #4, Alpha Flight (1983) #127, The Amazing Spider-Man (1963) #336, Amazing Spider-Man (1999) #500, Amazing Spider-Man (1999) #504, Amazing Spider-Man (1999) #639, Amazing Spider-Man (1999) #640, Amazing Spider-Man (1999) #673, Amazing Spider-Man Annual (1964) #1, Amazing Spider-Man Annual (1964) #2, Amazing Spider-Man Annual (1964) #14, Amazing Spider-Man Vol. 6 (Trade Paperback), AMAZING SPIDER-MAN VOL. 7: BOOK OF EZEKIEL TPB (Trade Paperback), Amazing Spider-Man Vol. 7: The Book of Ezekiel (Trade Paperback), Avengers (2018) #1, Avengers (2018) #2, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/5/f0/5261a85a501fe.jpg',
--     ''
--   ),(
--     1009306,
--     'Firestar',
--     'Alpha Flight (1983) #127, The Amazing Spider-Man (1963) #379, The Amazing Spider-Man (1963) #380, Amazing Spider-Man (1999) #666, Amazing Spider-Man (1999) #667, Amazing Spider-Man (1999) #668, Amazing X-Men (2013) #1, Amazing X-Men (2013) #2, Amazing X-Men (2013) #3, Amazing X-Men (2013) #4, Amazing X-Men (2013) #5, Amazing X-Men (2013) #6, Amazing X-Men (2013) #14, Amazing X-Men (2013) #19, Avengers (1998) #1, Avengers (1998) #2, Avengers (1998) #3, Avengers (1998) #4, Avengers (1998) #7, Avengers (1998) #8, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/7/03/526032b8247e8.jpg',
--     ''
--   ),(
--     1009697,
--     'Vision',
--     'Age of Ultron (2013) #4, All-New, All-Different Avengers (2015) #10, All-New, All-Different Avengers (2015) #11, All-New, All-Different Avengers (2015) #12, All-New, All-Different Avengers (2015) #13, ALL-NEW, ALL-DIFFERENT AVENGERS HC (Hardcover), Alpha Flight (1983) #127, Avengers (1996) #1, Avengers (2016) #1, Avengers (2010) #1, Avengers (1998) #1, Avengers (2010) #1 (ROMITA JR. VARIANT), Avengers (2010) #1 (DJURDJEVIC VARIANT), Avengers (2010) #1 (ROMITA SR. VARIANT), Avengers (2010) #1 (I AM AN AVENGER BLANK COVER VARIANT), Avengers (2010) #1 (HEROIC AGE VARIANT), Avengers (1998) #2, Avengers (1996) #2, Avengers (1998) #3, Avengers (1996) #3, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/9/d0/5111527040594.jpg',
--     'The metal monstrosity called Ultron created the synthetic humanoid known as the Vision from the remains of the original android Human Torch of the 1940s to serve as a vehicle of vengeance against the Avengers.'
--   ),(
--     1009719,
--     'Wonder Man',
--     'Adam: Legend of the Blue Marvel (2008) #1, Alpha Flight (1983) #127, Avengers (2010) #1, Avengers (2010) #1 (HEROIC AGE VARIANT), Avengers (2010) #1 (ROMITA JR. VARIANT), Avengers (2010) #1 (DJURDJEVIC VARIANT), Avengers (2010) #1 (ROMITA SR. VARIANT), Avengers (2010) #1 (I AM AN AVENGER BLANK COVER VARIANT), Avengers (2010) #2, Avengers (1998) #2, Avengers (1998) #3, Avengers (1998) #4, Avengers (1998) #5, Avengers (1998) #6, Avengers (1998) #7, Avengers (1996) #7, Avengers (2010) #7, Avengers (1998) #8, Avengers (1996) #8, Avengers (1998) #9, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/5/40/4ce5a205a2322.jpg',
--     'Simon Williams agreed to undergo an experiment to give him superhuman powers, and Baron Zemo gave him the costumed guise of Wonder Man, warning Simon that he would die without further treatments from Zemo in order to ensure his loyalty, but Simon betrayed Zemo to the Avengers and ultimately joined their ranks.'
--   ),(
--     1009276,
--     'Doctor Octopus',
--     'Alias (2001) #15, Alias Omnibus (Hardcover), The Amazing Spider-Man (1963) #3, The Amazing Spider-Man (1963) #11, The Amazing Spider-Man (1963) #12, The Amazing Spider-Man (2015) #20, The Amazing Spider-Man (1963) #334, The Amazing Spider-Man (1963) #335, The Amazing Spider-Man (1963) #336, The Amazing Spider-Man (1963) #337, The Amazing Spider-Man (1963) #338, The Amazing Spider-Man (1963) #339, The Amazing Spider-Man (1963) #397, The Amazing Spider-Man (1963) #398, Amazing Spider-Man (1999) #500, Amazing Spider-Man (1999) #600, Amazing Spider-Man (1999) #600 (2ND PRINTING VARIANT), Amazing Spider-Man (1999) #634 (2ND PRINTING VARIANT), Amazing Spider-Man (1999) #642, Amazing Spider-Man (1999) #643, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/b/b0/528d31b62eaba.jpg',
--     ''
--   ),(
--     1009287,
--     'Electro',
--     'The Amazing Spider-Man (1963) #9, The Amazing Spider-Man (1963) #334, The Amazing Spider-Man (1963) #337, The Amazing Spider-Man (1963) #338, The Amazing Spider-Man (1963) #339, Amazing Spider-Man (1999) #612, Amazing Spider-Man (1999) #612 (VARIANT), Amazing Spider-Man (1999) #612 (GRANOV 50/50 COVER), Amazing Spider-Man (1999) #613, Amazing Spider-Man (1999) #614, Amazing Spider-Man (1999) #623, Amazing Spider-Man (1999) #623 (VILLAIN VARIANT), Amazing Spider-Man (1999) #623 (JUSKO VARIANT), Amazing Spider-Man (1999) #642, Amazing Spider-Man (1999) #643, Amazing Spider-Man (1999) #643 (SHS VARIANT), Amazing Spider-Man (1999) #643 (JIMENEZ VARIANT), Amazing Spider-Man (1999) #645 (SPIDEY VS. VARIANT), Amazing Spider-Man (1999) #645 (SPIDEY VS. VARIANT), Amazing Spider-Man Annual (1964) #1, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/5/60/4c003f1214bd7.jpg',
--     ''
--   ),(
--     1009708,
--     'Mary Jane Watson',
--     'Spider-Man: 101 Ways to End the Clone Saga (1997) #1, Amazing Mary Jane (2019) #1, Amazing Mary Jane (2019) #2, Amazing Mary Jane (2019) #3, Amazing Mary Jane (2019) #4, Amazing Mary Jane (2019) #6, Amazing Spider-Man (1999) #1, The Amazing Spider-Man (2015) #15, The Amazing Spider-Man (1963) #334, The Amazing Spider-Man (1963) #336, The Amazing Spider-Man (1963) #337, The Amazing Spider-Man (1963) #338, The Amazing Spider-Man (1963) #339, The Amazing Spider-Man (1963) #378, The Amazing Spider-Man (1963) #379, The Amazing Spider-Man (1963) #380, The Amazing Spider-Man (1963) #394, The Amazing Spider-Man (1963) #395, The Amazing Spider-Man (1963) #396, The Amazing Spider-Man (1963) #397, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/2/03/528d33d000749.jpg',
--     'Mary Jane Watson was the guiding light in Peter Parkers life, and their love had overcome countless obstacles.'
--   ),(
--     1009558,
--     'Sandman',
--     'The Amazing Spider-Man (1963) #4, The Amazing Spider-Man (1963) #18, The Amazing Spider-Man (1963) #19, The Amazing Spider-Man (1963) #337, The Amazing Spider-Man (1963) #338, The Amazing Spider-Man (1963) #339, Amazing Spider-Man (1999) #612, Amazing Spider-Man (1999) #612 (VARIANT), Amazing Spider-Man (1999) #612 (GRANOV 50/50 COVER), Amazing Spider-Man (1999) #615, Amazing Spider-Man (1999) #615 (Variant Edition), Amazing Spider-Man (1999) #616, Amazing Spider-Man (1999) #634 (2ND PRINTING VARIANT), Amazing Spider-Man (1999) #642, Amazing Spider-Man (1999) #643, Amazing Spider-Man (1999) #643 (JIMENEZ VARIANT), Amazing Spider-Man (1999) #643 (SHS VARIANT), Amazing Spider-Man (1999) #645, Amazing Spider-Man (1999) #645 (SPIDEY VS. VARIANT), Amazing Spider-Man (1999) #645 (SPIDEY VS. VARIANT), ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg',
--     ''
--   ),(
--     1009280,
--     'Dormammu',
--     'Amazing Spider-Man (1999) #500, Amazing Spider-Man (1999) #504, Amazing Spider-Man Vol. 6 (Trade Paperback), AMAZING SPIDER-MAN VOL. 7: BOOK OF EZEKIEL TPB (Trade Paperback), Amazing Spider-Man Vol. 7: The Book of Ezekiel (Trade Paperback), Avengers (1963) #115, Defenders (2005) #3, Defenders: Indefensible (2005), Doctor Strange (1968) #172, Doctor Strange (1968) #173, Doctor Strange (2015) #389, Doctor Strange, Sorcerer Supreme (1988) #1, Doctor Strange, Sorcerer Supreme (1988) #2, Doctor Strange, Sorcerer Supreme (1988) #7, Doctor Strange, Sorcerer Supreme (1988) #9, Doctor Strange, Sorcerer Supreme (1988) #21, Doctor Strange, Sorcerer Supreme (1988) #22, Doctor Strange, Sorcerer Supreme (1988) #23, Doctor Strange, Sorcerer Supreme (1988) #24, Doctor Strange, Sorcerer Supreme (1988) #28, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/b/70/4c003f1ddc0e5.jpg',
--     ''
--   ),(
--     1009490,
--     'May Parker',
--     'Amazing Spider-Man (1999) #1, The Amazing Spider-Man (1963) #379, The Amazing Spider-Man (1963) #380, The Amazing Spider-Man (1963) #394, The Amazing Spider-Man (1963) #398, Amazing Spider-Man (1999) #500, Amazing Spider-Man (1999) #501, Amazing Spider-Man (1999) #506, Amazing Spider-Man (1999) #509, Amazing Spider-Man (1999) #510, Amazing Spider-Man (1999) #544, Amazing Spider-Man (1999) #546, Amazing Spider-Man (1999) #579, Amazing Spider-Man (1999) #580, Amazing Spider-Man (1999) #591, Amazing Spider-Man (1999) #592, Amazing Spider-Man (1999) #599, Amazing Spider-Man (1999) #600, Amazing Spider-Man (1999) #600 (2ND PRINTING VARIANT), Amazing Spider-Man (1999) #608, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/c/30/535fec80bb4a6.jpg',
--     ''
--   ),(
--     1009325,
--     'Norman Osborn',
--     'Marvel New Years Eve Special Infinite Comic (2017) #1, Agents of Atlas (2009) #2, Amazing Spider-Man (1999) #500, Amazing Spider-Man (1999) #513, Amazing Spider-Man (1999) #514, Amazing Spider-Man (1999) #569, Amazing Spider-Man (1999) #571, Amazing Spider-Man (1999) #573, Amazing Spider-Man (1999) #584, Amazing Spider-Man (1999) #586, Amazing Spider-Man (1999) #588, Amazing Spider-Man (1999) #594, Amazing Spider-Man (1999) #595, Amazing Spider-Man (1999) #595 (GRANOV VARIANT), Amazing Spider-Man (1999) #596, Amazing Spider-Man (1999) #597, Amazing Spider-Man (1999) #598, Amazing Spider-Man (1999) #599, Amazing Spider-Man (1999) #644 (BACHALO VARIANT), Amazing Spider-Man (1999) #645 (SPIDEY VS. VARIANT), ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/3/f0/51e829cd06982.jpg',
--     ''
--   ),(
--     1009692,
--     'Toxin (Eddie Brock)',
--     'Amazing Spider-Man (1999) #500, Amazing Spider-Man (1999) #568, Amazing Spider-Man (1999) #569, Amazing Spider-Man (1999) #570, Amazing Spider-Man (1999) #573, Amazing Spider-Man (1999) #642, Amazing Spider-Man (1999) #647 (MCNIVEN VARIANT), Amazing Spider-Man (1999) #663, Amazing Spider-Man (1999) #664, Amazing Spider-Man (1999) #668 (2nd Printing Variant), Amazing Spider-Man (1999) #669, Amazing Spider-Man (1999) #669 (Slott Variant), Amazing Spider-Man (1999) #669 (Architect Variant), Amazing Spider-Man Vol. 6 (Trade Paperback), Amazing Spider-Man: Extra! (2008) #2, Daredevil (1964) #321, Daredevil (1964) #322, Daredevil (1964) #323, Earth X (1999) #3, Earth X (1999) #6, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/9/80/52bc827d4ed09.jpg',
--     ''
--   ),(
--     1009372,
--     'J. Jonah Jameson',
--     'Absolute Carnage: Miles Morales (2019) #3, AGE OF HEROES TPB (Trade Paperback), Alias (2001) #10, Alias (2001) #16, Alias (2001) #17, Alias (2001) #18, Alias Omnibus (Hardcover), Amazing Spider-Man (1999) #1, The Amazing Spider-Man (1963) #25, Amazing Spider-Man (1999) #538, Amazing Spider-Man (1999) #546, Amazing Spider-Man (1999) #547, Amazing Spider-Man (1999) #577, Amazing Spider-Man (1999) #578, Amazing Spider-Man (1999) #579, Amazing Spider-Man (1999) #583, Amazing Spider-Man (1999) #587, Amazing Spider-Man (1999) #591, Amazing Spider-Man (1999) #592, Amazing Spider-Man (1999) #594, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/b/d0/5269582835689.jpg',
--     ''
--   ),(
--     1009389,
--     'Kingpin',
--     'Amazing Spider-Girl (2006) #5, Amazing Spider-Girl (2006) #17, The Amazing Spider-Man (1963) #336, Amazing Spider-Man (1999) #538, Amazing Spider-Man (1999) #541, Amazing Spider-Man (1999) #542, Amazing Spider-Man (1999) #640, Amazing Spider-Man (1999) #648, Amazing Spider-Man (1999) #649, Amazing Spider-Man (1999) #649 (2ND PRINTING VARIANT), Amazing Spider-Man (1999) #650, Amazing Spider-Man (1999) #650 (2ND PRINTING VARIANT), Amazing Spider-Man (1999) #651, Amazing Spider-Man (1999) #651 (2nd Printing Variant), Amazing Spider-Man (1999) #651 (TRON VARIANT), Amazing Spider-Man (1999) #674, Amazing Spider-Man (1999) #690, Amazing Spider-Man Annual (1964) #19, Amazing Spider-Man: Family Business (Trade Paperback), Black Panther: The Most Dangerous Man Alive  (2010) #525, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/9/60/526034fb5aff7.jpg',
--     ''
--   ),(
--     1009608,
--     'Spider-Woman (Jessica Drew)',
--     'A+X (2012) #8, Alias (2001) #1, Alias (2001) #2, Alias (2001) #3, Alias Omnibus (Hardcover), Amazing Spider-Man (1999) #519, Amazing Spider-Man (1999) #520, Amazing Spider-Man (1999) #522, Amazing Spider-Man (1999) #523, Amazing Spider-Man (1999) #538, Amazing Spider-Man (1999) #666, Amazing Spider-Man (1999) #667, Amazing Spider-Man (1999) #668, Amazing Spider-Man Annual (1964) #39, AMAZING SPIDER-MAN VOL. 10: NEW AVENGERS TPB (Trade Paperback), Amazing Spider-Man: The Sins of Norman Osborn (2020) #1, Avengers (2010) #1, Avengers (2010) #1 (ROMITA JR. VARIANT), Avengers (2010) #1 (DJURDJEVIC VARIANT), Avengers (2010) #1 (ROMITA SR. VARIANT), ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/b/50/5265479097743.jpg',
--     'When young Jessica Drew suffered uranium poisoning in 1931, her father was forced to inject her with his untested spider serum and seal her in a genetic accelerator.'
--   ),(
--     1010782,
--     'Ben Urich',
--     'Alias (2001) #10, Alias Omnibus (Hardcover), Amazing Spider-Man (1999) #608, Amazing Spider-Man Annual (1964) #15, Amazing Spider-Man Annual (1964) #16, Daily Bugle (1996) #1, Daily Bugle (1996) #2, Daily Bugle (1996) #3, Daredevil (1998) #16, Daredevil (1998) #17, Daredevil (1998) #76, Daredevil (1998) #83, Daredevil (1964) #160, Daredevil (1964) #164, Daredevil (1964) #179, Daredevil (1964) #180, Daredevil (1964) #227, Daredevil (1964) #228, Daredevil (1964) #229, Daredevil (1964) #230, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/5/90/4c00373d10e5e.jpg',
--     'Ben Urich is a reporter for the Daily Bugle who has many ties to the citys superhero community.'
--   ),(
--     1010325,
--     'Betty Brant',
--     'Alias (2001) #10, Alias Omnibus (Hardcover), Amazing Spider-Man (1999) #614, Amazing Spider-Man (1999) #622, Amazing Spider-Man (1999) #647 (MCNIVEN VARIANT), Amazing Spider-Man (1999) #654.1, Amazing Spider-Man (1999) #655, Amazing Spider-Man (1999) #655 (2nd Printing Variant), Amazing Spider-Man (1999) #665, Amazing Spider-Man (1999) #665 (AMAZING SPIDER-MAN 665 I AM CAPTAIN AMERICA VARIANT), Amazing Spider-Man (1999) #666, Amazing Spider-Man Annual (1964) #16, Amazing Spider-Man Annual (1964) #21, Amazing Spider-Man Annual (2010) #37, Amazing-Spider-Man: Worldwide Vol. 8 (Trade Paperback), Avengers: The Initiative (2007) #7, Daily Bugle (1996) #1, Daily Bugle (1996) #2, Daily Bugle (1996) #3, Peter Parker, the Spectacular Spider-Man (1976) #85, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/9/a0/4c7c644f453fb.jpg',
--     ''
--   ),(
--     1011095,
--     'Captain Marvel (Monica Rambeau)',
--     'Amazing Spider-Man Annual (1964) #16, Avengers (1963) #227, Avengers (1963) #232, Avengers (1963) #238, Avengers (1963) #240, Avengers (1963) #245, Avengers (1963) #271, Avengers (1963) #283, Avengers (1963) #284, Avengers (1963) #285, Avengers (1963) #286, Avengers (1963) #287, Avengers (1963) #288, Avengers (1963) #290, Avengers (1963) #291, Avengers (1963) #292, Avengers (1963) #293, Avengers (1963) #294, Avengers Annual (1967) #14, Avengers Annual (1967) #16, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/9/00/4c0030bee8c86.jpg',
--     ''
--   ),(
--     1010774,
--     'Daily Bugle',
--     'Amazing Spider-Man Annual (1964) #16, Amazing Spider-Man: The Daily Bugle (2020) #2, Secret Empire: Brave New World (2017) #3, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/2/f0/4ce5a31605544.jpg',
--     ''
--   ),(
--     1009619,
--     'Gwen Stacy',
--     'The Amazing Spider-Man (2015) #23, The Amazing Spider-Man (1963) #399, Amazing Spider-Man (1999) #509, Amazing Spider-Man (1999) #510, Amazing Spider-Man (1999) #655, Amazing Spider-Man (1999) #655 (2nd Printing Variant), Amazing Spider-Man Annual (1964) #16, AMAZING SPIDER-MAN EPIC COLLECTION: THE GOBLINS LAST STAND TPB (Trade Paperback), Amazing Spider-Man Family (2008) #2, Amazing Spider-Man Family (2008) #4, Amazing Spider-Man Vol. 8: Sins Past (Trade Paperback), Amazing Spider-Man: The Movie (2012) #1, Amazing Spider-Man: The Movie (2012) #2, Deadpool (1997) #11, Gwen Stacy (2020) #2, Heroes Reborn: Night-Gwen (2021) #1, King In Black: Gwenom Vs. Carnage (Trade Paperback), MARVEL MASTERWORKS: THE AMAZING SPIDER-MAN VOL. 7 HC (Hardcover), MARVEL VISIONARIES: GIL KANE TPB (Trade Paperback), Marvel Visionaries: Stan Lee (Hardcover), ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/8/40/4c003ad20ab78.jpg',
--     'Peter Parkers first true love, Gwen Stacy was killed during a rescue attempt by Spider-Man, the guilt from which Peter has never overcome.'
--   ),(
--     1009545,
--     'Robbie Robertson',
--     'Alias (2001) #10, Alias Omnibus (Hardcover), Amazing Spider-Man (1999) #1, Amazing Spider-Man (1999) #520, Amazing Spider-Man (1999) #580, Amazing Spider-Man (1999) #615, Amazing Spider-Man (1999) #654, Amazing Spider-Man (1999) #655, Amazing Spider-Man (1999) #655 (2nd Printing Variant), Amazing Spider-Man (1999) #679, Amazing Spider-Man (1999) #695, Amazing Spider-Man Annual (1964) #15, Amazing Spider-Man Annual (1964) #16, Amazing Spider-Man Annual (1964) #19, Amazing Spider-Man Annual (1964) #21, Amazing Spider-Man Annual (2010) #37, AMAZING SPIDER-MAN VOL. 10: NEW AVENGERS TPB (Trade Paperback), Daredevil (1964) #227, Daredevil (1964) #230, Fantastic Four (1961) #242, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/5/a0/4c003c50a94b7.jpg',
--     ''
--   ),(
--     1009489,
--     'Ben Parker',
--     'Amazing Spider-Man (1999) #501, Amazing Spider-Man (1999) #600, Amazing Spider-Man (1999) #600 (2ND PRINTING VARIANT), Amazing Spider-Man (1999) #655, Amazing Spider-Man (1999) #655 (2nd Printing Variant), Amazing Spider-Man Annual (2011) #38, Amazing Spider-Man Annual (1964) #39, Amazing Spider-Man Vol. 6 (Trade Paperback), Amazing Spider-Man: The Movie (2012) #1, Bullet Points (Trade Paperback), Bullet Points (2006) #1, Bullet Points (2006) #2, Bullet Points (2006) #3, Bullet Points (2006) #4, Bullet Points (2006) #5, Friendly Neighborhood Spider-Man (2005) #8, Friendly Neighborhood Spider-Man (2005) #9, Friendly Neighborhood Spider-Man (2005) #10, Peter Parker, the Spectacular Spider-Man (1976) #221, Spectacular Spider-Man (2003) #27, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/8/c0/4c003d00c8ed9.jpg',
--     ''
--   ),(
--     1009491,
--     'Peter Parker',
--     'The Amazing Spider-Man (1963) #394, The Amazing Spider-Man (1963) #395, The Amazing Spider-Man (1963) #396, The Amazing Spider-Man (1963) #397, The Amazing Spider-Man (1963) #398, The Amazing Spider-Man (1963) #399, Amazing Spider-Man (1999) #502, Amazing Spider-Man (1999) #503, Amazing Spider-Man (1999) #505, Amazing Spider-Man (1999) #506, Amazing Spider-Man (1999) #507, Amazing Spider-Man (1999) #509, Amazing Spider-Man (1999) #510, Amazing Spider-Man (1999) #601, Amazing Spider-Man (1999) #602, Amazing Spider-Man (1999) #603, Amazing Spider-Man (1999) #604, Amazing Spider-Man (1999) #605, Amazing Spider-Man (1999) #608, Amazing Spider-Man (1999) #609, ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg',
--     ''
--   ),(
--     1009538,
--     'Iron Patriot (James Rhodes)',
--     'Art of Marvel Studios TPB Slipcase (Hardcover), West Coast Avengers (1985) #100, West Coast Avengers (1985) #101, West Coast Avengers Annual (1986) #8, Avengers: The Initiative (2007) #11, Avengers: The Initiative (2007) #12, Avengers: The Initiative (2007) #15, Avengers: The Initiative (2007) #16, Avengers: The Terminatrix Objective (1993) #1, Avengers: The Terminatrix Objective (1993) #2, Avengers: The Terminatrix Objective (1993) #3, Avengers: The Terminatrix Objective (1993) #4, The Crew (2003) #6, Gambit (2012) #13, Incredible Hulks (2010) #607 (MCGUINNESS VARIANT), Invincible Iron Man (2008) #1, Invincible Iron Man (2008) #2, Invincible Iron Man (2008) #25 (TRIMPE VARIANT), Invincible Iron Man (2008) #25 (2ND PRINTING VARIANT), Invincible Iron Man (2008) #25 (MOVIE VARIANT), ',
--     'http://i.annihil.us/u/prod/marvel/i/mg/6/70/526035f38cd5d.jpg',
--     'U.S. Air Force pilot and Tony Stark\s friend who has his own suit of Iron Man armor, nicknamed, \"War Machine.\"'
--   );





