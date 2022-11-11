-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 10, 2022 at 10:16 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopball`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`detail_id`, `order_id`, `product_id`) VALUES
(1, 5, 3),
(2, 5, 2),
(3, 5, 2),
(4, 9, 1),
(5, 10, 10),
(6, 10, 50),
(7, 10, 10),
(8, 11, 10),
(9, 11, 50),
(10, 11, 10),
(11, 13, 4),
(12, 13, 6),
(13, 13, 14),
(14, 14, 10),
(15, 14, 1),
(16, 14, 10),
(17, 14, 1),
(18, 14, 2),
(19, 14, 2),
(20, 15, 10),
(21, 15, 1),
(22, 15, 2),
(23, 15, 2),
(24, 15, 10),
(25, 15, 7),
(26, 15, 1),
(27, 15, 1),
(28, 15, 2),
(29, 15, 1),
(30, 15, 1),
(31, 15, 1),
(32, 16, 10),
(33, 16, 1),
(34, 16, 2),
(35, 16, 2),
(36, 16, 10),
(37, 16, 7),
(38, 16, 1),
(39, 16, 1),
(40, 16, 2),
(41, 16, 1),
(42, 16, 1),
(43, 16, 1),
(44, 17, 10),
(45, 17, 1),
(46, 17, 2),
(47, 17, 2),
(48, 17, 10),
(49, 17, 7),
(50, 17, 1),
(51, 17, 1),
(52, 17, 2),
(53, 17, 1),
(54, 17, 1),
(55, 17, 1),
(56, 18, 10),
(57, 18, 1),
(58, 18, 2),
(59, 18, 2),
(60, 18, 10),
(61, 18, 7),
(62, 18, 1),
(63, 18, 1),
(64, 18, 2),
(65, 18, 1),
(66, 18, 1),
(67, 18, 1),
(68, 19, 1),
(69, 19, 2),
(70, 19, 2),
(71, 19, 10),
(72, 19, 7),
(73, 19, 1),
(74, 19, 1),
(75, 19, 2),
(76, 19, 1),
(77, 19, 1),
(78, 20, 1),
(79, 20, 2),
(80, 20, 2),
(81, 20, 10),
(82, 20, 7),
(83, 20, 1),
(84, 20, 1),
(85, 20, 2),
(86, 20, 1),
(87, 20, 1),
(88, 21, 1),
(89, 21, 2),
(90, 21, 2),
(91, 21, 10),
(92, 21, 7),
(93, 21, 1),
(94, 21, 1),
(95, 21, 2),
(96, 21, 1),
(97, 21, 1),
(98, 21, 10),
(99, 22, 1),
(100, 22, 2),
(101, 22, 2),
(102, 22, 10),
(103, 22, 7),
(104, 22, 1),
(105, 22, 1),
(106, 22, 2),
(107, 22, 1),
(108, 22, 1),
(109, 22, 10),
(110, 23, 1),
(111, 23, 2),
(112, 23, 2),
(113, 23, 10),
(114, 23, 7),
(115, 23, 1),
(116, 23, 1),
(117, 23, 2),
(118, 23, 1),
(119, 23, 1),
(120, 23, 10),
(121, 24, 1),
(122, 24, 2),
(123, 24, 2),
(124, 24, 10),
(125, 24, 7),
(126, 24, 1),
(127, 24, 1),
(128, 24, 2),
(129, 24, 1),
(130, 24, 1),
(131, 24, 10),
(132, 25, 10),
(133, 26, 10),
(134, 27, 31);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fname` varchar(256) NOT NULL,
  `lname` varchar(256) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_date`, `fname`, `lname`, `address`, `mobile`) VALUES
(9, '2022-09-20 22:28:06', 'Pongniti', 'Owattanakij', '14-16', '0957390975'),
(15, '2022-11-09 22:50:31', 'sfs', 'ef', 'sfsf', 'fsf'),
(16, '2022-11-09 22:57:01', '  c', 'cvcvb', 'cvbcvb', 'cvbcv'),
(17, '2022-11-09 22:57:05', '  c', 'cvcvb', 'cvbcvb', 'cvbcv'),
(25, '2022-11-11 00:42:19', 'sfg', 'gsgs', 'sggsg', 'gsg'),
(26, '2022-11-11 00:43:24', 'dad', 'dad', 'da', 'dad'),
(27, '2022-11-11 01:47:32', 'Siriwat', 'Masaad', 'Sriracha', '0982624215');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `description` text,
  `price` float NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `image`) VALUES
(1, 'A6721 เสื้อฟุตบอล ADIDAS ARSENAL 22/23 HOME AUTHENTIC', 'Unmistakably Arsenal. The white polo collar gives this adidas home authentic jersey \'90s vibes. Below it, an \"Arsenal\" signoff borrows its angular appearance from the giant concrete sculpture outside the Emirates Stadium. Created for elite performances on the pitch, this shirt will keep you confident and quick with cooling HEAT.RDY and lightweight, heat-applied details.', 2390, 'https://www.messisport.com/41784-home_default/a6721-adidas-arsenal-2223-home-authentic-.jpg'),
(2, 'N6761 เสื้อยืดฟุตบอลผู้ชาย TOTTENHAM HOTSPUR CREST', 'ฉลองให้กับทีมโปรดด้วยเสื้อยืด Tottenham Hotspur ตัวนี้ผลิตจากผ้าเนื้อนุ่มเพื่อความสบาย ตราและสีชุดแบบซิกเนเจอร์ประกาศความภาคภูมิใจ', 2090, 'https://www.messisport.com/42015-home_default/n6761-tottenham-hotspur-crest.jpg'),
(3, 'N6760 เสื้อฟุตบอล NIKE TOTTENHAM HOTSPUR 2022/23 STADIUM AWAY', 'เสื้อแข่งตัวนี้ก็เหมือนกับเสื้อแข่งรุ่นอื่นๆ จากคอลเลกชัน Stadium ของเรา โดยนำรายละเอียดดีไซน์ของเสื้อแฟนบอลไปจับคู่กับผ้าซับเหงื่อที่ให้ลุคพร้อมลุย ซึ่งได้แรงบันดาลใจมาจากทีมโปรด สินค้าชิ้นนี้ผลิตด้วยเส้นใยโพลีเอสเตอร์รีไซเคิล 100%', 1480, 'https://www.messisport.com/42010-home_default/n6760-nike-tottenham-hotspur-202223-stadium-away.jpg'),
(4, 'N6758 เสื้อฟุตบอล NIKE CHELSEA FC 2022/23 STADIUM HOME', 'เสื้อแข่งตัวนี้ก็เหมือนกับเสื้อแข่งรุ่นอื่นๆ จากคอลเลกชัน Stadium ของเรา โดยนำรายละเอียดดีไซน์ของเสื้อแฟนบอลไปจับคู่กับเทคโนโลยีซับเหงื่อที่ให้ลุคพร้อมลุย ซึ่งได้แรงบันดาลใจมาจากทีมโปรด สินค้าชิ้นนี้ผลิตด้วยเส้นใยโพลีเอสเตอร์รีไซเคิล 100%', 2190, 'https://www.messisport.com/42005-home_default/n6758-nike-chelsea-fc-202223-stadium-home.jpg'),
(5, 'A6756 กางเกงฟุตบอล ADIDAS MANCHESTER UNITED 22/23 HOME SHORTS', 'Get the Old Trafford look. Created to keep Manchester United supporters comfortable, these adidas home shorts have a mesh gusset and moisture-managing AEROREADY. That woven, shield-style badge marks you out as a loyal football fan.', 385, 'https://www.messisport.com/41994-home_default/a6209-adidas-manchester-united-2122.jpg'),
(6, 'A6749 เสื้อฟุตบอลเด็ก ADIDAS MANCHESTER UNITED 22/23 HOME JERSEY', 'Turned up or pressed down, the humble polo collar has played a starring role in many of Manchester United\'s biggest moments. Making a comeback on this juniors\' adidas football jersey, it joins a shield-style badge and engineered pinstripe graphic to produce an eye-catching look. Moisture-absorbing AEROREADY and mesh panels make it a comfortable choice for passionate supporters.', 1590, 'https://www.messisport.com/41931-home_default/a6749-adidas-manchester-united-2223-home-jersey.jpg'),
(7, 'A6752 เสื้อฟุตบอลเด็กเล็ก ADIDAS MANCHESTER UNITED 22/23 HOME MINI KIT', 'Watch your young football fan live out their Old Trafford adventures. A scaled-down version of the strip players wear at home games, this kids\' adidas Manchester United kit includes its pinstripe jersey graphic and shield-style badges. AEROREADY wicks moisture to keep them comfortable while they show their support.', 2080, 'https://www.messisport.com/41944-home_default/a6752-adidas-manchester-united-2223-home-mini-kit.jpg'),
(8, 'A6750 เสื้อฟุตบอลเด็ก ADIDAS MANCHESTER UNITED 22/23 AWAY JERSEY', 'They\'re famous for wearing red. But Manchester United have had more than a few glory nights in white. With its subtle all-over design, shield badge and red-and-black 3-Stripes, this juniors\' adidas away football jersey adds to that rich legacy. Moisture-wicking AEROREADY and mesh panels make it a comfortable wear for supporters.', 720, 'https://www.messisport.com/41977-home_default/a6750-adidas-manchester-united-2223-away-jersey.jpg'),
(9, 'A6747 เสื้อฟุตบอล ADIDAS MANCHESTER UNITED 22/23 AWAY JERSEY', 'They\'re famous for wearing red. But Manchester United have had more than a few glory nights in white. With its subtle allover design, shield badge and red-and-black 3-Stripes, this adidas away football jersey adds to that rich legacy. Moisture-wicking AEROREADY and mesh panels make it a comfortable wear for supporters.\r\n', 1520, 'https://www.messisport.com/41968-home_default/a6747-adidas-manchester-united-2223-away-jersey.jpg'),
(10, 'A6746 เสื้อฟุตบอล ADIDAS MANCHESTER UNITED 22/23 HOME JERSEY', 'Turned up or pressed down, the humble polo collar has played a starring role in many of Manchester United\'s biggest moments. Making a comeback on this adidas football jersey, it joins a shield-style badge and engineered pinstripe graphic to produce an eye-catching look. Moisture-absorbing AEROREADY and mesh panels make it a comfortable choice for passionate supporters.', 2090, 'https://www.messisport.com/41918-home_default/a6746-adidas-manchester-united-2223-home-jersey.jpg'),
(11, 'A6742 เสื้อฟุตบอล ADIDAS REAL MADRID 22/23 AWAY JERSEY', 'Turned up or pressed down, the humble polo collar has played a starring role in many of Manchester United\'s biggest moments. Making a comeback on this adidas football jersey, it joins a shield-style badge and engineered pinstripe graphic to produce an eye-catching look. Moisture-absorbing AEROREADY and mesh panels make it a comfortable choice for passionate supporters.', 1370, 'https://www.messisport.com/41901-home_default/a6742-adidas-real-madrid-2223-away-jersey.jpg'),
(12, 'A6740 เสื้อฟุตบอล ADIDAS JUVENTUS 22/23 HOME JERSEY', 'During their trophy-laden history, stars have become as much a part of Juventus\' identity as stripes. This adidas football jersey brings the two together, forming the club\'s iconic black stripes from tiny star-like symbols. Made for fans, it combines comfort and pride with moisture-wicking AEROREADY and an embroidered badge.', 2485, 'https://www.messisport.com/41888-home_default/a6740-adidas-juventus-2223-home-jersey.jpg'),
(13, 'N6739 เสื้อยืดฟุตบอลผู้ชาย NIKE LIVERPOOL FC', 'เสื้อยืด Liverpool FC ประดับตราสโมสรและสีประจำทีมไว้บนเนื้อผ้าน้ำหนักเบา ทำให้รู้สึกสบายอยู่เสมอไม่ว่าจะในวันแข่งหรือวันไหนๆ', 1100, 'https://www.messisport.com/41875-home_default/n6739-nike-liverpool-fc.jpg'),
(14, 'N6737 เสื้อยืดฟุตบอลผู้ชาย NIKE LIVERPOOL FC VOICE', 'เสื้อยืด Liverpool FC ผสานความภาคภูมิใจในทีมเข้ากับผ้าคอตตอนน้ำหนักเบา เพื่อความสบายพร้อมระบายอากาศที่ยาวนาน', 580, 'https://www.messisport.com/41872-home_default/n6737-nike-liverpool-fc-voice.jpg'),
(15, 'N6736 เสื้อยืดฟุตบอลผู้ชาย NIKE LIVERPOOL FC SWOOSH', 'เสื้อยืด Liverpool FC Swoosh ผลิตจากคอตตอนเนื้อนุ่มที่ให้ความสบายพร้อมรายละเอียดของทีมอันน่าภาคภูมิใจ เพื่อให้คุณประกาศตัวว่าเชียร์ทีมใด', 2680, 'https://www.messisport.com/41864-home_default/n6736-nike-liverpool-fc-swoosh.jpg'),
(16, 'N6735 เสื้อโปโลผู้ชาย NIKE LIVERPOOL FC', 'เสื้อโปโล Liverpool FC ปรับโฉมตัวเก่งในตู้ด้วยตราและสีประจำทีม มาในผ้าน้ำหนักเบาที่ช่วยให้รู้สึกเย็นสบายเสมอ', 739, 'https://www.messisport.com/41856-home_default/n6735-nike-liverpool-fc.jpg'),
(17, 'N6734 เสื้อฟุตบอลเด็ก NIKE LIVERPOOL FC 2022/23 STADIUM HOME', 'เสื้อแข่งตัวนี้ก็เหมือนกับเสื้อแข่งรุ่นอื่นๆ จากคอลเลกชัน Stadium ของเรา โดยนำรายละเอียดดีไซน์ของเสื้อแฟนบอลไปจับคู่กับเทคโนโลยีซับเหงื่อที่ให้ลุคพร้อมลุย ซึ่งได้แรงบันดาลใจมาจากทีมโปรด สินค้าชิ้นนี้ผลิตด้วยเส้นใยโพลีเอสเตอร์รีไซเคิล 100%', 2350, 'https://www.messisport.com/41851-large_default/n6734-nike-liverpool-fc-202223-stadium-home.jpg'),
(18, 'N6733 เสื้อฟุตบอล NIKE LIVERPOOL FC STRIKE', 'เสื้อ Liverpool FC Strike มีรายละเอียดดีไซน์ที่ออกแบบมาโดยเฉพาะเพื่อดาวเด่นคนต่อไปแห่งวงการลูกหนัง มาในทรงเพรียวเข้ารูปที่ให้ใส่เล่นฟุตบอลได้อย่างมั่นใจ มาพร้อมผ้าซับเหงื่อที่ช่วยให้รู้สึกเย็นและจดจ่อได้เสมอขณะฝึกทักษะลับฝีเท้า สินค้าชิ้นนี้ผลิตด้วยเส้นใยโพลีเอสเตอร์รีไซเคิล 100%', 1600, 'https://www.messisport.com/41847-home_default/n6733-nike-liverpool-fc-strike.jpg'),
(19, 'N6732 เสื้อฟุตบอล NIKE LIVERPOOL FC 2022/23 STADIUM GOALKEEPER', 'เสื้อโปโล Liverpool FC ปรับโฉมตัวเก่งในตู้ด้วยตราและสีประจำทีม มาในผ้าน้ำหนักเบาที่ช่วยให้รู้สึกเย็นสบายเสมอ', 424, 'https://www.messisport.com/41841-home_default/n6732-nike-liverpool-fc-202223-stadium-goalkeeper.jpg'),
(20, 'N6731 เสื้อฟุตบอล NIKE TOTTENHAM HOTSPUR 2022/23 STADIUM HOME', 'เสื้อแข่งตัวนี้ก็เหมือนกับเสื้อแข่งรุ่นอื่นๆ จากคอลเลกชัน Stadium ของเรา โดยนำรายละเอียดดีไซน์ของเสื้อแฟนบอลไปจับคู่กับผ้าซับเหงื่อที่ให้ลุคพร้อมลุย ซึ่งได้แรงบันดาลใจมาจากทีมโปรด สินค้าชิ้นนี้ผลิตด้วยเส้นใยโพลีเอสเตอร์รีไซเคิล 100%', 1345, 'https://www.messisport.com/41835-home_default/n6731-nike-tottenham-hotspur-202223-stadium-home.jpg'),
(21, 'U6762 เสื้อฟุตบอล UMBRO WEST HAM UTD 22/23 HOME JERSEY', 'During their trophy-laden history, stars have become as much a part of Juventus\' identity as stripes. This adidas football jersey brings the two together, forming the club\'s iconic black stripes from tiny star-like symbols. Made for fans, it combines comfort and pride with moisture-wicking AEROREADY and an embroidered badge.', 425, 'https://www.messisport.com/42020-home_default/u6391-umbro-west-ham-united-202122-home-jerseye-.jpg'),
(22, 'U6763 เสื้อฟุตบอล UMBRO WEST HAM UTD 22/23 AWAY JERSEY', 'เสื้อแข่งตัวนี้ก็เหมือนกับเสื้อแข่งรุ่นอื่นๆ จากคอลเลกชัน Stadium ของเรา โดยนำรายละเอียดดีไซน์ของเสื้อแฟนบอลไปจับคู่กับเทคโนโลยีซับเหงื่อที่ให้ลุคพร้อมลุย ซึ่งได้แรงบันดาลใจมาจากทีมโปรด สินค้าชิ้นนี้ผลิตด้วยเส้นใยโพลีเอสเตอร์รีไซเคิล 100%', 1449, 'https://www.messisport.com/42025-home_default/u6763-umbro-west-ham-utd-2223-away-jersey.jpg'),
(23, 'A6723 เสื้อฟุตบอล ADIDAS ARSENAL 22/23 LONG SLEEVE HOME JERSEY', 'Unmistakably Arsenal. The white polo collar gives this adidas home jersey \'90s vibes. Below it, an \"Arsenal\" signoff borrows its angular appearance from the giant concrete sculpture outside the Emirates Stadium. Mesh panels under the long sleeves and moisture-wicking AEROREADY combine to keep the club\'s supporters comfortable.', 495, 'https://www.messisport.com/41792-home_default/a6723-adidas-arsenal-2223-long-sleeve-home-jersey.jpg'),
(24, 'A6726 เสื้อฟุตบอลเด็ก ADIDAS ARSENAL 22/23 HOME JERSEY', 'Made with 100% recycled materials, this product represents just one of our solutions to help end plastic waste.', 345, 'https://www.messisport.com/41818-home_default/a6726-adidas-arsenal-2223-home-jersey.jpg'),
(25, 'A6727 เสื้อฟุตบอลเด็ก ADIDAS ARSENAL 22/23 HOME MINI KIT', 'Made with 100% recycled materials, this product represents just one of our solutions to help end plastic waste.', 940, 'https://www.messisport.com/41823-home_default/a6727-adidas-arsenal-2223-home-mini-kit.jpg'),
(26, 'A6697 เสื้อฟุตบอล ADIDAS REAL MADRID 22/23 HOME JERSEY', 'Clean, classic and created to mark a milestone. The timeless look of this adidas Real Madrid home jersey is accented with light purple details and a repeated club badge embossed onto the white fabric. This version of the shirt is made to keep fans comfortable with moisture-wicking AEROREADY.', 435, 'https://www.messisport.com/41650-home_default/a6697-adidas-real-madrid-2223-home-jersey.jpg'),
(27, 'A6698 เสื้อฟุตบอล ADIDAS REAL MADRID 22/23 HOME AUTHENTIC JERSEY', 'A CELEBRATORY REAL MADRID PERFORMANCE JERSEY MADE WITH RECYCLED MATERIALS.', 1129, 'https://www.messisport.com/41656-home_default/a6698-adidas-real-madrid-2223-home-authentic-jersey.jpg'),
(28, 'N6684 เสื้อฟุตบอล NIKE LIVERPOOL FC 2022/23 MATCH HOME', 'Made with 100% recycled materials, this product represents just one of our solutions to help end plastic waste.', 590, 'https://www.messisport.com/41589-home_default/n6684-nike-liverpool-fc-202223-match-home.jpg'),
(29, 'N6683 เสื้อฟุตบอล NIKE LIVERPOOL F.C. 2022/23 STADIUM HOME', 'Made with 100% recycled materials, this product represents just one of our solutions to help end plastic waste.', 1850, 'https://www.messisport.com/41582-home_default/n6683-nike-liverpool-fc-202223-stadium-home.jpg'),
(30, 'N5224 เสื้อฟุตบอล NIKE LIVERPOOL HOME SHORT SLEEVE JERSEY 20/21 - ชุดเหย้า ของแท้', 'เทคโนโลยี Nike Dri-FIT ดูดซับเหงื่อออกจากผิวเพื่อให้ระเหยไปอย่างรวดเร็ว จึงช่วยให้รู้สึกแห้งสบายเสมอ', 1070, 'https://www.messisport.com/31982-home_default/n5224-nike-liverpool-home-short-sleeve-jersey-2021-.jpg'),
(31, 'N6968 เสื้อฟุตบอล NIKE BRAZIL 2022/23 STADIUM GOALKEEPER', 'Like other jerseys from our Stadium collection, this one pairs replica design details with sweat-wicking fabric to give you a game-ready look inspired by your favorite team.', 540, 'https://www.messisport.com/43212-home_default/n6968-nike-brazil-202223-stadium-goalkeeper.jpg'),
(32, 'N6970 เสื้อฟุตบอล NIKE FFF 2022/23 MATCH HOME', 'เรามุ่งมั่นไม่เคยหยุดยั้ง เช่นเดียวกับเสื้อแข่งรุ่นอื่นๆ จากคอลเลกชัน Match เสื้อรุ่นนี้นำรายละเอียดดีไซน์ของแท้ไปจับคู่กับผ้าแห้งเร็วน้ำหนักเบา ช่วยให้เหล่าแข้งลูกหนังระดับโลกรู้สึกเย็นสบายอยู่เสมอบนสนาม', 690, 'https://www.messisport.com/43222-home_default/n6970-nike-fff-202223-match-home.jpg'),
(33, 'N6971 เสื้อฟุตบอล NIKE FFF 2022/23 STADIUM HOME', 'เรามุ่งมั่นไม่เคยหยุดยั้ง เสื้อแข่งตัวนี้ก็เหมือนกับเสื้อแข่งรุ่นอื่นๆ จากคอลเลกชัน Stadium ของเรา โดยนำรายละเอียดดีไซน์ของเสื้อแฟนบอลไปจับคู่กับผ้าซับเหงื่อที่ให้ลุคพร้อมลุย ซึ่งได้แรงบันดาลใจมาจากทีมโปรด', 1500, 'https://www.messisport.com/43230-home_default/n6971-nike-fff-202223-stadium-home.jpg'),
(34, 'N6972 เสื้อฟุตบอล NIKE FFF 2022/23 STADIUM AWAY', 'Our drive is never done. Like other jerseys from our Stadium collection, this one pairs replica design details with sweat-wicking fabric to give you a game-ready look inspired by your favorite team.', 840, 'https://www.messisport.com/43237-home_default/n6972-nike-fff-202223-stadium-away.jpg'),
(35, 'N6973 เสื้อฟุตบอล NIKE FRANCE 22 PRE-MATCH JERSEY', 'แห้งเสมอตั้งแต่ก่อนเริ่มเกมการแข่งขัน\r\nเสื้อตัวนี้ให้คุณอวดความภาคภูมิใจในทีมเมื่อคุณพร้อมลงแข่ง มาพร้อมผ้าซับเหงื่อที่ช่วยให้คุณรู้สึกแห้งเสมอ คุณจึงมีสมาธิมุ่งมั่นกับการแข่งขัน', 1090, 'https://www.messisport.com/43242-home_default/n6973-nike-france-22-pre-match-jersey.jpg'),
(36, 'N6975 เสื้อฟุตบอล NIKE CROATIA 2022/23 STADIUM HOME', 'Like other jerseys from our Stadium collection, this one pairs replica design details with sweat-wicking fabric to give you a game-ready look inspired by your favorite team.', 1240, 'https://www.messisport.com/43254-home_default/n6975-nike-croatia-202223-stadium-home.jpg'),
(37, 'N6976 เสื้อฟุตบอล NIKE NETHERLANDS 2022/23 STADIUM HOME', 'Nike Dri-FIT technology moves sweat away from your skin for quicker evaporation, helping you stay dry and comfortable.', 1139, 'https://www.messisport.com/43260-home_default/n6976-nike-netherlands-202223-stadium-home.jpg'),
(38, 'N6977 เสื้อฟุตบอล NIKE NETHERLANDS 2022/23 STADIUM AWAY', 'Nike Dri-FIT technology moves sweat away from your skin for quicker evaporation, helping you stay dry and comfortable.\r\nReplica design is modeled after what the pros wear on the field.', 2680, 'https://www.messisport.com/43265-home_default/n6977-nike-netherlands-202223-stadium-away.jpg'),
(39, 'N6978 เสื้อฟุตบอล NIKE KOREA 2022/23 STADIUM HOME', 'เทคโนโลยี Nike Dri-FIT ดูดซับเหงื่อออกจากผิวเพื่อให้ระเหยได้เร็วขึ้น จึงช่วยให้รู้สึกแห้งสบายเสมอ\r\nดีไซน์สำหรับแฟนบอลนำแบบมาจากรุ่นที่นักกีฬาอาชีพใส่ลงสนาม', 1330, 'https://www.messisport.com/43270-home_default/n6978-nike-korea-202223-stadium-home.jpg'),
(40, 'N6979 เสื้อฟุตบอล NIKE KOREA 2022/23 STADIUM AWAY', 'เทคโนโลยี Nike Dri-FIT ดูดซับเหงื่อออกจากผิวเพื่อให้ระเหยได้เร็วขึ้น จึงช่วยให้รู้สึกแห้งสบายเสมอ\r\nดีไซน์สำหรับแฟนบอลนำแบบมาจากรุ่นที่นักกีฬาอาชีพใส่ลงสนาม', 940, 'https://www.messisport.com/43277-home_default/n6979-nike-korea-202223-stadium-away.jpg'),
(41, 'P6980 เสื้อฟุตบอล PUMA ITALY HOME 22/23 AUTHENTIC JERSEY', 'Classic Azzurri. The 2022 Italy Home jersey celebrates a legacy of blue shirts and brilliant football. Featuring gold accents, retro fonts, and proud references to the triumphs of 1934, 1938, 1982, and 2006, the front of the jersey is split into tonal quadrants to honour the four generations of World Champions.', 45, 'https://www.messisport.com/43282-home_default/p6980-puma-italy-home-2223-authentic-jersey-.jpg'),
(42, 'P6982 เสื้อฟุตบอล PUMA ITALY AWAY 22/23 REPLICA JERSEY', 'Show your support on the road with the 2022 Italy Away jersey. Pull it on as you head to the stadium, and celebrate as your team lifts the trophy. Forza Azzurri!\r\nFEATURES & BENEFITS', 75, 'https://www.messisport.com/43290-home_default/p6982-puma-italy-away-2223-replica-jersey.jpg'),
(43, 'P6984 เสื้อฟุตบอล PUMA ITALY 22 GOALKEEPER JERSEY', 'แห้งเสมอตั้งแต่ก่อนเริ่มเกมการแข่งขัน\r\nเสื้อตัวนี้ให้คุณอวดความภาคภูมิใจในทีมเมื่อคุณพร้อมลงแข่ง มาพร้อมผ้าซับเหงื่อที่ช่วยให้คุณรู้สึกแห้งเสมอ คุณจึงมีสมาธิมุ่งมั่นกับการแข่งขัน', 35, 'https://www.messisport.com/43296-home_default/p6984-puma-italy-22-goalkeeper-jersey.jpg'),
(44, 'N7005 เสื้อฟุตบอล NIKE LIVERPOOL FC 2022/23 STADIUM THIRD', 'เสื้อแข่งตัวนี้ก็เหมือนกับเสื้อแข่งรุ่นอื่นๆ จากคอลเลกชัน Stadium ของเรา โดยนำรายละเอียดดีไซน์ของเสื้อแฟนบอลไปจับคู่กับผ้าซับเหงื่อที่ให้ลุคพร้อมลุย ซึ่งได้แรงบันดาลใจมาจากทีมโปรด สินค้าชิ้นนี้ผลิตด้วยเส้นใยโพลีเอสเตอร์รีไซเคิล 100%', 55, 'https://www.messisport.com/43414-home_default/n7005-nike-liverpool-fc-202223-stadium-third.jpg'),
(45, 'N7006 เสื้อฟุตบอล NIKE LIVERPOOL FC 2022/23 MATCH THIRD', 'เทคโนโลยี Nike Dri-FIT ADV ผสานใยผ้าซับเหงื่อเข้ากับการออกแบบเชิงโครงสร้างและคุณสมบัติสุดล้ำเพื่อให้คุณแห้งสบายอยู่เสมอ ผ้าตาห่างในจุดที่มีความร้อนสูงซึ่งมาจากการทดสอบของนักกีฬานั้นช่วยให้รู้สึกเย็นเสมอเมื่อเกมเริ่มเข้มข้นขึ้น', 55, 'https://www.messisport.com/43415-home_default/n7006-nike-liverpool-fc-202223-match-third.jpg'),
(46, 'N7030 เสื้อฟุตบอล NIKE NIGERIA 2022/23 STADIUM HOME', 'Nike Dri-FIT Technology moves sweat away from your skin for quicker evaporation, helping you stay dry and comfortable.\r\nReplica design is modelled on what the pros wear on the pitch.', 99, 'https://www.messisport.com/43525-home_default/n7030-nike-nigeria-202223-stadium-home.jpg'),
(47, 'A7031 เสื้อฟุตบอล ADIDAS MEXICO 22 HOME JERSEY', 'น้อมรับพลังจากเบื้องบน เสื้อฟุตบอลชุดเหย้าทีมชาติเม็กซิโกจากอาดิดาสตัวนี้สื่อถึงการขอพรเพื่อพลังใจที่แข็งแกร่งบนเวทีการแข่งขันฟุตบอลที่มีการเฉลิมฉลองกันมากที่สุด', 69, 'https://www.messisport.com/43529-large_default/a7031-adidas-mexico-22-home-jersey.jpg'),
(48, 'A7032 เสื้อฟุตบอล ADIDAS MEXICO ICON GOALKEEPER JERSEY', 'ผู้รักษาประตูทีมชาติเม็กซิโกสั่งการพื้นที่หน้าปากประตูในชุดแข่งสีสันจัดจ้านหลากหลายแบบตลอดช่วงยุค 90 เสื้อฟุตบอลอาดิดาสตัวนี้ด่ำดิ่งกลับสู่ยุคที่โดดเด่นและภาคภูมิของวงการลูกหนังด้วยดีไซน์ที่ดูมีพลังอย่างลงตัว มาในทรงหลวมที่ชวนให้นึกถึงภาพของผู้รักษาประตูระดับไอคอนที่สุดคนหนึ่งของประเทศ', 135, 'https://www.messisport.com/43537-home_default/a7032-adidas-mexico-icon-goalkeeper-jersey.jpg'),
(49, 'A7033 เสื้อยืด ADIDAS MEXICO GRAPHIC TEE', 'Pay tribute to your team in sporty style. Filled with a dynamic graphic, the adidas Badge of Sport on the front of this Mexico football tee really catches the eye. Underneath, the team name confirms who you support on the international stage. Soft single jersey makes this t-shirt a comfortable substitute when your jersey\'s in the wash.', 145, 'https://www.messisport.com/43542-home_default/a7033-adidas-mexico-graphic-tee.jpg'),
(50, 'A6951 เสื้อแจ็คเก็ต ADIDAS SPAIN ANTHEM JACKET', 'Made with 100% recycled materials, this product represents just one of our solutions to help end plastic waste.', 40, 'https://www.messisport.com/43137-home_default/a6951-adidas-spain-anthem-jacket.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
