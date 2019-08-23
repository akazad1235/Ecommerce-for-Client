-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2019 at 09:04 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--
CREATE DATABASE IF NOT EXISTS `bank` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bank`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_number` char(25) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `balance` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_number`, `branch_name`, `balance`) VALUES
('ac-101', 'Dhanmondi 32', 2000),
('ac-102', 'Green Road Panthapath', 5000),
('ac-103', 'Uttora', 40000),
('ac-104', 'Dhanmondi 32', 4000);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_street` varchar(255) DEFAULT NULL,
  `customer_city` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_name`, `customer_street`, `customer_city`) VALUES
('Md.Azad Hosen', 'Farmgate 2', 'dhaka'),
('Md.Monir', 'Kollanpur', 'dhaka'),
('Md.emon', 'Gaibandha', 'Taigail');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loan_number` char(25) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `amount` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loan_number`, `branch_name`, `amount`) VALUES
('L-1010', 'Dhanmondi 32', 40000),
('L-1012', 'Green Road Panthapath ', 50000),
('L-1013', 'Uttora', 50000);
--
-- Database: `banks`
--
CREATE DATABASE IF NOT EXISTS `banks` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `banks`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_number` varchar(15) DEFAULT NULL,
  `branch_name` char(20) DEFAULT NULL,
  `balance` float(25,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_number`, `branch_name`, `balance`) VALUES
('A-101', 'Motijhil', 12000.000),
('A-102', 'Perryridge', 15000.000),
('A-103', 'Mohakhali', 1000.000),
('A-104', 'Mokhali', 24000.000),
('A-105', 'Mohakhali', 22000.000);

-- --------------------------------------------------------

--
-- Table structure for table `borrower`
--

CREATE TABLE `borrower` (
  `customer_name` char(20) DEFAULT NULL,
  `loan_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrower`
--

INSERT INTO `borrower` (`customer_name`, `loan_number`) VALUES
('Mr. Rajon', 'L-101'),
('Mr. Rahim', 'L-102'),
('Mr. Jamal', 'L-103'),
('Mr. Mahbub', 'L-104');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_name` char(25) DEFAULT NULL,
  `branch_city` char(25) DEFAULT NULL,
  `assets` float(20,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_name`, `branch_city`, `assets`) VALUES
('Perryridge', 'Newyork', 2000000.000),
('Mirpur', 'Dhaka', 2500000.000),
('Mohakhali', 'Dhaka', 2200000.000),
('Police Lines', 'Mymensingh', 2000000.000),
('Kalibari', 'Muktagacha', 200000.000),
('Nirala', 'Tangail', 1000000.000);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_name` char(10) DEFAULT NULL,
  `customer_street` varchar(25) DEFAULT NULL,
  `customer_city` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_name`, `customer_street`, `customer_city`) VALUES
('Mr. Rajon', 'Kalibari', 'Dhaka'),
('Mr. Ripon', 'Green Road', 'Tangail'),
('Mr. Rahim', 'Victoria', 'Rajshahi'),
('Mr. Kamal', 'College Road', 'Dhaka'),
('Mr. Jamal', 'Gabtoli Road', 'Dhaka'),
('Mr. Mahbub', 'Delduar Road', 'Tangail'),
('Mr. Pijus', 'Mahti', 'Rajshahi');

-- --------------------------------------------------------

--
-- Table structure for table `depositor`
--

CREATE TABLE `depositor` (
  `customer_name` char(10) DEFAULT NULL,
  `account_number` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `depositor`
--

INSERT INTO `depositor` (`customer_name`, `account_number`) VALUES
('Mr. Ripon', 'A-102'),
('Mr. Rahim', 'A-104'),
('Mr. Jamal', 'A-103'),
('Mr. Mahbub', 'A-105'),
('Mr. Kamal', 'A-101');

-- --------------------------------------------------------

--
-- Table structure for table `loane`
--

CREATE TABLE `loane` (
  `loan_number` varchar(20) DEFAULT NULL,
  `branch_name` char(20) DEFAULT NULL,
  `amount` float(25,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loane`
--

INSERT INTO `loane` (`loan_number`, `branch_name`, `amount`) VALUES
('L-101', 'Perryridge', 800.000),
('L-102', 'Perryridge', 15000.000),
('L-103', 'Mokhali', 1000.000),
('L-104', 'Mirpur', 12000.000),
('L-105', 'Mirpur', 20000.000);
--
-- Database: `company`
--
CREATE DATABASE IF NOT EXISTS `company` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `company`;

-- --------------------------------------------------------

--
-- Table structure for table `lives`
--

CREATE TABLE `lives` (
  `person_name` char(10) DEFAULT NULL,
  `street` char(20) DEFAULT NULL,
  `city` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lives`
--

INSERT INTO `lives` (`person_name`, `street`, `city`) VALUES
('Mr. Rajon', 'Kalibari', 'Muktagache'),
('Mr. Ripon', 'Green Road', 'Dhaka'),
('Mr. Rahim', 'victoria', 'Tangail'),
('Mr. Kamal', 'College Road', 'Mymensingh'),
('Mr. Jamal', 'Gabtoli Road', 'Muktagache'),
('Mr. Mahbub', 'Delduar Road', 'Tangail');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `company_name` char(20) DEFAULT NULL,
  `city` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`company_name`, `city`) VALUES
('Brack Bank Limited', 'Tangail'),
('Beximco Limited', 'Dhaka'),
('Sonali Bank Limited', 'Muktagacha'),
('Brack Bank Limited', 'Dhaka'),
('Beximco Limited', 'Mymensingh'),
('Brack Bank Limited', 'Tangail');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `person_name` char(15) DEFAULT NULL,
  `manager_name` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`person_name`, `manager_name`) VALUES
('Mr. Rajon', 'Mr. Rajon'),
('Mr. Ripon', 'Mr. Kamal'),
('Mr. Rahim', 'Mr. Rajon'),
('Mr. Kamal', 'Mr. Kamal'),
('Mr. Jamal', 'Mr. Jamal'),
('Mr. Mahbub', 'Mr. Jamal');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `person_name` char(15) DEFAULT NULL,
  `company_name` char(20) DEFAULT NULL,
  `salary` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`person_name`, `company_name`, `salary`) VALUES
('Mr. Rajon', 'Brack Bank Limited', 20000.00),
('Mr. Ripon', 'Beximco Limited', 22000.00),
('Mr. Rahim', 'Sonali Bank Limited', 23000.00),
('Mr. Kamal', 'Brack Bank Limited', 18000.00),
('Mr. Jamal', 'Beximco Limited', 25000.00),
('Mr. Mahbub', 'Brack Bank Limited', 30000.00);
--
-- Database: `db_blog`
--
CREATE DATABASE IF NOT EXISTS `db_blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_blog`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(4, 'HTML'),
(5, 'CSS'),
(6, 'PHP'),
(7, 'JAVA'),
(8, 'JAVASCRIPT'),
(9, 'Computer'),
(10, 'C#');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `commnet` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stetus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `fname`, `lname`, `email`, `commnet`, `date`, `stetus`) VALUES
(4, 'ak', 'azad', 'akazad1514@gmail.com', 'ee', '2018-06-11 04:10:19', 1),
(5, 'Motin', 'Hosen', 'motin@gmail.com', 'What is HTML? HTML is the standard markup language for creating Web pages. HTML stands for Hyper Text Markup Language....', '2018-06-11 05:33:15', 1),
(6, 'Emran', 'an', 'emran@gmail.com', 'PHP is a Loosely Typed Language In the example above, notice that we did not have to tell PHP which data type the var....', '2018-06-11 06:04:08', 1),
(7, 'ak azad', 'azad', 'azad@gmail.com', 'dfsdfsdf', '2018-06-11 06:10:17', 1),
(8, 'emran', 'hossain', 'emran@gmail.com', 'hey, i am emran', '2019-06-03 08:39:08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logo`
--

CREATE TABLE `tbl_logo` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_logo`
--

INSERT INTO `tbl_logo` (`id`, `title`, `slogan`, `image`) VALUES
(3, 'Our Progamming Blog', 'Origrammers', 'uploads/logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE `tbl_pages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `name`, `description`) VALUES
(2, 'about', 'this is my azad hosen, in dhaka INTERNATIONANL UNIVERSTY'),
(4, 'test', 'dfsdfs');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(100) NOT NULL,
  `tages` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stetus` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tages`, `date`, `stetus`, `userid`) VALUES
(24, 4, 'how to learning HTML', '<p>What is HTML? HTML is the standard markup language for creating Web pages. HTML stands for Hyper Text Markup Language HTML describes the structure of <big><strong>Web pages using markup</strong></big> HTML elements are the building blocks of HTML pages HTML elements are represented by tags HTML tags label pieces of content such as &quot;heading&quot;, &quot;paragraph&quot;, &quot;table&quot;, and so on Browsers do not display the HTML tags, but use them to render the content of the</p>\r\n', 'uploads/b9d3ebd532.jpg', 'Ak AZAD', 'ff', '2018-04-30 16:07:27', 0, 0),
(25, 6, 'how to learning PHP', 'PHP is a Loosely Typed Language\r\n\r\nIn the example above, notice that we did not have to tell PHP which data type the variable is.\r\n\r\nPHP automatically converts the variable to the correct data type, depending on its value.\r\n\r\nIn other languages such as C, C++, and Java, the programmer must declare the name and type of the variable before using it.\r\nPHP Variables Scope\r\n\r\nIn PHP, variables can be declared anywhere in the script.\r\n\r\nThe scope of a variable is the part of the script where the variable can be referenced/used.\r\n\r\nPHP has three different variable scopes:\r\n\r\n    local\r\n    global\r\n    static\r\n\r\nGlobal and Local Scope\r\n\r\nA variable declared outside a function has a GLOBAL SCOPE and can only be accessed outside a function:', 'uploads/bb51e4887e.png', 'Azad', 'php', '2018-04-30 16:09:08', 0, 1),
(26, 5, 'CSS', '\r\n\r\nCSS is a language that describes the style of an HTML document.\r\n\r\nCSS describes how HTML elements should be displayed.\r\n\r\nThis tutorial will teach you CSS from basic to advanced.\r\nExamples in Each Chapter\r\n\r\nThis CSS tutorial contains hundreds of CSS examples.\r\n\r\nWith our online editor, you can edit the CSS, and click on a button to view the result.\r\n\r\n\r\nCSS is a language that describes the style of an HTML document.\r\n\r\nCSS describes how HTML elements should be displayed.\r\n\r\nThis tutorial will teach you CSS from basic to advanced.\r\nExamples in Each Chapter\r\n\r\nThis CSS tutorial contains hundreds of CSS examples.\r\n\r\nWith our online editor, you can edit the CSS, and click on a button to view the result.\r\n\r\n\r\nCSS is a language that describes the style of an HTML document.\r\n\r\nCSS describes how HTML elements should be displayed.\r\n\r\nThis tutorial will teach you CSS from basic to advanced.\r\nExamples in Each Chapter\r\n\r\nThis CSS tutorial contains hundreds of CSS examples.\r\n\r\nWith our online editor, you can edit the CSS, and click on a button to view the result.\r\n\r\n\r\nCSS is a language that describes the style of an HTML document.\r\n\r\nCSS describes how HTML elements should be displayed.\r\n\r\nThis tutorial will teach you CSS from basic to advanced.\r\nExamples in Each Chapter\r\n\r\nThis CSS tutorial contains hundreds of CSS examples.\r\n\r\nWith our online editor, you can edit the CSS, and click on a button to view the result.\r\n\r\n\r\nCSS is a language that describes the style of an HTML document.\r\n\r\nCSS describes how HTML elements should be displayed.\r\n\r\nThis tutorial will teach you CSS from basic to advanced.\r\nExamples in Each Chapter\r\n\r\nThis CSS tutorial contains hundreds of CSS examples.\r\n\r\nWith our online editor, you can edit the CSS, and click on a button to view the result.', 'uploads/381164a3d7.jpg', 'Emran', 'dd', '2018-04-30 16:09:55', 1, 2),
(27, 7, 'how to learning JAVA', '\r\n\r\nCSS is a language that describes the style of an HTML document.\r\n\r\nCSS describes how HTML elements should be displayed.\r\n\r\nThis tutorial will teach you CSS from basic to advanced.\r\nExamples in Each Chapter\r\n\r\nThis CSS tutorial contains hundreds of CSS examples.\r\n\r\nWith our online editor, you can edit the CSS, and click on a button to view the result.\r\n\r\nCSS is a language that describes the style of an HTML document.\r\n\r\nCSS describes how HTML elements should be displayed.\r\n\r\nThis tutorial will teach you CSS from basic to advanced.\r\nExamples in Each Chapter\r\n\r\nThis CSS tutorial contains hundreds of CSS examples.\r\n\r\nWith our online editor, you can edit the CSS, and click on a button to view the result.\r\n\r\nCSS is a language that describes the style of an HTML document.\r\n\r\nCSS describes how HTML elements should be displayed.\r\n\r\nThis tutorial will teach you CSS from basic to advanced.\r\nExamples in Each Chapter\r\n\r\nThis CSS tutorial contains hundreds of CSS examples.\r\n\r\nWith our online editor, you can edit the CSS, and click on a button to view the result.\r\n\r\nCSS is a language that describes the style of an HTML document.\r\n\r\nCSS describes how HTML elements should be displayed.\r\n\r\nThis tutorial will teach you CSS from basic to advanced.\r\nExamples in Each Chapter\r\n\r\nThis CSS tutorial contains hundreds of CSS examples.\r\n\r\nWith our online editor, you can edit the CSS, and click on a button to view the result.\r\n\r\nCSS is a language that describes the style of an HTML document.\r\n\r\nCSS describes how HTML elements should be displayed.\r\n\r\nThis tutorial will teach you CSS from basic to advanced.\r\nExamples in Each Chapter\r\n\r\nThis CSS tutorial contains hundreds of CSS examples.\r\n\r\nWith our online editor, you can edit the CSS, and click on a button to view the result.\r\n\r\nCSS is a language that describes the style of an HTML document.\r\n\r\nCSS describes how HTML elements should be displayed.\r\n\r\nThis tutorial will teach you CSS from basic to advanced.\r\nExamples in Each Chapter\r\n\r\nThis CSS tutorial contains hundreds of CSS examples.\r\n\r\nWith our online editor, you can edit the CSS, and click on a button to view the result.\r\n\r\n\r\n\r\n\r\nCSS is a language that describes the style of an HTML document.\r\n\r\nCSS describes how HTML elements should be displayed.\r\n\r\nThis tutorial will teach you CSS from basic to advanced.\r\nExamples in Each Chapter\r\n\r\nThis CSS tutorial contains hundreds of CSS examples.\r\n\r\nWith our online editor, you can edit the CSS, and click on a button to view the result.\r\n\r\nCSS is a language that describes the style of an HTML document.\r\n\r\nCSS describes how HTML elements should be displayed.\r\n\r\nThis tutorial will teach you CSS from basic to advanced.\r\nExamples in Each Chapter\r\n\r\nThis CSS tutorial contains hundreds of CSS examples.\r\n\r\nWith our online editor, you can edit the CSS, and click on a button to view the result.\r\n\r\n\r\n\r\nCSS is a language that describes the style of an HTML document.\r\n\r\nCSS describes how HTML elements should be displayed.\r\n\r\nThis tutorial will teach you CSS from basic to advanced.\r\nExamples in Each Chapter\r\n\r\nThis CSS tutorial contains hundreds of CSS examples.\r\n\r\nWith our online editor, you can edit the CSS, and click on a button to view the result.', 'uploads/389db4212d.jpg', 'Rabiul', 'r', '2018-04-30 16:11:36', 1, 3),
(28, 4, 'how to learning HTML tags', '										What is HTML? HTML is the standard markup language for creating Web pages. HTML stands for Hyper Text Markup Language HTML describes the structure of Web pages using markup HTML elements are the building blocks of HTML pages HTML elements are represented by tags HTML tags label pieces of content such as \"heading\", \"paragraph\", \"table\", and so on Browsers do not display the HTML tags, but use them to render the content of the', 'uploads/70c828c011.jpg', 'aa', 'aa', '2018-04-30 16:25:05', 1, 0),
(29, 6, 'How to Learning with Ecommerce', '<p><strong>E-commerce</strong> is the activity of buying or selling of products on online services or over the Internet. Electronic commerce draws on technologies such as mobile commerce, electronic funds transfer, supply chain management, Internet marketing, online transaction processing, electronic data interchange (EDI), inventory management systems, and automated data collection systems.</p>\r\n\r\n<p>Modern electronic commerce typically uses the World Wide Web for at least one part of the transaction&#39;s life cycle although it may also use other technologies such as e-mail. Typical e-commerce transactions include the purchase of online books (such as Amazon) and music purchases (music download in the form of <a href=\"https://en.wikipedia.org/wiki/Digital_distribution\">digital distribution</a> such as <a href=\"https://en.wikipedia.org/wiki/ITunes_Store\">iTunes Store</a>), and to a less extent, customized/personalized online <a href=\"https://en.wikipedia.org/wiki/Liquor_store\">liquor store</a> <a href=\"https://en.wikipedia.org/wiki/Inventory\">inventory</a> services.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-1\">[1]</a> There are three areas of e-commerce: online retailing, electric markets, and online auctions. E-commerce is supported by <a href=\"https://en.wikipedia.org/wiki/Electronic_business\">electronic business</a>.<a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-2\">[2]</a></p>\r\n\r\n<p>E-commerce businesses may also employ some or all of the followings:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://en.wikipedia.org/wiki/Online_shopping\">Online shopping</a> for <a href=\"https://en.wikipedia.org/wiki/Direct_selling\">retail sales direct</a> to consumers via <a href=\"https://en.wikipedia.org/wiki/Web_sites\">Web sites</a> and <a href=\"https://en.wikipedia.org/wiki/Mobile_apps\">mobile apps</a>, and <a href=\"https://en.wikipedia.org/wiki/Conversational_commerce\">conversational commerce</a> via <a href=\"https://en.wikipedia.org/wiki/Live_chat\">live chat</a>, <a href=\"https://en.wikipedia.org/wiki/Chatbot\">chatbots</a>, and <a href=\"https://en.wikipedia.org/wiki/Voice_assistants\">voice assistants</a><a href=\"https://en.wikipedia.org/wiki/E-commerce#cite_note-venturebeat.com-3\">[3]</a></li>\r\n	<li>Providing or participating in <a href=\"https://en.wikipedia.org/wiki/Online_marketplace\">online marketplaces</a>, which process third-party business-to-consumer or consumer-to-consumer sales</li>\r\n	<li><a href=\"https://en.wikipedia.org/wiki/Business-to-business\">Business-to-business</a> buying and selling;</li>\r\n	<li>Gathering and using demographic data through web contacts and social media</li>\r\n	<li>Business-to-business (B2B) <a href=\"https://en.wikipedia.org/wiki/Electronic_data_interchange\">electronic data interchange</a></li>\r\n	<li>Marketing to prospective and established customers by e-mail or fax (for example, with <a href=\"https://en.wikipedia.org/wiki/Newsletter\">newsletters</a>)</li>\r\n	<li>Engaging in <a href=\"https://en.wikipedia.org/wiki/Pretail\">pretail</a> for launching new products and services</li>\r\n</ul>\r\n', 'uploads/b5fd1a77aa.jpg', 'ak azad', '', '2018-06-09 18:51:14', 1, 0),
(30, 8, 'Learning with Javascript', '<p>In so doing Microsoft became a mortal threat, compelling Netscape to respond. First, they started a standardization process to prevent Microsoft gaining control of the JavaScript language. Second, they partnered with Sun to leverage their shared interest in breaking the Microsoft monopoly.</p>\r\n\r\n<p>Sun began development of Java in 1990 in an attempt to write a language for &ldquo;smart appliances&rdquo;. This approach floundered and in 1994, Sun regrouped and set sights on the Web as the delivery platform of choice.</p>\r\n\r\n<p>In so doing Microsoft became a mortal threat, compelling Netscape to respond. First, they started a standardization process to prevent Microsoft gaining control of the JavaScript language. Second, they partnered with Sun to leverage their shared interest in breaking the Microsoft monopoly.</p>\r\n\r\n<p>Sun began development of Java in 1990 in an attempt to write a language for &ldquo;smart appliances&rdquo;. This approach floundered and in 1994, Sun regrouped and set sights on the Web as the delivery platform of choice.</p>\r\n\r\n<p>In so doing Microsoft became a mortal threat, compelling Netscape to respond. First, they started a standardization process to prevent Microsoft gaining control of the JavaScript language. Second, they partnered with Sun to leverage their shared interest in breaking the Microsoft monopoly.</p>\r\n\r\n<p>Sun began development of Java in 1990 in an attempt to write a language for &ldquo;smart appliances&rdquo;. This approach floundered and in 1994, Sun regrouped and set sights on the Web as the delivery platform of choice.</p>\r\n\r\n<p>In so doing Microsoft became a mortal threat, compelling Netscape to respond. First, they started a standardization process to prevent Microsoft gaining control of the JavaScript language. Second, they partnered with Sun to leverage their shared interest in breaking the Microsoft monopoly.</p>\r\n\r\n<p>Sun began development of Java in 1990 in an attempt to write a language for &ldquo;smart appliances&rdquo;. This approach floundered and in 1994, Sun regrouped and set sights on the Web as the delivery platform of choice.</p>\r\n', 'uploads/6b47cb08c7.jpg', 'mobarak', 'javascript', '2019-05-25 06:05:35', 0, 0),
(31, 8, 'Learning with Javascript-two', '<p>In so doing Microsoft became a mortal threat, compelling Netscape to respond. First, they started a standardization process to prevent Microsoft gaining control of the JavaScript language. Second, they partnered with Sun to leverage their shared interest in breaking the Microsoft monopoly.</p>\r\n\r\n<p>Sun began development of Java in 1990 in an attempt to write a language for &ldquo;smart appliances&rdquo;. This approach floundered and in 1994, Sun regrouped and set sights on the Web as the delivery platform of choice.</p>\r\n\r\n<p>In so doing Microsoft became a mortal threat, compelling Netscape to respond. First, they started a standardization process to prevent Microsoft gaining control of the JavaScript language. Second, they partnered with Sun to leverage their shared interest in breaking the Microsoft monopoly.</p>\r\n\r\n<p>Sun began development of Java in 1990 in an attempt to write a language for &ldquo;smart appliances&rdquo;. This approach floundered and in 1994, Sun regrouped and set sights on the Web as the delivery platform of choice.</p>\r\n\r\n<p>In so doing Microsoft became a mortal threat, compelling Netscape to respond. First, they started a standardization process to prevent Microsoft gaining control of the JavaScript language. Second, they partnered with Sun to leverage their shared interest in breaking the Microsoft monopoly.</p>\r\n\r\n<p>Sun began development of Java in 1990 in an attempt to write a language for &ldquo;smart appliances&rdquo;. This approach floundered and in 1994, Sun regrouped and set sights on the Web as the delivery platform of choice.</p>\r\n\r\n<p>In so doing Microsoft became a mortal threat, compelling Netscape to respond. First, they started a standardization process to prevent Microsoft gaining control of the JavaScript language. Second, they partnered with Sun to leverage their shared interest in breaking the Microsoft monopoly.</p>\r\n\r\n<p>Sun began development of Java in 1990 in an attempt to write a language for &ldquo;smart appliances&rdquo;. This approach floundered and in 1994, Sun regrouped and set sights on the Web as the delivery platform of choice.</p>\r\n', 'uploads/be8225d9ee.png', 'mobarak', 'javascript', '2019-05-25 06:14:28', 0, 3),
(32, 7, 'Learning with Java', '<p>In so doing Microsoft became a mortal threat, compelling Netscape to respond. First, they started a standardization process to prevent Microsoft gaining control of the JavaScript language. Second, they partnered with Sun to leverage their shared interest in breaking the Microsoft monopoly.</p>\r\n\r\n<p>Sun began development of Java in 1990 in an attempt to write a language for &ldquo;smart appliances&rdquo;. This approach floundered and in 1994, Sun regrouped and set sights on the Web as the delivery platform of choice.</p>\r\n\r\n<p>In so doing Microsoft became a mortal threat, compelling Netscape to respond. First, they started a standardization process to prevent Microsoft gaining control of the JavaScript language. Second, they partnered with Sun to leverage their shared interest in breaking the Microsoft monopoly.</p>\r\n\r\n<p>Sun began development of Java in 1990 in an attempt to write a language for &ldquo;smart appliances&rdquo;. This approach floundered and in 1994, Sun regrouped and set sights on the Web as the delivery platform of choice.</p>\r\n\r\n<p>In so doing Microsoft became a mortal threat, compelling Netscape to respond. First, they started a standardization process to prevent Microsoft gaining control of the JavaScript language. Second, they partnered with Sun to leverage their shared interest in breaking the Microsoft monopoly.</p>\r\n\r\n<p>Sun began development of Java in 1990 in an attempt to write a language for &ldquo;smart appliances&rdquo;. This approach floundered and in 1994, Sun regrouped and set sights on the Web as the delivery platform of choice.</p>\r\n\r\n<p>In so doing Microsoft became a mortal threat, compelling Netscape to respond. First, they started a standardization process to prevent Microsoft gaining control of the JavaScript language. Second, they partnered with Sun to leverage their shared interest in breaking the Microsoft monopoly.</p>\r\n\r\n<p>Sun began development of Java in 1990 in an attempt to write a language for &ldquo;smart appliances&rdquo;. This approach floundered and in 1994, Sun regrouped and set sights on the Web as the delivery platform of choice.</p>\r\n\r\n<p>In so doing Microsoft became a mortal threat, compelling Netscape to respond. First, they started a standardization process to prevent Microsoft gaining control of the JavaScript language. Second, they partnered with Sun to leverage their shared interest in breaking the Microsoft monopoly.</p>\r\n\r\n<p>Sun began development of Java in 1990 in an attempt to write a language for &ldquo;smart appliances&rdquo;. This approach floundered and in 1994, Sun regrouped and set sights on the Web as the delivery platform of choice.</p>\r\n\r\n<p>In so doing Microsoft became a mortal threat, compelling Netscape to respond. First, they started a standardization process to prevent Microsoft gaining control of the JavaScript language. Second, they partnered with Sun to leverage their shared interest in breaking the Microsoft monopoly.</p>\r\n\r\n<p>Sun began development of Java in 1990 in an attempt to write a language for &ldquo;smart appliances&rdquo;. This approach floundered and in 1994, Sun regrouped and set sights on the Web as the delivery platform of choice.</p>\r\n', 'uploads/4976913366.png', 'mobarak', 'java', '2019-05-25 06:20:54', 0, 1),
(33, 7, 'Learning with Java', '<p>In so doing Microsoft became a mortal threat, compelling Netscape to respond. First, they started a standardization process to prevent Microsoft gaining control of the JavaScript language. Second, they partnered with Sun to leverage their shared interest in breaking the Microsoft monopoly.</p>\r\n\r\n<p>Sun began development of Java in 1990 in an attempt to write a language for &ldquo;smart appliances&rdquo;. This approach floundered and in 1994, Sun regrouped and set sights on the Web as the delivery platform of choice.</p>\r\n\r\n<p>In so doing Microsoft became a mortal threat, compelling Netscape to respond. First, they started a standardization process to prevent Microsoft gaining control of the JavaScript language. Second, they partnered with Sun to leverage their shared interest in breaking the Microsoft monopoly.</p>\r\n\r\n<p>Sun began development of Java in 1990 in an attempt to write a language for &ldquo;smart appliances&rdquo;. This approach floundered and in 1994, Sun regrouped and set sights on the Web as the delivery platform of choice.</p>\r\n\r\n<p>In so doing Microsoft became a mortal threat, compelling Netscape to respond. First, they started a standardization process to prevent Microsoft gaining control of the JavaScript language. Second, they partnered with Sun to leverage their shared interest in breaking the Microsoft monopoly.</p>\r\n\r\n<p>Sun began development of Java in 1990 in an attempt to write a language for &ldquo;smart appliances&rdquo;. This approach floundered and in 1994, Sun regrouped and set sights on the Web as the delivery platform of choice.</p>\r\n\r\n<p>In so doing Microsoft became a mortal threat, compelling Netscape to respond. First, they started a standardization process to prevent Microsoft gaining control of the JavaScript language. Second, they partnered with Sun to leverage their shared interest in breaking the Microsoft monopoly.</p>\r\n\r\n<p>Sun began development of Java in 1990 in an attempt to write a language for &ldquo;smart appliances&rdquo;. This approach floundered and in 1994, Sun regrouped and set sights on the Web as the delivery platform of choice.</p>\r\n\r\n<p>In so doing Microsoft became a mortal threat, compelling Netscape to respond. First, they started a standardization process to prevent Microsoft gaining control of the JavaScript language. Second, they partnered with Sun to leverage their shared interest in breaking the Microsoft monopoly.</p>\r\n\r\n<p>Sun began development of Java in 1990 in an attempt to write a language for &ldquo;smart appliances&rdquo;. This approach floundered and in 1994, Sun regrouped and set sights on the Web as the delivery platform of choice.</p>\r\n\r\n<p>In so doing Microsoft became a mortal threat, compelling Netscape to respond. First, they started a standardization process to prevent Microsoft gaining control of the JavaScript language. Second, they partnered with Sun to leverage their shared interest in breaking the Microsoft monopoly.</p>\r\n\r\n<p>Sun began development of Java in 1990 in an attempt to write a language for &ldquo;smart appliances&rdquo;. This approach floundered and in 1994, Sun regrouped and set sights on the Web as the delivery platform of choice.</p>\r\n', 'uploads/face926804.png', 'mobarak', 'java', '2019-05-25 06:21:37', 1, 1),
(34, 8, 'Learning with Javascript-two', '<p>In so doing Microsoft became a mortal threat, compelling Netscape to respond. First, they started a standardization process to prevent Microsoft gaining control of the JavaScript language. Second, they partnered with Sun to leverage their shared interest in breaking the Microsoft monopoly.</p>\r\n\r\n<p>Sun began development of Java in 1990 in an attempt to write a language for &ldquo;smart appliances&rdquo;. This approach floundered and in 1994, Sun regrouped and set sights on the Web as the delivery platform of choice.</p>\r\n', 'uploads/853bf9e78c.png', 'hafiz', 'javascript', '2019-05-25 06:25:00', 1, 4),
(35, 7, 'java Learning post', '<p><strong>Java</strong>&nbsp;is an object-oriented programming language developed by James Gosling and colleagues at Sun Microsystems in the early 1990s. ...&nbsp;<strong>Java</strong>&nbsp;is only distantly related to JavaScript, though they have similar names and share a C-like syntax.<strong>History</strong>.&nbsp;<strong>Java</strong>&nbsp;was started as a project called &quot;Oak&quot; by James Gosling in June 1991.<strong>Java</strong>&nbsp;is an object-oriented programming language developed by James Gosling and colleagues at Sun Microsystems in the early 1990s. ...&nbsp;<strong>Java</strong>&nbsp;is only distantly related to JavaScript, though they have similar names and share a C-like syntax.<strong>History</strong>.&nbsp;<strong>Java</strong>&nbsp;was started as a project called &quot;Oak&quot; by James Gosling in June 1991.<strong>Java</strong>&nbsp;is an object-oriented programming language developed by James Gosling and colleagues at Sun Microsystems in the early 1990s. ...&nbsp;<strong>Java</strong>&nbsp;is only distantly related to JavaScript, though they have similar names and share a C-like syntax.<strong>History</strong>.&nbsp;<strong>Java</strong>&nbsp;was started as a project called &quot;Oak&quot; by James Gosling in June 1991.<strong>Java</strong>&nbsp;is an object-oriented programming language developed by James Gosling and colleagues at Sun Microsystems in the early 1990s. ...&nbsp;<strong>Java</strong>&nbsp;is only distantly related to JavaScript, though they have similar names and share a C-like syntax.<strong>History</strong>.&nbsp;<strong>Java</strong>&nbsp;was started as a project called &quot;Oak&quot; by James Gosling in June 1991.</p>\r\n\r\n<p><strong>Java</strong>&nbsp;is an object-oriented programming language developed by James Gosling and colleagues at Sun Microsystems in the early 1990s. ...&nbsp;<strong>Java</strong>&nbsp;is only distantly related to JavaScript, though they have similar names and share a C-like syntax.<strong>History</strong>.&nbsp;<strong>Java</strong>&nbsp;was started as a project called &quot;Oak&quot; by James Gosling in June 1991.<strong>Java</strong>&nbsp;is an object-oriented programming language developed by James Gosling and colleagues at Sun Microsystems in the early 1990s. ...&nbsp;<strong>Java</strong>&nbsp;is only distantly related to JavaScript, though they have similar names and share a C-like syntax.<strong>History</strong>.&nbsp;<strong>Java</strong>&nbsp;was started as a project called &quot;Oak&quot; by James Gosling in June 1991.<strong>Java</strong>&nbsp;is an object-oriented programming language developed by James Gosling and colleagues at Sun Microsystems in the early 1990s. ...&nbsp;<strong>Java</strong>&nbsp;is only distantly related to JavaScript, though they have similar names and share a C-like syntax.<strong>History</strong>.&nbsp;<strong>Java</strong>&nbsp;was started as a project called &quot;Oak&quot; by James Gosling in June 1991.</p>\r\n\r\n<p><strong>Java</strong>&nbsp;is an object-oriented programming language developed by James Gosling and colleagues at Sun Microsystems in the early 1990s. ...&nbsp;<strong>Java</strong>&nbsp;is only distantly related to JavaScript, though they have similar names and share a C-like syntax.<strong>History</strong>.&nbsp;<strong>Java</strong>&nbsp;was started as a project called &quot;Oak&quot; by James Gosling in June 1991.</p>\r\n', 'upload/22ebd5314c.jpg', 'emran', 'java', '2019-06-03 08:43:24', 1, 6),
(36, 7, 'java Learning post', '<p><strong>Java</strong>&nbsp;is an object-oriented programming language developed by James Gosling and colleagues at Sun Microsystems in the early 1990s. ...&nbsp;<strong>Java</strong>&nbsp;is only distantly related to JavaScript, though they have similar names and share a C-like syntax.<strong>History</strong>.&nbsp;<strong>Java</strong>&nbsp;was started as a project called &quot;Oak&quot; by James Gosling in June 1991.<strong>Java</strong>&nbsp;is an object-oriented programming language developed by James Gosling and colleagues at Sun Microsystems in the early 1990s. ...&nbsp;<strong>Java</strong>&nbsp;is only distantly related to JavaScript, though they have similar names and share a C-like syntax.<strong>History</strong>.&nbsp;<strong>Java</strong>&nbsp;was started as a project called &quot;Oak&quot; by James Gosling in June 1991.<strong>Java</strong>&nbsp;is an object-oriented programming language developed by James Gosling and colleagues at Sun Microsystems in the early 1990s. ...&nbsp;<strong>Java</strong>&nbsp;is only distantly related to JavaScript, though they have similar names and share a C-like syntax.<strong>History</strong>.&nbsp;<strong>Java</strong>&nbsp;was started as a project called &quot;Oak&quot; by James Gosling in June 1991.<strong>Java</strong>&nbsp;is an object-oriented programming language developed by James Gosling and colleagues at Sun Microsystems in the early 1990s. ...&nbsp;<strong>Java</strong>&nbsp;is only distantly related to JavaScript, though they have similar names and share a C-like syntax.<strong>History</strong>.&nbsp;<strong>Java</strong>&nbsp;was started as a project called &quot;Oak&quot; by James Gosling in June 1991.</p>\r\n\r\n<p><strong>Java</strong>&nbsp;is an object-oriented programming language developed by James Gosling and colleagues at Sun Microsystems in the early 1990s. ...&nbsp;<strong>Java</strong>&nbsp;is only distantly related to JavaScript, though they have similar names and share a C-like syntax.<strong>History</strong>.&nbsp;<strong>Java</strong>&nbsp;was started as a project called &quot;Oak&quot; by James Gosling in June 1991.<strong>Java</strong>&nbsp;is an object-oriented programming language developed by James Gosling and colleagues at Sun Microsystems in the early 1990s. ...&nbsp;<strong>Java</strong>&nbsp;is only distantly related to JavaScript, though they have similar names and share a C-like syntax.<strong>History</strong>.&nbsp;<strong>Java</strong>&nbsp;was started as a project called &quot;Oak&quot; by James Gosling in June 1991.<strong>Java</strong>&nbsp;is an object-oriented programming language developed by James Gosling and colleagues at Sun Microsystems in the early 1990s. ...&nbsp;<strong>Java</strong>&nbsp;is only distantly related to JavaScript, though they have similar names and share a C-like syntax.<strong>History</strong>.&nbsp;<strong>Java</strong>&nbsp;was started as a project called &quot;Oak&quot; by James Gosling in June 1991.</p>\r\n\r\n<p><strong>Java</strong>&nbsp;is an object-oriented programming language developed by James Gosling and colleagues at Sun Microsystems in the early 1990s. ...&nbsp;<strong>Java</strong>&nbsp;is only distantly related to JavaScript, though they have similar names and share a C-like syntax.<strong>History</strong>.&nbsp;<strong>Java</strong>&nbsp;was started as a project called &quot;Oak&quot; by James Gosling in June 1991.</p>\r\n', 'uploads/40d0b06a09.jpg', 'emran', 'java', '2019-06-03 08:44:26', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(1) NOT NULL,
  `accountType` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `useraccess` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `role`, `accountType`, `email`, `useraccess`) VALUES
(2, 'azad12', '76c033b8f460cb7c9f5a5f7a05bc8a2a', 0, 'Admin', 'azad@gamil.com', 0),
(3, 'mobarak', '827ccb0eea8a706c4c34a16891f84e7b', 1, 'Author', 'mobarak@gamil.com', 1),
(4, 'hafiz', '827ccb0eea8a706c4c34a16891f84e7b', 2, 'Editor', 'hafiz@gmail.com', 1),
(5, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0, 'Admin', 'admin@gmail.com', 1),
(6, 'emran', '827ccb0eea8a706c4c34a16891f84e7b', 1, 'Author', 'emran@gmail.com', 1),
(7, 'azad', '827ccb0eea8a706c4c34a16891f84e7b', 2, 'Editor', 'azad@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_useraccess`
--

CREATE TABLE `tbl_useraccess` (
  `id` int(11) NOT NULL,
  `userRole` int(1) DEFAULT NULL,
  `userCategory` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_useraccess`
--

INSERT INTO `tbl_useraccess` (`id`, `userRole`, `userCategory`) VALUES
(1, 0, 'Admin'),
(2, 1, 'Author'),
(3, 2, 'Editor');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userpermission`
--

CREATE TABLE `tbl_userpermission` (
  `id` int(11) NOT NULL,
  `userROle` int(11) DEFAULT NULL,
  `tbl_postId` int(11) DEFAULT NULL,
  `tbl_userId` int(11) DEFAULT NULL,
  `tbl_useraccessId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_userpermission`
--

INSERT INTO `tbl_userpermission` (`id`, `userROle`, `tbl_postId`, `tbl_userId`, `tbl_useraccessId`) VALUES
(1, 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_useraccess`
--
ALTER TABLE `tbl_useraccess`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_userpermission`
--
ALTER TABLE `tbl_userpermission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_postId` (`tbl_postId`),
  ADD KEY `tbl_userId` (`tbl_userId`),
  ADD KEY `tbl_useraccessId` (`tbl_useraccessId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_useraccess`
--
ALTER TABLE `tbl_useraccess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_userpermission`
--
ALTER TABLE `tbl_userpermission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_userpermission`
--
ALTER TABLE `tbl_userpermission`
  ADD CONSTRAINT `tbl_userpermission_ibfk_1` FOREIGN KEY (`tbl_postId`) REFERENCES `tbl_post` (`id`),
  ADD CONSTRAINT `tbl_userpermission_ibfk_2` FOREIGN KEY (`tbl_userId`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `tbl_userpermission_ibfk_3` FOREIGN KEY (`tbl_useraccessId`) REFERENCES `tbl_useraccess` (`id`);
--
-- Database: `db_employee`
--
CREATE DATABASE IF NOT EXISTS `db_employee` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_employee`;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_name` char(25) DEFAULT NULL,
  `city` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_name`, `city`) VALUES
('Sonali Bank Limited', 'Dhaka'),
('Beximco Limited', 'Dhaka'),
('First_Bank_Corporation', 'Rajshahi'),
('Sonali Bank Limited', 'Tangail'),
('First_Bank_Corporation', 'Dhaka'),
('Sonali Bank Limited', 'Rajshahi'),
('First_Bank_Corporation', 'Tangail'),
('Sonali Bank Limited', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `emp_id` varchar(12) DEFAULT NULL,
  `employee_name` char(15) DEFAULT NULL,
  `street` char(10) DEFAULT NULL,
  `city` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`emp_id`, `employee_name`, `street`, `city`) VALUES
('emp-101', 'Mr. Rajon', 'Savar', 'Dhaka'),
('emp-102', 'Mr. Kamal', 'Kalibari', 'Tangail'),
('emp-103', 'Mr. Jamal', 'Liol', 'Rajshahi'),
('emp-104', 'Mr. Sohel', 'Grin', 'Dhaka'),
('emp-105', 'Mr. Khan', 'Nurjahan', 'Dhaka'),
('emp-106', 'Mr. Sharif', 'Victoria', 'Tangail'),
('emp-107', 'Mr. Raju', 'Mahti', 'Rajshahi'),
('emp-108', 'Mr. Rahim', 'Mirpur 2', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `manages`
--

CREATE TABLE `manages` (
  `emp_id` varchar(12) DEFAULT NULL,
  `manager_name` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manages`
--

INSERT INTO `manages` (`emp_id`, `manager_name`) VALUES
('emp-101', 'Mr. Rajon'),
('emp-108', 'Mr. Raju'),
('emp-102', 'Mr. Rajon'),
('emp-104', 'Mr. Khan'),
('emp-103', 'Mr. Raju'),
('emp-107', 'Mr. Khan'),
('emp-106', 'Mr. Rajon'),
('emp-105', 'Mr. Raju');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `emp_id` varchar(12) DEFAULT NULL,
  `company_name` char(25) DEFAULT NULL,
  `salary` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`emp_id`, `company_name`, `salary`) VALUES
('emp-101', 'Sonali Bank Limited', 20000.00),
('emp-102', 'First Bank Corporation', 8000.00),
('emp-103', 'Beximco Limited', 16000.00),
('emp-104', 'Sonali Bank Limited', 24000.00),
('emp-105', 'First Bank Corporation', 10000.00),
('emp-106', 'Sonali_Bank Limited', 18000.00),
('emp-107', 'Beximco Limited', 14000.00),
('emp-108', 'Sonali Bank Limited', 23000.00);
--
-- Database: `db_shop`
--
CREATE DATABASE IF NOT EXISTS `db_shop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_shop`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) DEFAULT NULL,
  `adminUser` varchar(255) DEFAULT NULL,
  `adminEmail` varchar(255) DEFAULT NULL,
  `adminPass` varchar(255) DEFAULT NULL,
  `level` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPass`, `level`) VALUES
(1, NULL, 'admin', NULL, '827ccb0eea8a706c4c34a16891f84e7b', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`id`, `BrandName`) VALUES
(10, 'HP'),
(11, 'Samsung'),
(12, 'Acer'),
(13, 'Dell'),
(14, 'Lotto'),
(15, 'Xioumi'),
(16, 'Nokia'),
(18, 'Avast'),
(19, 'Salve');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `sId`, `productId`, `productName`, `price`, `quantity`, `image`) VALUES
(8, 'ag2qungkp62qqrvbvr9iej6a2g', 3, 'Avast Pro Antivirus', 12.00, 4, 'uploads/7bbd0f5136.jpg'),
(9, 'nvi8risrpc732f4gf1rlrtrn6g', 3, 'Avast Pro Antivirus', 12.00, 3, 'uploads/7bbd0f5136.jpg'),
(10, '817q7i4bnrlm4dbv0qdb38gsce', 9, 'Azad ', 1250.00, 2, 'uploads/04e106b73f.jpg'),
(16, 'u7kdv6ngf7mghj856v9t6jm4q0', 6, 'Samsung j2 Core', 50000.00, 2, 'uploads/5a712e061b.jpg'),
(17, 'kr3rg57ot1r94phtktlf26dlhu', 3, 'Avast Pro Antivirus', 12.00, 2, 'uploads/7bbd0f5136.jpg'),
(18, 'o7sh3o861jmfcsetegb678i4ee', 6, 'Samsung j2 Core', 50000.00, 2, 'uploads/5a712e061b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(10, 'Accessories'),
(11, 'Software');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_compare`
--

INSERT INTO `tbl_compare` (`id`, `cmrId`, `productId`, `productName`, `price`, `image`) VALUES
(32, 3, 3, 'Avast Pro Antivirus', 12.00, 'uploads/7bbd0f5136.jpg'),
(33, 2, 8, 'Salve T Shirt', 450.00, 'uploads/bc2b03a8a1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `passo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `passo`) VALUES
(2, 'Md.Azad Hosen', 'Dhaka, Bangladesh', ' Dhaka', 'Bangladesh', 1254, '01745215', 'azad@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'Mr. Mehedi Khan', 'Serpur, bogura', ' Bogra', 'Bangladesh', 1248, '01745215124', 'mehedi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(10, 2, 3, 'Avast Pro Antivirus', 1, 12.00, 'uploads/7bbd0f5136.jpg', '2019-06-22 05:37:23', 1),
(11, 2, 8, 'Salve T Shirt', 2, 900.00, 'uploads/bc2b03a8a1.jpg', '2019-06-22 05:37:46', 0),
(12, 2, 2, 'Dell lapto Core i5', 1, 15485.00, 'uploads/1e31f670be.png', '2019-06-22 05:38:07', 0),
(13, 2, 3, 'Avast Pro Antivirus', 1, 12.00, 'uploads/7bbd0f5136.jpg', '2019-06-22 06:04:52', 0),
(14, 2, 6, 'Samsung j2 Core', 2, 100000.00, 'uploads/5a712e061b.jpg', '2019-06-22 06:05:16', 0),
(15, 2, 3, 'Avast Pro Antivirus', 1, 12.00, 'uploads/7bbd0f5136.jpg', '2019-06-22 06:05:29', 0),
(16, 2, 3, 'Avast Pro Antivirus', 1, 12.00, 'uploads/7bbd0f5136.jpg', '2019-06-22 06:05:45', 0),
(17, 2, 3, 'Avast Pro Antivirus', 1, 12.00, 'uploads/7bbd0f5136.jpg', '2019-06-22 06:09:28', 0),
(18, 2, 3, 'Avast Pro Antivirus', 1, 12.00, 'uploads/7bbd0f5136.jpg', '2019-06-22 06:10:24', 0),
(19, 2, 2, 'Dell lapto Core i5', 1, 15485.00, 'uploads/1e31f670be.png', '2019-06-22 06:11:18', 0),
(20, 2, 1, 'T Shart', 2, 900.00, 'uploads/0e5fc3178b.jpg', '2019-06-22 06:11:32', 0),
(21, 2, 1, 'T Shart', 1, 450.00, 'uploads/0e5fc3178b.jpg', '2019-06-22 06:11:45', 1),
(22, 2, 3, 'Avast Pro Antivirus', 1, 12.00, 'uploads/7bbd0f5136.jpg', '2019-06-24 17:05:25', 0),
(23, 2, 6, 'Samsung j2 Core', 1, 50000.00, 'uploads/5a712e061b.jpg', '2019-06-24 17:05:46', 0),
(24, 3, 1, 'T Shart', 2, 900.00, 'uploads/0e5fc3178b.jpg', '2019-06-24 17:17:43', 0),
(25, 0, 3, 'Avast Pro Antivirus', 3, 36.00, 'uploads/7bbd0f5136.jpg', '2019-06-28 04:16:59', 0),
(26, 0, 2, 'Dell lapto Core i5', 1, 15485.00, 'uploads/1e31f670be.png', '2019-06-28 04:17:24', 0),
(27, 0, 2, 'Dell lapto Core i5', 2, 30970.00, 'uploads/1e31f670be.png', '2019-06-28 04:17:36', 0),
(28, 0, 7, 'Xioumi Radmi Go', 3, 120000.00, 'uploads/c97a945ad6.jpg', '2019-06-28 04:18:02', 0),
(29, 2, 1, 'T Shart', 2, 900.00, 'uploads/0e5fc3178b.jpg', '2019-06-28 04:18:31', 0),
(30, 3, 9, 'Azad ', 2, 2500.00, 'uploads/04e106b73f.jpg', '2019-06-28 15:52:49', 0),
(31, 2, 6, 'Samsung j2 Core', 1, 50000.00, 'uploads/5a712e061b.jpg', '2019-06-30 18:20:03', 0),
(32, 2, 6, 'Samsung j2 Core', 3, 150000.00, 'uploads/5a712e061b.jpg', '2019-07-08 16:00:16', 0),
(33, 2, 3, 'Avast Pro Antivirus', 2, 24.00, 'uploads/7bbd0f5136.jpg', '2019-07-08 16:00:37', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`) VALUES
(2, 'Dell lapto Core i7', 9, 13, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', 15485, 'uploads/44c13a33d5.jpg', 1),
(3, 'Avast Pro Antivirus', 11, 18, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', 12, 'uploads/7bbd0f5136.jpg', 0),
(6, 'Samsung j2 Core', 8, 11, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', 50000, 'uploads/5a712e061b.jpg', 0),
(7, 'Xioumi Radmi Go', 8, 15, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', 40000, 'uploads/c97a945ad6.jpg', 2),
(8, 'Salve T Shirt', 7, 19, ' <p>&nbsp;</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', 450, 'uploads/bc2b03a8a1.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `cmrId`, `productId`, `productName`, `price`, `image`) VALUES
(1, 2, 9, 'Azad ', '1250', 'uploads/04e106b73f.jpg'),
(4, 2, 2, 'Dell lapto Core i5', '15485', 'uploads/1e31f670be.png'),
(5, 2, 8, 'Salve T Shirt', '450', 'uploads/bc2b03a8a1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `employee`
--
CREATE DATABASE IF NOT EXISTS `employee` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `employee`;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_name` char(25) DEFAULT NULL,
  `city` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_name`, `city`) VALUES
('Sonali Bank Limited', 'Dhaka'),
('Small Bank Corporation', 'Dhaka'),
('First Bank Corporation', 'Rajshahi'),
('Small Bank Corporation', 'Tangail'),
('First Bank Corporation', 'Dhaka'),
('Sonali Bank Limited', 'Rajshahi'),
('First Bank Corporation', 'Tangail');

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `employee_name` char(15) DEFAULT NULL,
  `street` char(15) DEFAULT NULL,
  `city` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`employee_name`, `street`, `city`) VALUES
('Mr. Rajon', 'Kalibari', 'Dhaka'),
('Mr. Ripon', 'Green Road', 'Tangail'),
('Mr. Rahim', 'Victoria', 'Rajshahi'),
('Mr. Kamal', 'College Road', 'Dhaka'),
('Mr. Jamal', 'Gabtoli Road', 'Dhaka'),
('Mr. Mahbub', 'Delduar Road', 'Tangail'),
('Mr. Khan', 'Mahti', 'Rajshahi');

-- --------------------------------------------------------

--
-- Table structure for table `manages`
--

CREATE TABLE `manages` (
  `employee_name` char(15) DEFAULT NULL,
  `manager_name` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manages`
--

INSERT INTO `manages` (`employee_name`, `manager_name`) VALUES
('Mr. Rajon', 'Mr. Rajon'),
('Mr. Ripon', 'Mr. Kamal'),
('Mr. Rahim', 'Mr. Rajon'),
('Mr. Kamal', 'Mr. Kamal'),
('Mr. Jamal', 'Mr. Jamal'),
('Mr. Mahbub', 'Mr. Jamal'),
('Mr. Khan', 'Mr. Rahim');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `employee_name` char(15) DEFAULT NULL,
  `company_name` char(25) DEFAULT NULL,
  `salary` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`employee_name`, `company_name`, `salary`) VALUES
('Mr. Rajon', 'Sonali Bank Limited', 21000.00),
('Mr. Ripon', 'First Bank Corporation', 8000.00),
('Mr. Rahim', 'Small Bank Corporation', 16000.00),
('Mr. Kamal', 'Small Bank Corporation', 20000.00),
('Mr. Jamal', 'First Bank Corporation', 10000.00),
('Mr. Mahbub', 'Sonali Bank Limited', 19000.00),
('Mr. Khan', 'First Bank Corporation', 14000.00);
--
-- Database: `emp_info`
--
CREATE DATABASE IF NOT EXISTS `emp_info` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `emp_info`;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_name` char(10) DEFAULT NULL,
  `city` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_name`, `city`) VALUES
('Janata', 'Dhaka'),
('Janata', 'Farmgate'),
('Exim', 'Comilla'),
('BB', 'Pantha Path'),
('Pubali', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_name` varchar(10) DEFAULT NULL,
  `street` char(10) DEFAULT NULL,
  `city` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_name`, `street`, `city`) VALUES
('Ayaan', '27/B', 'Dhaka'),
('Abdullah', 'Dhanmodi 2', 'Dhaka'),
('Sium', 'Raja Bazar', 'Farmgate'),
('Sajid', 'pLine', 'Comilla'),
('Rafid', 'Raja Bazar', 'Farmgate'),
('Rakib', 'uttora', 'uttora');

-- --------------------------------------------------------

--
-- Table structure for table `manages`
--

CREATE TABLE `manages` (
  `employee_name` varchar(255) DEFAULT NULL,
  `manager_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manages`
--

INSERT INTO `manages` (`employee_name`, `manager_name`) VALUES
('Ayaan', 'Azad'),
('Abdullah', 'Rajib'),
('Sium', 'Rasel'),
('Sajid', 'Mobarak'),
('Rakib', 'Rakib');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `employee_name` varchar(10) DEFAULT NULL,
  `company_name` char(10) DEFAULT NULL,
  `salary` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`employee_name`, `company_name`, `salary`) VALUES
('Ayaan', 'Janata', 5000.00),
('Abdullah', 'Pubali', 6000.00),
('Sium', 'Janata', 5500.00),
('Sajid', 'BB', 5000.00),
('Rafid', 'Exim', 10000.00);
--
-- Database: `exam`
--
CREATE DATABASE IF NOT EXISTS `exam` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `exam`;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `roll` int(6) DEFAULT NULL,
  `reg` int(6) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `age` int(20) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `roll`, `reg`, `dept`, `age`, `date`) VALUES
(2, 'Md.Azad ', 124584, 105106, 'cse', 26, '2019-06-26 17:28:10'),
(3, 'mehedi', 105412, 1254488, 'eee', 30, '2019-06-26 17:28:10'),
(4, 'mehedi', 105412, 1254488, 'eee', 32, '2019-06-26 17:28:10'),
(5, 'mehedi', 105412, 1254488, 'eee', 22, '2019-06-26 17:28:10'),
(6, 'mehedi', 105412, 1254488, 'eee', 28, '2019-06-26 17:28:10'),
(7, 'arman', 22521, 555, 'eee', 28, '2019-06-26 17:28:10'),
(8, 'arman', 22521, 555, 'eee', 28, '2019-06-26 17:28:10'),
(9, 'arman', 22521, 555, 'cse', 26, '2019-06-26 17:28:10'),
(10, 'arman', 22521, 555, 'eee', 25, '2019-06-26 17:28:10'),
(11, 'arman', 22521, 555, 'cse', 28, '2019-06-26 17:28:10'),
(12, 'arman', 22521, 555, 'eee', 28, '2019-06-26 17:28:10'),
(13, 'arman', 22521, 555, 'cse', 26, '2019-06-26 17:28:10'),
(14, 'arman', 22521, 555, 'eee', 25, '2019-06-26 17:28:10'),
(15, 'arman', 22521, 555, 'cse', 28, '2019-06-26 17:28:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `insurance`
--
CREATE DATABASE IF NOT EXISTS `insurance` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `insurance`;

-- --------------------------------------------------------

--
-- Table structure for table `accident`
--

CREATE TABLE `accident` (
  `report_number` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `location` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accident`
--

INSERT INTO `accident` (`report_number`, `date`, `location`) VALUES
('AR2197', '2019-07-16 01:36:04', 'santosh'),
('AR2199', '2019-07-16 01:36:04', 'nirala'),
('AR2195', '2019-07-16 01:36:04', 'shantikunja'),
('AR2192', '2019-07-16 01:36:04', 'bajitpur');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `license` varchar(10) DEFAULT NULL,
  `model` varchar(10) DEFAULT NULL,
  `year` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`license`, `model`, `year`) VALUES
('AABB2000', 'm10', 2005),
('AABB2001', 'm14', 1989),
('AABB2002', 'm13', 2011),
('AABB2003', 'm16', 1989),
('AABB2004', 'm17', 2013);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_name` char(25) DEFAULT NULL,
  `city` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `employee_name` char(15) DEFAULT NULL,
  `street` char(15) DEFAULT NULL,
  `city` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`employee_name`, `street`, `city`) VALUES
('Mr. Rajon', 'Kalibari', 'Dhaka'),
('Mr. Ripon', 'Green Road', 'Tangail'),
('Mr. Rahim', 'Victoria', 'Rajshahi'),
('Mr. Kamal', 'College Road', 'Dhaka'),
('Mr. Jamal', 'Gabtoli Road', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `manages`
--

CREATE TABLE `manages` (
  `employee_name` char(15) DEFAULT NULL,
  `manager_name` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manages`
--

INSERT INTO `manages` (`employee_name`, `manager_name`) VALUES
('Mr. Rajon', 'Mr. Rajon'),
('Mr. Ripon', 'Mr. Kamal'),
('Mr. Rahim', 'Mr. Rajon'),
('Mr. Kamal', 'Mr. Kamal'),
('Mr. Jamal', 'Mr. Jamal'),
('Mr. Mahbub', 'Mr. Jamal');

-- --------------------------------------------------------

--
-- Table structure for table `owns`
--

CREATE TABLE `owns` (
  `driver_id` varchar(10) DEFAULT NULL,
  `license` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owns`
--

INSERT INTO `owns` (`driver_id`, `license`) VALUES
('d-101', 'AABB2000'),
('d-102', 'AABB2001'),
('d-103', 'AABB2002'),
('d-104', 'AABB2003'),
('d-105', 'AABB2004');

-- --------------------------------------------------------

--
-- Table structure for table `participated`
--

CREATE TABLE `participated` (
  `driver_id` varchar(10) DEFAULT NULL,
  `car` char(10) DEFAULT NULL,
  `report_number` varchar(10) DEFAULT NULL,
  `damage_amount` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participated`
--

INSERT INTO `participated` (`driver_id`, `car`, `report_number`, `damage_amount`) VALUES
('d-101', 'pajero', 'AR2197', 22000),
('d-102', 'corola', 'AR2199', 1500),
('d-103', 'prado', 'AR2195', 2500),
('d-104', 'mitsubishi', 'AR2192', 2000),
('d-105', 'pajero', 'AR2190', 1200),
('d-102', 'corola', 'AR2198', 1800);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `driver_id` varchar(10) DEFAULT NULL,
  `name` char(20) DEFAULT NULL,
  `address` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`driver_id`, `name`, `address`) VALUES
('d-101', 'zahidul islam', 'nirala'),
('d-102', 'Mr. saiful islam', 'thanapara'),
('d-103', 'kamal', 'beparipara'),
('d-104', 'jamal', 'adalotpara'),
('d-105', 'farhad', 'charabari');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `employee_name` char(15) DEFAULT NULL,
  `company_name` char(25) DEFAULT NULL,
  `salary` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`employee_name`, `company_name`, `salary`) VALUES
('Mr. Rajon', 'Sonali Bank Limited', 21000.00),
('Mr. Ripon', 'First Bank Corporation', 8000.00),
('Mr. Rahim', 'Small Bank Corporation', 16000.00),
('Mr. Kamal', 'Small Bank Corporation', 20000.00),
('Mr. Jamal', 'First Bank Corporation', 10000.00);
--
-- Database: `insurance2`
--
CREATE DATABASE IF NOT EXISTS `insurance2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `insurance2`;

-- --------------------------------------------------------

--
-- Table structure for table `accident`
--

CREATE TABLE `accident` (
  `id` int(11) NOT NULL,
  `report_number` char(20) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accident`
--

INSERT INTO `accident` (`id`, `report_number`, `date`, `location`) VALUES
(1, '1032', '2019-07-05 12:40:42', 'green raod'),
(2, '1052', '2019-07-05 12:40:42', 'Farmgate, dhaka'),
(3, '1082', '2019-07-05 12:40:42', 'Dhanmoni 32');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `license` char(20) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `year` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `license`, `model`, `year`) VALUES
(1, 'DHK-mettro A 10-1205', 'Toyota MR2', 2013),
(2, 'DHK-mettro B 15-1205', 'Mitsubisi Pajero', 2016),
(3, 'DHK-mettro G 18-1205', 'Honda', 2013),
(4, 'DHK-mettro F 20-1205', 'Toyota MR2', 2013),
(5, 'DHK-mettro M 30-1205', 'Mitsubisi Pajero', 2019);

-- --------------------------------------------------------

--
-- Table structure for table `owns`
--

CREATE TABLE `owns` (
  `id` int(11) NOT NULL,
  `driver_id` char(10) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owns`
--

INSERT INTO `owns` (`id`, `driver_id`, `license`) VALUES
(1, '101', 'DHK-mettro A 10-1205'),
(2, '102', 'DHK-mettro B 15-1205'),
(3, '103', 'DHK-mettro G 15-1205'),
(4, '104', 'DHK-mettro F 15-1205');

-- --------------------------------------------------------

--
-- Table structure for table `participated`
--

CREATE TABLE `participated` (
  `id` int(11) NOT NULL,
  `driver_id` char(20) DEFAULT NULL,
  `carId` int(11) DEFAULT NULL,
  `report_number` char(20) DEFAULT NULL,
  `damage_amount` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participated`
--

INSERT INTO `participated` (`id`, `driver_id`, `carId`, `report_number`, `damage_amount`) VALUES
(1, '101', 1, '1032', 1000.00),
(2, '102', 2, '1052', 2000.00),
(3, '103', 3, '1082', 5000.00);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `driver_id` char(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `driver_id`, `name`, `address`) VALUES
(1, '101', 'Mr.Abdullah', 'Dhanmodi 32'),
(2, '102', 'Mr.Rasel', 'Kolabagan, Dhaka'),
(3, '103', 'Mr.Motin', 'Bonani, Dhaka'),
(4, '104', 'Mr.Sajeeb khan', 'Mirpur-2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accident`
--
ALTER TABLE `accident`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owns`
--
ALTER TABLE `owns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participated`
--
ALTER TABLE `participated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carId` (`carId`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accident`
--
ALTER TABLE `accident`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `owns`
--
ALTER TABLE `owns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `participated`
--
ALTER TABLE `participated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `participated`
--
ALTER TABLE `participated`
  ADD CONSTRAINT `participated_ibfk_1` FOREIGN KEY (`carId`) REFERENCES `car` (`id`);
--
-- Database: `insurance3`
--
CREATE DATABASE IF NOT EXISTS `insurance3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `insurance3`;

-- --------------------------------------------------------

--
-- Table structure for table `accident`
--

CREATE TABLE `accident` (
  `report_number` int(20) NOT NULL,
  `driverId` int(11) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `license` int(20) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `year` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`license`, `model`, `year`) VALUES
(102540, 'TOyota MR2', 2013),
(102541, 'Mitsubishi Pajero', 2019),
(102542, 'Volvo', 2013);

-- --------------------------------------------------------

--
-- Table structure for table `owns`
--

CREATE TABLE `owns` (
  `driver_id` int(20) NOT NULL,
  `license` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owns`
--

INSERT INTO `owns` (`driver_id`, `license`) VALUES
(101, 102540),
(102, 102541),
(103, 102542);

-- --------------------------------------------------------

--
-- Table structure for table `participated`
--

CREATE TABLE `participated` (
  `driver_id` char(20) NOT NULL,
  `car` int(11) DEFAULT NULL,
  `report_number` char(20) DEFAULT NULL,
  `damage_amount` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participated`
--

INSERT INTO `participated` (`driver_id`, `car`, `report_number`, `damage_amount`) VALUES
('101', 102540, '1032', 500),
('102', 102541, '1052', 500),
('103', 102542, '1082', 500);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `driver_id` int(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`driver_id`, `name`, `address`) VALUES
(101, 'Mr. Saiful Islam', 'Dhanmonid 32'),
(102, 'Mr. Rabiul Islam', 'Dhanmonid 27'),
(103, 'Mr. Rakibul', 'Bonani');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accident`
--
ALTER TABLE `accident`
  ADD PRIMARY KEY (`report_number`),
  ADD KEY `driverId` (`driverId`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`license`);

--
-- Indexes for table `owns`
--
ALTER TABLE `owns`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `participated`
--
ALTER TABLE `participated`
  ADD PRIMARY KEY (`driver_id`),
  ADD KEY `car` (`car`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`driver_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accident`
--
ALTER TABLE `accident`
  ADD CONSTRAINT `accident_ibfk_1` FOREIGN KEY (`driverId`) REFERENCES `person` (`driver_id`);

--
-- Constraints for table `participated`
--
ALTER TABLE `participated`
  ADD CONSTRAINT `participated_ibfk_1` FOREIGN KEY (`car`) REFERENCES `car` (`license`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"shopping\",\"table\":\"tbl_product\"},{\"db\":\"db_shop\",\"table\":\"tbl_product\"},{\"db\":\"shopping\",\"table\":\"tbl_category\"},{\"db\":\"shopping\",\"table\":\"tbl_admin\"},{\"db\":\"shopping\",\"table\":\"tbl_brand\"},{\"db\":\"shopping\",\"table\":\"test\"},{\"db\":\"insurance\",\"table\":\"participated\"},{\"db\":\"insurance\",\"table\":\"owns\"},{\"db\":\"insurance\",\"table\":\"person\"},{\"db\":\"insurance\",\"table\":\"works\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'insurance', 'car', '{\"CREATE_TIME\":\"2019-07-04 13:28:46\"}', '2019-07-04 08:38:01');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-08-23 07:04:20', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `shohoz`
--
CREATE DATABASE IF NOT EXISTS `shohoz` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shohoz`;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(10) NOT NULL,
  `emp_name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `salary` int(20) DEFAULT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `emp_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `branch`, `salary`, `join_date`, `emp_address`) VALUES
(101, 'Md.Azad Hosen', 'Dhaka', 20000, '2019-06-26 18:13:59', NULL),
(102, 'Md.Azad Hosen', 'Dhaka', 20000, '2019-06-26 18:20:41', NULL),
(103, 'Md.Sajeeb Hossain', 'Chittagong', 10000, '2019-06-26 18:20:41', NULL),
(104, 'Md.Moshiur', 'Chittagong', 10000, '2019-06-26 18:21:50', NULL),
(104, 'Md.Moshiur', 'Chittagong', 10000, '2019-06-26 18:22:12', NULL),
(104, 'Md.Moshiur', 'Chittagong', 10000, '2019-06-26 18:22:48', NULL),
(106, 'Md.Azad Hosen', 'Dhaka', 20000, '2019-06-26 18:22:48', NULL),
(107, 'Md.Rasel ', 'Dhaka', 15500, '2019-06-26 18:22:48', NULL),
(108, 'Md.Moir', 'Chittagong', 10000, '2019-06-26 18:22:48', NULL),
(109, 'Md.Moshiur', 'Chittagong', 10000, '2019-06-26 18:22:48', NULL),
(1010, 'Md.Siam Ahmmed', 'Dhaka', 12000, '2019-06-26 18:22:48', NULL),
(1011, 'Md.Rasel ', 'Dhaka', 15500, '2019-06-26 18:22:48', NULL),
(1012, 'Md.Emon Mia', 'Tangail', 10000, '2019-06-26 19:00:58', 'dhaka, Dhanmondi'),
(1013, 'MD.Royel', 'Tangail', 15000, '2019-06-26 19:00:58', 'panthapath, Dhaka');
--
-- Database: `shopping`
--
CREATE DATABASE IF NOT EXISTS `shopping` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shopping`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `eamil` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `eamil`, `password`) VALUES
(2, 'admin', NULL, '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`id`, `brand_name`, `status`) VALUES
(1, 'HP', NULL),
(2, 'Accer', 0),
(3, 'Dell', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `cat_name` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `cat_name`, `status`) VALUES
(1, 'Dell', 0),
(2, 'HP', 1),
(9, 'Mouse', 1),
(10, 'Phone', 1),
(17, 'Acer', NULL),
(25, 'I-phone', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `cat` int(11) DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `tages` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `cat`, `brandId`, `product_name`, `price`, `description`, `image`, `tages`, `status`) VALUES
(6, 17, 2, '1000', '1000', '<p>Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.</p>\r\n', 'uploads/1e351ab681.', 'DFS', 0),
(7, 2, 3, '1000', '1000', '<p>Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.</p>\r\n', 'uploads/ca83285f84.', 'DF, aadd', 0),
(8, 2, 2, 'AA', '1000', '<p>Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.Text will be go here.</p>\r\n\r\n', ' uploads/e4a80c1956.jpg', 'ds', 1),
(9, 10, 3, 'T-shart', '15485', '', 'uploads/32ec6b0e21.jpg', 'DF, aadd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `catIds` int(11) DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `catIds`, `brandId`, `name`) VALUES
(1, 1, 1, 'azad'),
(2, 1, 1, 'samsung'),
(3, 25, 3, 'aa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brandId` (`brandId`),
  ADD KEY `cat` (`cat`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catIds` (`catIds`),
  ADD KEY `brandId` (`brandId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `cat` FOREIGN KEY (`cat`) REFERENCES `tbl_category` (`catId`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`cat`) REFERENCES `tbl_category` (`catId`),
  ADD CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`brandId`) REFERENCES `tbl_brand` (`id`);

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`catIds`) REFERENCES `tbl_category` (`catId`),
  ADD CONSTRAINT `test_ibfk_2` FOREIGN KEY (`brandId`) REFERENCES `tbl_brand` (`id`);
--
-- Database: `stu_info`
--
CREATE DATABASE IF NOT EXISTS `stu_info` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `stu_info`;

-- --------------------------------------------------------

--
-- Table structure for table `stu_info1`
--

CREATE TABLE `stu_info1` (
  `Stu_ID` varchar(10) DEFAULT NULL,
  `Stu_Name` char(10) DEFAULT NULL,
  `Stu_Dept` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_info1`
--

INSERT INTO `stu_info1` (`Stu_ID`, `Stu_Name`, `Stu_Dept`) VALUES
('CE12001', 'Pronoy', 'CSE'),
('CE12002', 'Eva', 'CSE'),
('CE12003', 'Riya', 'CSE'),
('CE12004', 'Pronoy', 'CSE'),
('CE12005', 'masum', 'CSE'),
('CE12006', 'sathy', 'CSE'),
('IT12001', 'Hasem', 'ICT'),
('IT12002', 'Ashik', 'ICT'),
('IT12003', 'Asad', 'ICT'),
('IT12004', 'Hirok', 'ICT'),
('IT12005', 'Sazib', 'ICT'),
('IT12006', 'Omar', 'ICT'),
('BE12001', 'Ayaan', 'BGE'),
('BE12002', 'Abdullah', 'BGE'),
('BE12003', 'Bulbul', 'BGE'),
('BE12004', 'Saddam', 'BGE'),
('BE12005', 'Sium', 'BGE'),
('BE12006', 'Sajid', 'BGE');

-- --------------------------------------------------------

--
-- Table structure for table `stu_info2`
--

CREATE TABLE `stu_info2` (
  `Stu_ID` varchar(10) DEFAULT NULL,
  `Stu_Dist` char(10) DEFAULT NULL,
  `Stu_phone` double(20,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_info2`
--

INSERT INTO `stu_info2` (`Stu_ID`, `Stu_Dist`, `Stu_phone`) VALUES
('CE12010', 'chararabai', 1914343536.0),
('CE12003', 'Rangpur', 1774745647.0),
('CE12002', 'Vuapur', 1943121345.0),
('CE12004', 'comilla', 1734776654.0),
('CE12007', 'Jamalpur', 1839133456.0),
('CE12009', 'Chandina', 1735576537.0),
('BE12010', 'chararabai', 1914343536.0),
('BE12003', 'Rangpur', 1774745647.0),
('BE12002', 'Vuapur', 1943121345.0),
('BE12004', 'comilla', 1734776654.0),
('BE12007', 'Jamalpur', 1839133456.0),
('BE12009', 'Dhaka', 1735576537.0);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
