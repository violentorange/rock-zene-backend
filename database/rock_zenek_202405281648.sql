﻿--
-- Script was generated by Devart dbForge Studio for MySQL, Version 9.2.105.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 2024.05.28 16:48:10
-- Server version: 10.4.28
-- Client version: 4.1
--

-- 
-- Disable foreign keys
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Set SQL mode
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

DROP DATABASE IF EXISTS rock_zenek;

CREATE DATABASE rock_zenek
CHARACTER SET utf8mb4
COLLATE utf8mb4_hungarian_ci;

--
-- Set default database
--
USE rock_zenek;

--
-- Create table `artists`
--
CREATE TABLE artists (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  artist varchar(1024) DEFAULT NULL,
  fame varchar(1024) DEFAULT NULL,
  popularity varchar(1024) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 69,
AVG_ROW_LENGTH = 244,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_hungarian_ci,
ROW_FORMAT = DYNAMIC;

--
-- Create table `songs`
--
CREATE TABLE songs (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  TITLE varchar(1024) DEFAULT NULL,
  ARTIST_ID bigint(20) DEFAULT NULL,
  TIME varchar(1024) DEFAULT NULL,
  BPM varchar(1024) DEFAULT NULL,
  YEAR bigint(20) DEFAULT NULL,
  GENRE varchar(1024) DEFAULT NULL,
  IMAGEURL varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 103,
AVG_ROW_LENGTH = 163,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_hungarian_ci,
ROW_FORMAT = DYNAMIC;

--
-- Create foreign key
--
ALTER TABLE songs
ADD CONSTRAINT FK_songs_ARTIST_ID FOREIGN KEY (ARTIST_ID)
REFERENCES artists (id) ON DELETE NO ACTION;

--
-- Create table `users`
--
CREATE TABLE users (
  id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(50) NOT NULL,
  email varchar(50) NOT NULL,
  password varchar(255) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 4,
AVG_ROW_LENGTH = 5461,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_hungarian_ci,
ROW_FORMAT = DYNAMIC;

-- 
-- Dumping data for table artists
--
INSERT INTO artists VALUES
(1, 'AC/DC', '0,55', '0,32'),
(2, 'Aerosmith', '0,93', '0,69'),
(3, 'Al Green', '0,73', '0,48'),
(4, 'Aretha Franklin', '0,39', '0,22'),
(5, 'Bee Gees', '0,68', '0,46'),
(6, 'Ben E. King', '0,68', '0,46'),
(7, 'Bill Haley and His Comets', '0,68', '0,46'),
(8, 'Billy Joel', '0,91', '0,68'),
(9, 'Bob Dylan', '0,49', '0,24'),
(10, 'Bob Marley & The Wailers', '0,49', '0,24'),
(11, 'Boston', '0,76', '0,54'),
(12, 'Bruce Springsteen', '0,91', '0,62'),
(13, 'Buddy Holly', '0,87', '0,63'),
(14, 'Buffalo Springfield', '0,64', '0,42'),
(15, 'Carl Perkins', '0,64', '0,42'),
(16, 'Carpenters', '0,64', '0,42'),
(17, 'Chubby Checker', '0,79', '0,54'),
(18, 'Chuck Berry', '0,83', '0,61'),
(19, 'Cream', '0,67', '0,45'),
(20, 'Creedence Clearwater Revival', '0,82', '0,61'),
(21, 'Crosby, Stills & Nash', '0,78', '0,54'),
(22, 'David Bowie', '0,83', '0,53'),
(23, 'Derek & The Dominos', '0,72', '0,41'),
(24, 'Don McLean', '0,70', '0,47'),
(25, 'Eddie Cochran', '0,70', '0,47'),
(26, 'Elton John', '0,74', '0,51'),
(27, 'Elvis Presley', '0,96', '0,69'),
(28, 'James Brown', '0,67', '0,43'),
(29, 'James Taylor', '0,67', '0,43'),
(30, 'Jefferson Airplane', '0,80', '0,56'),
(31, 'Jerry Lee Lewis', '0,81', '0,49'),
(32, 'Jimi Hendrix', '0,93', '0,66'),
(33, 'John Lennon', '0,95', '0,67'),
(34, 'Led Zeppelin', '0,64', '0,37'),
(35, 'Little Richard', '0,86', '0,41'),
(36, 'Lynyrd Skynyrd', '0,84', '0,56'),
(37, 'Marvin Gaye', '0,62', '0,39'),
(38, 'Michael Jackson', '0,88', '0,52'),
(39, 'Nirvana', '0,44', '0,26'),
(40, 'Otis Redding', '0,44', '0,26'),
(41, 'Patsy Cline', '0,80', '0,58'),
(42, 'Prince', '0,47', '0,29'),
(43, 'Queen', '0,92', '0,71'),
(44, 'Ray Charles', '0,78', '0,47'),
(45, 'Ritchie Valens', '0,87', '0,59'),
(46, 'Rod Stewart', '0,89', '0,61'),
(47, 'Roy Orbison', '0,77', '0,56'),
(48, 'Simon & Garfunkel', '0,77', '0,56'),
(49, 'Steppenwolf', '0,61', '0,40'),
(50, 'Stevie Wonder', '0,85', '0,55'),
(51, 'The Beach Boys', '0,59', '0,36'),
(52, 'The Beatles', '0,97', '0,74'),
(53, 'The Clash', '0,78', '0,54'),
(54, 'The Doors', '0,88', '0,63'),
(55, 'The Eagles', '0,88', '0,67'),
(56, 'The Kingsmen', '0,83', '0,58'),
(57, 'The Kinks', '0,83', '0,58'),
(58, 'The Mamas & the Papas', '0,80', '0,58'),
(59, 'The Police', '0,62', '0,36'),
(60, 'The Rolling Stones', '0,95', '0,70'),
(61, 'The Spencer Davis Group', '0,95', '0,70'),
(62, 'The Temptations', '0,95', '0,70'),
(63, 'The Troggs', '0,95', '0,70'),
(64, 'The Who', '0,84', '0,59'),
(65, 'Van Halen', '0,84', '0,63'),
(66, 'Van Morrison', '0,84', '0,63'),
(67, 'Wilson Pickett', '0,79', '0,52');

-- 
-- Dumping data for table users
--
INSERT INTO users VALUES
(1, 'irgalmatlan', 'irgalmatlan@mail.com', 'irgalmatlan'),
(2, 'kegyetlen', 'kegyetlen@mail.com', 'kegyetlen'),
(3, 'pusztito', 'pusztito@mail.com', 'pusztito');

-- 
-- Dumping data for table songs
--
INSERT INTO songs VALUES
(1, 'Satisfaction', 60, '3:43', '134,7', 1985, 'Rock 1980s', 'http://127.0.0.1:8000/storage/images/60_1.jpg'),
(2, 'Respect', 4, '2:23', '114,5', 1967, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/4_2.jpg'),
(3, 'Stairway to Heaven', 34, '7:59', '99,7', 1971, 'Slow', 'http://127.0.0.1:8000/storage/images/34_3.jpg'),
(4, 'Like a Rolling Stone', 9, '6:04', '95,6', 1965, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/9_4.jpg'),
(5, 'Born to Run', 12, '4:30', '146,3', 1975, 'Rock 1970s', 'http://127.0.0.1:8000/storage/images/12_5.jpg'),
(6, 'Hotel California', 55, '6:29', '147,9', 1977, 'Slow', 'http://127.0.0.1:8000/storage/images/55_6.jpg'),
(7, 'Light My Fire', 54, '7:06', '125,1', 1967, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/54_7.jpg'),
(8, 'Good Vibrations', 51, '3:36', '148,8', 1966, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/51_8.jpg'),
(9, 'Hey Jude', 52, '7:08', '146,9', 1969, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/52_9.jpg'),
(10, 'Imagine', 33, '3:02', '152,6', 1971, 'Slow', 'http://127.0.0.1:8000/storage/images/33_10.jpg'),
(11, 'Louie Louie', 56, '2:42', '124', 1963, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/56_11.jpg'),
(12, 'Yesterday', 52, '2:05', '97,6', 1966, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/52_12.jpg'),
(13, 'My Generation', 64, '3:17', '97,2', 1966, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/64_13.jpg'),
(14, 'What''s Going On', 37, '3:47', '101,5', 1971, 'Dance 1970s', 'http://127.0.0.1:8000/storage/images/37_14.jpg'),
(15, 'Johnny B. Goode', 18, '2:38', '84,1', 1958, 'Rock 1950s', 'http://127.0.0.1:8000/storage/images/18_15.jpg'),
(16, 'Layla', 23, '7:04', '115,2', 1972, 'Rock 1970s', 'http://127.0.0.1:8000/storage/images/23_16.jpg'),
(17, 'Won''t Get Fooled Again', 64, '3:38', '134,9', 1971, 'Rock 1970s', 'http://127.0.0.1:8000/storage/images/64_17.jpg'),
(18, 'Jailhouse Rock', 27, '2:27', '84,2', 1957, 'Rock 1950s', 'http://127.0.0.1:8000/storage/images/27_18.jpg'),
(19, 'American Pie', 24, '8:34', '138,2', 1971, 'Slow', 'http://127.0.0.1:8000/storage/images/24_19.jpg'),
(20, 'A Day in the Life', 52, '5:06', '130,3', 1969, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/52_20.jpg'),
(21, 'I Got You (I Feel Good)', 28, '2:45', '145,2', 1965, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/28_21.jpg'),
(22, 'Superstition', 50, '4:25', '101,3', 1972, 'Disco', 'http://127.0.0.1:8000/storage/images/50_22.jpg'),
(23, 'I Want to Hold Your Hand', 52, '2:26', '131,1', 1966, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/52_23.jpg'),
(24, 'Brown Sugar', 60, '3:46', '128,3', 1971, 'Rock 1970s', 'http://127.0.0.1:8000/storage/images/60_24.jpg'),
(25, 'Purple Haze', 32, '2:50', '110,2', 1968, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/32_25.jpg'),
(26, 'Sympathy for the Devil', 60, '6:18', '116,2', 1968, 'TBD', 'http://127.0.0.1:8000/storage/images/60_26.jpg'),
(27, 'Bohemian Rhapsody', 43, '5:53', '108', 1976, 'Slow', 'http://127.0.0.1:8000/storage/images/43_27.jpg'),
(28, 'You Really Got Me', 57, '2:13', '138', 1964, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/57_28.jpg'),
(29, 'Oh, Pretty Woman', 47, '2:57', '127,2', 1964, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/47_29.jpg'),
(30, 'Bridge Over Troubled Water', 48, '4:51', '87,2', 1970, 'Slow', 'http://127.0.0.1:8000/storage/images/48_30.jpg'),
(31, 'Hound Dog', 27, '2:15', '88,8', 1956, 'Rock 1950s', 'http://127.0.0.1:8000/storage/images/27_31.jpg'),
(32, 'Let It Be', 52, '3:52', '137,4', 1969, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/52_32.jpg'),
(33, '(Sittin'' On) the Dock of the Bay', 40, '2:41', '103,3', 1968, 'Slow', 'http://127.0.0.1:8000/storage/images/40_33.jpg'),
(34, 'All Along the Watchtower', 32, '4:01', '114,3', 1968, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/32_34.jpg'),
(35, 'Walk This Way', 2, '3:32', '108', 1975, 'Rock 1980s', 'http://127.0.0.1:8000/storage/images/2_35.jpg'),
(36, 'My Girl', 62, '2:42', '105,1', 1965, 'Slow', 'http://127.0.0.1:8000/storage/images/62_36.jpg'),
(37, 'Rock Around the Clock', 7, '2:10', '89,9', 1955, 'Rock 1950s', 'http://127.0.0.1:8000/storage/images/7_37.jpg'),
(38, 'I Heard It Through the Grapevine', 37, '5:03', '118,1', 1968, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/37_38.jpg'),
(39, 'Proud Mary', 20, '3:07', '120,4', 1968, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/20_39.jpg'),
(40, 'Born to Be Wild', 49, '3:28', '146,9', 1968, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/49_40.jpg'),
(41, 'Smells Like Teen Spirit', 39, '5:01', '117,5', 1991, 'Rock 1990s', 'http://127.0.0.1:8000/storage/images/39_41.jpg'),
(42, 'Every Breath You Take', 59, '4:13', '117,4', 1983, 'Slow', 'http://127.0.0.1:8000/storage/images/59_42.jpg'),
(43, 'What''d I Say (Parts 1 And 2)', 44, '5:06', '89,6', 1959, 'Rock 1950s', 'http://127.0.0.1:8000/storage/images/44_43.jpg'),
(44, 'Free Bird', 36, '9:01', '149', 1975, 'Slow', 'http://127.0.0.1:8000/storage/images/36_44.jpg'),
(45, 'That''ll Be the Day', 13, '2:16', '116,3', 1957, 'Rock 1950s', 'http://127.0.0.1:8000/storage/images/13_45.jpg'),
(46, 'Whole Lotta Love', 34, '5:33', '92,1', 1969, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/34_46.jpg'),
(47, 'Dream On', 2, '4:26', '156,9', 1973, 'Rock 1980s', 'http://127.0.0.1:8000/storage/images/2_47.jpg'),
(48, 'California Dreamin''', 58, '2:39', '113', 1966, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/58_48.jpg'),
(49, 'Brown Eyed Girl', 66, '3:03', '151,1', 1967, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/66_49.jpg'),
(50, 'Wild Thing', 63, '2:35', '102,1', 1966, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/63_50.jpg'),
(51, 'Suite: Judy Blue Eyes', 21, '7:29', '143', 1971, 'TBD', 'http://127.0.0.1:8000/storage/images/21_51.jpg'),
(52, 'Beat It', 38, '4:19', '138,6', 1983, 'Dance 1980s', 'http://127.0.0.1:8000/storage/images/38_52.jpg'),
(53, 'Great Balls of Fire', 31, '1:51', '161,2', 1957, 'Rock 1950s', 'http://127.0.0.1:8000/storage/images/31_53.jpg'),
(54, 'Stayin'' Alive', 5, '4:43', '103,6', 1977, 'Disco', 'http://127.0.0.1:8000/storage/images/5_54.jpg'),
(55, 'For What It''s Worth (Stop, Hey What''s That Sound)', 14, '2:38', '99,4', 1967, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/14_55.jpg'),
(56, 'Blowin'' in the Wind', 9, '2:46', '93,8', 1967, 'TBD', 'http://127.0.0.1:8000/storage/images/9_56.jpg'),
(57, 'Twist And Shout', 52, '2:32', '124,3', 1963, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/52_57.jpg'),
(58, 'Piano Man', 8, '5:37', '103,2', 1974, 'Slow', 'http://127.0.0.1:8000/storage/images/8_58.jpg'),
(59, 'She Loves You', 52, '2:22', '149,8', 1966, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/52_59.jpg'),
(60, 'Space Oddity', 22, '5:10', '138,9', 1973, 'Rock 1970s', 'http://127.0.0.1:8000/storage/images/22_60.jpg'),
(61, 'Strawberry Fields Forever', 52, '4:08', '99,2', 1969, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/52_61.jpg'),
(62, 'Kashmir', 34, '8:32', '120,7', 1990, 'Rock 1970s', 'http://127.0.0.1:8000/storage/images/34_62.jpg'),
(63, 'Crazy', 41, '2:41', '110,8', 1961, 'Country', 'http://127.0.0.1:8000/storage/images/41_63.jpg'),
(64, 'London Calling', 53, '3:18', '134,3', 1979, 'Rock 1970s', 'http://127.0.0.1:8000/storage/images/53_64.jpg'),
(65, 'Jumpin'' Jack Flash', 60, '3:40', '137,5', 1968, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/60_65.jpg'),
(66, 'Rock And Roll', 34, '3:40', '85,4', 1971, 'Rock 1970s', 'http://127.0.0.1:8000/storage/images/34_66.jpg'),
(67, 'Let''s Stay Together', 3, '3:17', '102,2', 1971, 'Slow', 'http://127.0.0.1:8000/storage/images/3_67.jpg'),
(68, 'All Shook Up', 27, '2:00', '147', 1957, 'Rock 1950s', 'http://127.0.0.1:8000/storage/images/27_68.jpg'),
(69, 'Maggie May', 46, '4:58', '128,8', 1971, 'Rock 1970s', 'http://127.0.0.1:8000/storage/images/46_69.jpg'),
(70, 'Your Song', 26, '4:00', '117,9', 1970, 'Slow', 'http://127.0.0.1:8000/storage/images/26_70.jpg'),
(71, 'Heartbreak Hotel', 27, '2:09', '107,8', 1956, 'Rock 1950s', 'http://127.0.0.1:8000/storage/images/27_71.jpg'),
(72, 'God Only Knows', 51, '2:52', '116,6', 1966, 'TBD', 'http://127.0.0.1:8000/storage/images/51_72.jpg'),
(73, 'The Twist', 17, '2:37', '155,5', 1961, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/17_73.jpg'),
(74, 'Good Golly Miss Molly', 35, '2:07', '84,4', 1958, 'Rock 1950s', 'http://127.0.0.1:8000/storage/images/35_74.jpg'),
(75, 'Sunshine of Your Love', 19, '4:11', '115', 1968, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/19_75.jpg'),
(76, 'California Girls', 51, '2:37', '115,9', 1965, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/51_76.jpg'),
(77, 'Summertime Blues', 25, '1:59', '157,2', 1970, 'Rock 1970s', 'http://127.0.0.1:8000/storage/images/25_77.jpg'),
(78, 'Blue Suede Shoes', 15, '2:14', '85,9', 1956, 'Rock 1950s', 'http://127.0.0.1:8000/storage/images/15_78.jpg'),
(79, 'A Hard Day''s Night', 52, '2:34', '138,8', 1966, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/52_79.jpg'),
(80, 'Fire And Rain', 29, '3:22', '151,7', 1970, 'Slow', 'http://127.0.0.1:8000/storage/images/29_80.jpg'),
(81, 'Gloria', 66, '2:36', '131,1', 1965, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/66_81.jpg'),
(82, 'Sexual Healing', 37, '3:59', '93,9', 1982, 'Slow', 'http://127.0.0.1:8000/storage/images/37_82.jpg'),
(83, 'Start Me Up', 60, '3:34', '122', 1981, 'TBD', 'http://127.0.0.1:8000/storage/images/60_83.jpg'),
(84, 'More Than a Feeling', 11, '4:45', '109', 1976, 'Rock 1970s', 'http://127.0.0.1:8000/storage/images/11_84.jpg'),
(85, 'Roxanne', 59, '3:11', '134,9', 1979, 'Rock 1970s', 'http://127.0.0.1:8000/storage/images/59_85.jpg'),
(86, 'We Are the Champions', 43, '2:59', '97,5', 1977, 'Slow', 'http://127.0.0.1:8000/storage/images/43_86.jpg'),
(87, 'Tangled Up in Blue', 9, '5:43', '99,2', 1994, 'TBD', 'http://127.0.0.1:8000/storage/images/9_87.jpg'),
(88, 'Somebody to Love', 30, '2:55', '131,2', 1967, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/30_88.jpg'),
(89, 'Stand by Me', 6, '2:54', '108,9', 1961, 'Slow', 'http://127.0.0.1:8000/storage/images/6_89.jpg'),
(90, 'Whole Lotta Shakin'' Going On', 31, '2:48', '119,2', 1957, 'Dance 1980s', 'http://127.0.0.1:8000/storage/images/31_90.jpg'),
(91, 'You Shook Me All Night Long', 1, '3:31', '128,2', 1980, 'Rock 1980s', 'http://127.0.0.1:8000/storage/images/1_91.jpg'),
(92, 'When Doves Cry', 42, '3:48', '126,5', 1984, 'Dance 1980s', 'http://127.0.0.1:8000/storage/images/42_92.jpg'),
(93, 'In the Midnight Hour', 67, '2:36', '112', 1965, 'Dance 1960s', 'http://127.0.0.1:8000/storage/images/67_93.jpg'),
(94, 'Gimme Some Lovin''', 61, '2:53', '147,5', 1967, 'Rock 1960s', 'http://127.0.0.1:8000/storage/images/61_94.jpg'),
(95, 'Jump', 65, '4:02', '129,6', 1984, 'Rock 1980s', 'http://127.0.0.1:8000/storage/images/65_95.jpg'),
(96, 'Thunder Road', 12, '4:51', '144', 1975, 'TBD', 'http://127.0.0.1:8000/storage/images/12_96.jpg'),
(97, 'No Woman No Cry', 10, '7:07', '157,7', 1974, 'Reggae', 'http://127.0.0.1:8000/storage/images/10_97.jpg'),
(98, 'La Bamba', 45, '2:04', '151,5', 1959, 'Rock 1950s', 'http://127.0.0.1:8000/storage/images/45_98.jpg'),
(99, 'We''ve Only Just Begun', 16, '3:05', '89,6', 1970, 'Easy', 'http://127.0.0.1:8000/storage/images/16_99.jpg'),
(100, 'Papa Was a Rollin'' Stone', 62, '6:54', '121,2', 1972, 'Rock 1970s', 'http://127.0.0.1:8000/storage/images/62_100.jpg');

-- 
-- Restore previous SQL mode
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Enable foreign keys
-- 
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;