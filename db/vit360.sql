-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 27, 2017 at 11:09 AM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vit360`
--

-- --------------------------------------------------------

--
-- Table structure for table `academics_answers`
--

CREATE TABLE `academics_answers` (
  `slno` int(11) NOT NULL,
  `question_id` varchar(20) NOT NULL,
  `answer` text NOT NULL,
  `posted_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `answered_by` varchar(50) NOT NULL,
  `answered_by_role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academics_answers`
--

INSERT INTO `academics_answers` (`slno`, `question_id`, `answer`, `posted_time`, `answered_by`, `answered_by_role`) VALUES
(2, '123452', 'For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages.', '2017-03-18 05:20:59', 'vinayak@vit.ac.in', 'Faculty'),
(3, '123455', 'The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs grab quick-jived waltz. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs grab quick-jived waltz.Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs grab quick-jived waltz.', '2017-03-18 05:21:03', 'vinayak@vit.ac.in', 'Faculty'),
(4, '123452', 'Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs grab quick-jived waltz. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs grab quick-jived waltz.', '2017-03-18 05:20:53', 'rabindrakumar.singh@vit.ac.in', 'Faculty'),
(6, '123457', 'You just need to specify an identifier for each table, so you can specify which table are you talking about when you refer to a field. Then, make sure you link all the id\'s as a condition so you leave out all the combinations where identifiers don\'t match.', '2017-03-18 05:20:41', 'gautham.asok2013@vit.ac.in', 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `academics_questions`
--

CREATE TABLE `academics_questions` (
  `slno` int(11) NOT NULL,
  `q_id` varchar(20) NOT NULL,
  `question` text NOT NULL,
  `asked_by` varchar(50) NOT NULL,
  `question_school_id` varchar(20) NOT NULL,
  `posted_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academics_questions`
--

INSERT INTO `academics_questions` (`slno`, `q_id`, `question`, `asked_by`, `question_school_id`, `posted_date`) VALUES
(5, '123452', 'Question 4. The European languages are members of the same family. Their separate existence is a myth.', 'karthick2013@vit.ac.in', 'scse_cc', '2017-03-17 15:59:06'),
(2, '123455', 'Question 2. We are gradually adding new functionality and we welcome your suggestions.', 'gautham.asok2013@vit.ac.in', 'smbs_cc', '2017-03-18 05:06:56'),
(1, '123456', 'Question 1. This handy tool helps you create dummy text for all your layout needs.', 'gautham.asok2013@vit.ac.in', 'scse_cc', '2017-03-17 15:55:09'),
(4, '123457', 'Question 3. The European languages are members of the same family. Their separate existence is a myth.', 'karthick2013@vit.ac.in', 'smbs_cc', '2017-03-18 05:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `academics_school`
--

CREATE TABLE `academics_school` (
  `slno` int(11) NOT NULL,
  `school` varchar(20) NOT NULL,
  `school_id` varchar(20) NOT NULL,
  `campus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academics_school`
--

INSERT INTO `academics_school` (`slno`, `school`, `school_id`, `campus`) VALUES
(3, 'MBA', 'mba_cc', 'Chennai'),
(1, 'SCSE', 'scse_cc', 'Chennai'),
(2, 'SMBS', 'smbs_cc', 'Chennai');

-- --------------------------------------------------------

--
-- Table structure for table `club_details`
--

CREATE TABLE `club_details` (
  `slno` int(11) NOT NULL,
  `club_name` varchar(50) NOT NULL,
  `club_logo` text NOT NULL,
  `campus` varchar(50) NOT NULL,
  `club_id` varchar(50) NOT NULL,
  `club_description` text NOT NULL,
  `club_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club_details`
--

INSERT INTO `club_details` (`slno`, `club_name`, `club_logo`, `campus`, `club_id`, `club_description`, `club_email`) VALUES
(7, 'Aerodynamics Club', '', 'Chennai', 'aero_cc', 'Aerodynamics is the way air moves around things. The rules of aerodynamics explain how an airplane is able to fly. Anything that moves through air reacts to aerodynamics. A rocket blasting off the launch pad and a kite in the sky react to aerodynamics.', 'aerodynamics.club@vit.ac.in'),
(6, 'Android Club', '', 'Chennai', 'and_cc', 'android.com. Android is a mobile operating system developed by Google, based on the Linux kernel and designed primarily for touchscreen mobile devices such as smartphones and tablets.', 'android.club@vit.ac.in'),
(8, 'Robotics Club', '', 'Chennai', 'robo_cc', 'Robotics is the interdisciplinary branch of engineering and science that includes mechanical engineering, electrical engineering, computer science, and others.', 'robotics.club@vit.ac.in'),
(9, 'Uddeshya Club', '', 'Chennai', 'udd_cc', 'Womens\' empowerment has become a significant topic of discussion in development and economics. It can also point to approaches regarding other trivialized', 'uddeshya.club@vit.ac.in');

-- --------------------------------------------------------

--
-- Table structure for table `club_members`
--

CREATE TABLE `club_members` (
  `slno` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL,
  `clubid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club_members`
--

INSERT INTO `club_members` (`slno`, `email`, `role`, `clubid`) VALUES
(1, 'gautham.asok2013@vit.ac.in', 'Student Co-ordinator', 'and_cc'),
(2, 'rabindrakumar.singh@vit.ac.in', 'Faculty Co-ordinator', 'and_cc'),
(3, 'vinayak@vit.ac.in', 'Faculty Co-ordinator', 'aero_cc'),
(4, 'karthick2013@vit.ac.in', 'Student Co-ordinator', 'aero_cc');

-- --------------------------------------------------------

--
-- Table structure for table `club_taskline`
--

CREATE TABLE `club_taskline` (
  `slno` int(11) NOT NULL,
  `c_id` varchar(50) NOT NULL,
  `posted_by` varchar(50) NOT NULL,
  `task_title` text NOT NULL,
  `task_description` text NOT NULL,
  `posted_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club_taskline`
--

INSERT INTO `club_taskline` (`slno`, `c_id`, `posted_by`, `task_title`, `task_description`, `posted_date`) VALUES
(1, 'aero_cc', 'karthick2013@vit.ac.in', 'Minna Canth was a Finnish writer and social activist.', 'Life teaches us that we always get what we want right away, it teaches us that we still dont have control over time no matter how good our time management skills are and no matter how good we are at predicting our future. If it not our time yet, we can do nothing about it.', '2017-03-19 10:02:06'),
(2, 'and_cc', 'gautham.asok2013@vit.ac.in', 'Is a notable Finnish realist and naturalist writer', 'No matter how many degrees we have or what kind of education we received, there are some thing that only life can teach us-lessons that we only learn in the school of life.', '2017-03-19 09:24:59'),
(3, 'aero_cc', 'vinayak@vit.ac.in', 'Canth began to write while managing', 'There are no choices that are really a detour that will take you far from where you\'re wanting to be -- because your Inner Being is always guiding you to the next, and the next, and the next.', '2017-03-19 09:23:56'),
(4, 'and_cc', 'rabindrakumar.singh@vit.ac.in', 'Detour that will take you far from where you', 'So don\'t be concerned that you may make a fatal choice, because there aren\'t any of those. You are always finding your balance. It\'s a never ending process.', '2017-03-19 09:25:22'),
(5, 'aero_cc', 'karthick2013@vit.ac.in', 'Sunday\'s Google Doodle is a celebration of Finnish', 'Serving as virtual librarians, Wikipedia volunteers tackle your questions ons, Wikipedia volunteers tackle your questions on a wide range of subjects. a wide range of subjects.Serving as virtual librarians, Wikipedia volunteers tackle your questions on a wide range of subjects.Serving as virtual librarian', '2017-03-19 09:24:18'),
(6, 'and_cc', 'gautham.asok2013@vit.ac.in', 'A young law student blindly enters into a pact with', 'Objects whose gravitational fields are too strong for light to escape were first considered in the 18th century by John Michell and Pierre-Simon Laplace. The first modern solution of general relativity that would characterize a black hole was found by Karl Schwarzschild in 1916, although its interpretation as a region of space from which nothing can escape was first published by David Finkelstein in 1958. ', '2017-03-19 09:25:50'),
(7, 'and_cc', 'gautham.asok2013@vit.ac.in', 'qwertyqwerty', 'efjnaskdjnkljrnfkjsdnfkjasdnfkajsfklqwertyqwerty', '2017-04-23 22:09:14'),
(8, 'and_cc', 'gautham.asok2013@vit.ac.in', 'efsdfsdf', 'zxxxxxxxxxcvzxcvzxcvacxvasdvzxzxvea', '2017-04-23 22:11:41'),
(9, 'and_cc', 'gautham.asok2013@vit.ac.in', 'ye mera jahan', 'je mer rajahan ye meri duniya tera kam kyahe yahan', '2017-04-24 04:06:48'),
(10, 'and_cc', 'gautham.asok2013@vit.ac.in', 'tst', 'testong', '2017-04-24 04:08:50'),
(11, 'aero_cc', 'vinayak@vit.ac.in', 'testing', 'testing desc', '2017-04-24 04:24:59'),
(12, 'aero_cc', 'vinayak@vit.ac.in', 'qwerty', 'qwerty lorem ipsum dolar imet', '2017-04-27 06:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `event_admin`
--

CREATE TABLE `event_admin` (
  `slno` int(11) NOT NULL,
  `event_admin_name` varchar(50) NOT NULL,
  `event_admin_email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `campuss` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_admin`
--

INSERT INTO `event_admin` (`slno`, `event_admin_name`, `event_admin_email`, `password`, `role`, `campuss`) VALUES
(1, 'M Gautham Asok', 'gautham.asok2013@vit.ac.in', 'gautham', 'Student', 'Chennai'),
(2, 'A Sai Chaithanya', 'sai.chaithnaya2013@vit.ac.in', 'sai', 'Student', 'Vellore');

-- --------------------------------------------------------

--
-- Table structure for table `event_details`
--

CREATE TABLE `event_details` (
  `slno` int(11) NOT NULL,
  `event_name` varchar(50) NOT NULL,
  `campus` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `event_type` varchar(20) NOT NULL,
  `event_date` varchar(20) NOT NULL,
  `event_month` varchar(20) NOT NULL,
  `event_year` varchar(20) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `event_posted_by` varchar(50) NOT NULL,
  `venue` varchar(20) NOT NULL,
  `cost` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_details`
--

INSERT INTO `event_details` (`slno`, `event_name`, `campus`, `description`, `event_type`, `event_date`, `event_month`, `event_year`, `post_date`, `event_posted_by`, `venue`, `cost`) VALUES
(1, 'Programming in C', 'Chennai', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Technical', '15', 'Jan', '2016', '2017-03-13 20:52:51', 'gautham.asok2013@vit.ac.in', 'AB205', 'Free'),
(2, 'Enchanting Evening', 'Chennai', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Cultural', '02', 'Feb', '2016', '2017-03-13 20:52:55', 'gautham.asok2013@vit.ac.in', 'MBA Amphi', 'Free'),
(3, 'summer camp', 'Chennai', 'summer camp for children', 'Sports', '25', 'may', '2017', '2017-04-25 02:53:50', 'gautham.asok2013@vit.ac.in', 'portigo', 'free');

-- --------------------------------------------------------

--
-- Table structure for table `fac_attributes`
--

CREATE TABLE `fac_attributes` (
  `slno` int(11) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `campus` varchar(20) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `school` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dp_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fac_attributes`
--

INSERT INTO `fac_attributes` (`slno`, `regno`, `name`, `campus`, `designation`, `school`, `email`, `dp_link`) VALUES
(3, '56123', 'Rabindra Kumar Singh', 'Chennai', 'Professor', 'SCSE', 'rabindrakumar.singh@vit.ac.in', ''),
(4, '56124', 'Dr. Vinayak M', 'Chennai', 'Asst. Professor', 'SMBS', 'vinayak@vit.ac.in', '');

-- --------------------------------------------------------

--
-- Table structure for table `info_admin`
--

CREATE TABLE `info_admin` (
  `slno` int(11) NOT NULL,
  `info_admin_name` varchar(50) NOT NULL,
  `info_admin_email` varchar(50) NOT NULL,
  `vit_id` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL,
  `campus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info_admin`
--

INSERT INTO `info_admin` (`slno`, `info_admin_name`, `info_admin_email`, `vit_id`, `password`, `role`, `campus`) VALUES
(2, 'R Ravi Kishore', 'ravi.kishore@vit.ac.in', '563214', 'ravi', 'Faculty Coordinator', 'Vellore'),
(1, 'M VIjay Kumar', 'vijay.kumar@vit.ac.in', '561234', 'vijay', 'Student Coordinator', 'Chennai');

-- --------------------------------------------------------

--
-- Table structure for table `info_details`
--

CREATE TABLE `info_details` (
  `slno` int(11) NOT NULL,
  `info_title` varchar(50) NOT NULL,
  `info_desc` text NOT NULL,
  `campus` varchar(50) NOT NULL DEFAULT 'Chennai',
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `info_posted_by` varchar(50) DEFAULT NULL,
  `post_month` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info_details`
--

INSERT INTO `info_details` (`slno`, `info_title`, `info_desc`, `campus`, `post_date`, `info_posted_by`, `post_month`) VALUES
(6, 'Fees Last date', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Chennai', '2017-03-14 05:34:30', 'vijay.kumar@vit.ac.in', 'Feb'),
(7, 'Check your PAT office', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Chennai', '2017-03-14 05:34:30', 'vijay.kumar@vit.ac.in', 'Jan');

-- --------------------------------------------------------

--
-- Table structure for table `stu_attributes`
--

CREATE TABLE `stu_attributes` (
  `slno` int(11) NOT NULL,
  `regno` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `campus` varchar(20) NOT NULL,
  `program` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `school` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dp_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_attributes`
--

INSERT INTO `stu_attributes` (`slno`, `regno`, `name`, `campus`, `program`, `branch`, `school`, `email`, `dp_link`) VALUES
(5, '13mse1149', 'M Gautham Asok', 'Chennai', 'MS', 'MSSE', 'SCSE', 'gautham.asok2013@vit.ac.in', ''),
(6, '14bme1021', 'V Karthick', 'Chennai', 'B Tech', 'Mech', 'SMBS', 'karthick2013@vit.ac.in', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `slno` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`slno`, `email`, `password`, `role`) VALUES
(88, 'aakash.kag2014@vit.ac.in', 'freedom', 'Student'),
(219, 'abdulquadir.md@vit.ac.in', 'computer', 'Faculty'),
(19, 'abhishekh.sheshshukla2014@vit.ac.in', 'hockey', 'Student'),
(46, 'abirami.m2014@vit.ac.in', 'matrix', 'Student'),
(82, 'aditi.site2014@vit.ac.in', 'forever', 'Student'),
(27, 'ajmal.usmane2014@vit.ac.in', 'computer', 'Student'),
(159, 'alok.chauhan@vit.ac.in', 'frogfrog', 'Faculty'),
(80, 'amolbhausaheb.wale2014@vit.ac.in', 'football1', 'Student'),
(40, 'amrute.rohangirish2014@vit.ac.in', 'yankees', 'Student'),
(72, 'anirudh.sainathadula2014@vit.ac.in', 'matrix', 'Student'),
(112, 'anita.susanjohn2014@vit.ac.in', 'jennifer', 'Student'),
(145, 'ankit.jain2014mcs1050@vit.ac.in', 'madison', 'Student'),
(51, 'ankita.dhawale2014@vit.ac.in', '111111', 'Student'),
(56, 'anshu.kaura2014@vit.ac.in', 'abc123', 'Student'),
(13, 'anubhav.dwivedi2014@vit.ac.in', 'iloveyou', 'Student'),
(220, 'anusooya.g@vit.ac.in', 'michelle', 'Faculty'),
(84, 'apandharinath.sonawane2014@vit.ac.in', 'francisco', 'Student'),
(100, 'aparamkusam.sagar2014@vit.ac.in', 'giants', 'Student'),
(188, 'aparna.v@vit.ac.in', 'john316', 'Faculty'),
(43, 'arun.sureshd2014@vit.ac.in', 'austin', 'Student'),
(160, 'asha.s@vit.ac.in', 'gabriela', 'Faculty'),
(62, 'ashish.sharma2014@vit.ac.in', 'master', 'Student'),
(141, 'ashwin.chandrasekar2014@vit.ac.in', 'loveyou', 'Student'),
(10, 'asmita.2014@vit.ac.in', 'andrew', 'Student'),
(161, 'asnathvicty.phamila@vit.ac.in', 'games', 'Faculty'),
(45, 'avenkata.sasikanth2014@vit.ac.in', 'taylor', 'Student'),
(59, 'avinash.r2014@vit.ac.in', 'letmein', 'Student'),
(39, 'avishikta.lodh2014@vit.ac.in', 'access', 'Student'),
(105, 'avvaru.venkatesh2014@vit.ac.in', 'jamesbond', 'Student'),
(97, 'balaji.n2014mcs1002@vit.ac.in', 'gators', 'Student'),
(142, 'bansode.yallalingram2014@vit.ac.in', 'loveyou1', 'Student'),
(149, 'bharadwaja.kumar@vit.ac.in', 'football1', 'Faculty'),
(95, 'bharat.bhushansingh2014@vit.ac.in', 'gateway', 'Student'),
(190, 'bharathiraja.s@vit.ac.in', 'johnson', 'Faculty'),
(168, 'bhargavi.r@vit.ac.in', 'george', 'Faculty'),
(35, 'bheemarasetty.surendra2014@vit.ac.in', 'nicole', 'Student'),
(78, 'bheemineti.shobhana2014@vit.ac.in', '1234567', 'Student'),
(31, 'bhonagiri.manasa2014@vit.ac.in', 'summer', 'Student'),
(87, 'bibek.kumarpatro2014@vit.ac.in', 'freddy', 'Student'),
(69, 'bikram.kumarjangra2014@vit.ac.in', 'austin', 'Student'),
(135, 'binsu.mathew2014@vit.ac.in', 'love123', 'Student'),
(83, 'bmonika.manikrao2014@vit.ac.in', 'forum', 'Student'),
(58, 'bokil.nikhilsunil2014@vit.ac.in', 'monkey', 'Student'),
(108, 'bprem.charan2014@vit.ac.in', 'jasmine', 'Student'),
(98, 'bsonal.rajendra2014@vit.ac.in', 'gemini', 'Student'),
(71, 'chinta.manojna2014@vit.ac.in', 'taylor', 'Student'),
(64, 'chintam.vamsidhareddy2014@vit.ac.in', 'qwertyuiop', 'Student'),
(63, 'chintha.gangadher2014@vit.ac.in', '666666', 'Student'),
(221, 'christyjackson.j@vit.ac.in', 'jessica', 'Faculty'),
(36, 'chsourabh.sattyendra2014@vit.ac.in', 'chelsea', 'Student'),
(37, 'ck.karthik2014@vit.ac.in', 'biteme', 'Student'),
(79, 'clakshmi.subrahmanyam2014@vit.ac.in', 'dragon', 'Student'),
(117, 'danish.ahmad2014@vit.ac.in', 'jesus1', 'Student'),
(12, 'dbsvssai.sankar2014@vit.ac.in', 'sunshine', 'Student'),
(222, 'deivanai.k@vit.ac.in', 'pepper', 'Faculty'),
(30, 'deshpande.akshayanand2014@vit.ac.in', 'pepper', 'Student'),
(119, 'didla.pallavi2014@vit.ac.in', 'jesuschrist', 'Student'),
(124, 'divita.srivastava2014@vit.ac.in', 'jordan', 'Student'),
(150, 'ganesan.r@vit.ac.in', 'ford', 'Faculty'),
(1, 'gautham.asok2013@vit.ac.in', 'qwerty', 'Student'),
(223, 'gayathri.r@vit.ac.in', 'summer', 'Faculty'),
(191, 'gayathridevi.b@vit.ac.in', 'jordan', 'Faculty'),
(224, 'geetha.m@vit.ac.in', 'love', 'Faculty'),
(154, 'geetha.s@vit.ac.in', 'frank', 'Faculty'),
(60, 'gopi.venkatasai2014@vit.ac.in', '696969', 'Student'),
(225, 'graceline.jasmine@vit.ac.in', 'ashley', 'Faculty'),
(15, 'gunnamlaxmi.narayana2014@vit.ac.in', 'sdfgf', 'Student'),
(5, 'hariharan2013@vit.ac.in', 'hari', 'Student'),
(90, 'harini.k2014@vit.ac.in', 'frogfrog', 'Student'),
(192, 'harini.s@vit.ac.in', 'jorgito', 'Faculty'),
(67, 'harini.shankar2014@vit.ac.in', '1234567890', 'Student'),
(193, 'hema.n@vit.ac.in', 'lemmein', 'Faculty'),
(194, 'hepsiba.mabel@vit.ac.in', 'letitbe', 'Faculty'),
(116, 'hkewal.bhaskar2014@vit.ac.in', 'jessica', 'Student'),
(226, 'ilakiyaselvan.n@vit.ac.in', '6969', 'Faculty'),
(54, 'imran.alikhanp2014@vit.ac.in', '123123', 'Student'),
(24, 'indu.prasad2014@vit.ac.in', '112233', 'Student'),
(214, 'isumaiyathaseen@vit.ac.in', 'starwars', 'Faculty'),
(237, 'jagadeeshkannan.r@vit.ac.in', 'taylor', 'Faculty'),
(52, 'jahnab.kumardeka2014@vit.ac.in', '1234567', 'Student'),
(236, 'janakimeena.m@vit.ac.in', 'thunder', 'Faculty'),
(195, 'jayaram.b@vit.ac.in', 'letmein', 'Faculty'),
(196, 'jayasudha.n@vit.ac.in', 'libertad', 'Faculty'),
(103, 'jayesh.kumar2014@vit.ac.in', 'jake', 'Student'),
(47, 'jdharmin.siddesh2014@vit.ac.in', 'qwerty', 'Student'),
(146, 'jeganathan.l@vit.ac.in', '111111', 'Faculty'),
(162, 'jenila.lm@vit.ac.in', 'gandalf', 'Faculty'),
(107, 'jonnadula.manisekhar2014@vit.ac.in', 'japan', 'Student'),
(111, 'jraja.bose2014@vit.ac.in', 'javier', 'Student'),
(163, 'justus.s@vit.ac.in', 'garou324', 'Faculty'),
(102, 'k.ganesan2014@vit.ac.in', 'jaguar', 'Student'),
(138, 'kalaivanan.a2014@vit.ac.in', 'loveme1', 'Student'),
(125, 'kambhampati.jyothi2014@vit.ac.in', 'jorgito', 'Student'),
(197, 'kanchanadevi@vit.ac.in', 'login', 'Faculty'),
(73, 'kandge.ruchavivek2014@vit.ac.in', 'qwerty', 'Student'),
(7, 'kanduri.vaishnavi2014@vit.ac.in', 'soccer', 'Student'),
(198, 'karmel.a@vit.ac.in', 'london', 'Faculty'),
(4, 'karthick2013@vit.ac.in', 'qwerty', 'Student'),
(227, 'kavya.alluru@vit.ac.in', 'nicole', 'Faculty'),
(228, 'khadarnawas.k@vit.ac.in', 'chelsea', 'Faculty'),
(61, 'kodali.srimalya2014@vit.ac.in', 'shadow', 'Student'),
(22, 'kolliparthy.purnasainadh2014@vit.ac.in', 'starwars', 'Student'),
(92, 'kompallli.sruthi2014@vit.ac.in', 'games', 'Student'),
(118, 'ksiva.nagatarun2014@vit.ac.in', 'jesusc', 'Student'),
(174, 'kumar.rangasamy@vit.ac.in', 'jamesbond', 'Faculty'),
(74, 'kush.tehlan2014@vit.ac.in', '123456789', 'Student'),
(65, 'kvenkat.nishithkumar2014@vit.ac.in', '123321', 'Student'),
(9, 'lav.bhagoliwal2014@vit.ac.in', 'batman', 'Student'),
(115, 'm.suseedhar2014@vit.ac.in', 'jericho', 'Student'),
(148, 'maheswari.n@vit.ac.in', 'dragon', 'Faculty'),
(175, 'maheswari.r@vit.ac.in', 'jamies', 'Faculty'),
(199, 'maheswari.s@vit.ac.in', 'soccer', 'Faculty'),
(164, 'malathi.g@vit.ac.in', 'gateway', 'Faculty'),
(21, 'manigandan.v2014mcc1015@vit.ac.in', 'daniel', 'Student'),
(106, 'mathi.vanan2014@vit.ac.in', 'jamies', 'Student'),
(99, 'mhyounus.farveazj2014@vit.ac.in', 'george', 'Student'),
(139, 'minnekanti.nymisha2014@vit.ac.in', 'lover', 'Student'),
(89, 'mnaveen.kumar2014@vit.ac.in', 'friends', 'Student'),
(16, 'mohammad.rayyan2014@vit.ac.in', 'charlie', 'Student'),
(86, 'mprasad.vijay2014@vit.ac.in', 'fred', 'Student'),
(186, 'msivagami@vit.ac.in', 'jesuschrist', 'Faculty'),
(66, 'msurya.tejaswini2014@vit.ac.in', 'mustang', 'Student'),
(189, 'muralidhar.a@vit.ac.in', 'johnny', 'Faculty'),
(200, 'nachiyappan.s@vit.ac.in', 'harley', 'Faculty'),
(240, 'nagaraj.sv@vit.ac.in', 'asdfgh', 'Faculty'),
(26, 'nagula.shyamkumar2014@vit.ac.in', 'astrex', 'Student'),
(18, 'nallavadla.sreelakshmi2014@vit.ac.in', 'thomas', 'Student'),
(238, 'nandhini.ramachandra@vit.ac.in', 'matrix', 'Faculty'),
(130, 'narahari.venkatesh2014@vit.ac.in', 'login', 'Student'),
(44, 'naresh.d2014@vit.ac.in', 'thunder', 'Student'),
(147, 'nayeemulla.khan@vit.ac.in', '1234567', 'Faculty'),
(165, 'neelanarayanan.v@vit.ac.in', 'gatito', 'Faculty'),
(201, 'nishavm@vit.ac.in', 'batman', 'Faculty'),
(155, 'nithyanandam.p@vit.ac.in', 'fred', 'Faculty'),
(229, 'nivedita.m@vit.ac.in', 'biteme', 'Faculty'),
(53, 'nivetha.2014@vit.ac.in', 'dragon', 'Student'),
(101, 'nsshekhar.shradha2014@vit.ac.in', 'ginger', 'Student'),
(41, 'palagiri.vaishnavi2014@vit.ac.in', '987654321', 'Student'),
(114, 'parth.sugandhi2014@vit.ac.in', 'jeremy', 'Student'),
(151, 'parvathi.r@vit.ac.in', 'forever', 'Faculty'),
(68, 'patil.akshayanant2014@vit.ac.in', 'michael', 'Student'),
(152, 'pattabiraman.v@vit.ac.in', 'forum', 'Faculty'),
(140, 'payal.chandra2014@vit.ac.in', 'lovers', 'Student'),
(23, 'perla.phanindrakumar2014@vit.ac.in', 'klaster', 'Student'),
(134, 'pkirank.prusty2014@vit.ac.in', 'love', 'Student'),
(202, 'prabha.karan@vit.ac.in', 'andrew', 'Faculty'),
(177, 'prabhakarrao@vit.ac.in', 'jasmine', 'Faculty'),
(230, 'pradeep.kv@vit.ac.in', 'matthew', 'Faculty'),
(231, 'prakash.bala@vit.ac.in', 'access', 'Faculty'),
(77, 'pranavilinngamallu2014@vit.ac.in', '111111', 'Student'),
(104, 'prasad.rajendra2014@vit.ac.in', 'james', 'Student'),
(129, 'prashik.nandeshwar2014@vit.ac.in', 'libertad', 'Student'),
(179, 'prassanna.j@vit.ac.in', 'jasper', 'Faculty'),
(70, 'pravinvithoba.shahare2014@vit.ac.in', 'thunder', 'Student'),
(180, 'premalatha.m@vit.ac.in', 'javier', 'Faculty'),
(203, 'priyaadharshini.m@vit.ac.in', 'tigger', 'Faculty'),
(166, 'priyadharshini.j@vit.ac.in', 'gators', 'Faculty'),
(127, 'pshweta.mahadeo2014@vit.ac.in', 'letitbe', 'Student'),
(176, 'psnithyadarshini@vit.ac.in', 'japan', 'Faculty'),
(204, 'punitha.k@vit.ac.in', 'sunshine', 'Faculty'),
(131, 'pushpinder.singh2014@vit.ac.in', 'london', 'Student'),
(110, 'pvpavan.kumar2014@vit.ac.in', 'jasper', 'Student'),
(3, 'rabindrakumar.singh@vit.ac.in', 'qwerty', 'Faculty'),
(85, 'rahul.k2014mcb1048@vit.ac.in', 'frank', 'Student'),
(205, 'rajarajeswari.s@vit.ac.in', 'iloveyou', 'Faculty'),
(167, 'rajesh.kumar@vit.ac.in', 'gemini', 'Faculty'),
(206, 'rajesh.m@vit.ac.in', 'futile', 'Faculty'),
(153, 'rajeshkanna.b@vit.ac.in', 'francisco', 'Faculty'),
(232, 'rajiv.vincent@vit.ac.in ', 'yankees', 'Faculty'),
(207, 'rajkumar.srinivasan@vit.ac.in', 'sdfgf', 'Faculty'),
(208, 'ramesh.ragala@vit.ac.in', 'charlie', 'Faculty'),
(48, 'regin.rajar2014@vit.ac.in', '123456789', 'Student'),
(209, 'rekha.d@vit.ac.in', 'robert', 'Faculty'),
(42, 'rekha.jh2014@vit.ac.in', 'dallas', 'Student'),
(113, 'rjyotsna.yasaswini2014@vit.ac.in', 'jer2911', 'Student'),
(33, 'rkarthick.raja2014@vit.ac.in', 'ashley', 'Student'),
(20, 'rmrahul.venkatesh2014@vit.ac.in', 'ranger', 'Student'),
(210, 'rukmani.p@vit.ac.in', 'thomas', 'Faculty'),
(122, 's.revathy2014@vit.ac.in', 'johnny', 'Student'),
(241, 'sakkaravarthi.r@vit.ac.in', 'ytrewwq', 'Faculty'),
(233, 'sakthiganesh.m@vit.ac.in', '987654321', 'Faculty'),
(169, 'saleena.b@vit.ac.in', 'giants', 'Faculty'),
(91, 'samineni.jayanthkumar2014@vit.ac.in', 'gabriela', 'Student'),
(183, 'sandhya.p@vit.ac.in', 'jessica', 'Faculty'),
(184, 'sathishkumar.b@vit.ac.in', 'jesus1', 'Faculty'),
(234, 'sathyarajasekaran.k@vit.ac.in', 'dallas', 'Faculty'),
(34, 'sethi.gauravvinod2014@vit.ac.in', '6969', 'Student'),
(123, 'shanmuga.priyaj2014@vit.ac.in', 'johnson', 'Student'),
(109, 'sharad.lamba2014@vit.ac.in', 'jason', 'Student'),
(50, 'sharanya.bhatt2014@vit.ac.in', '1234', 'Student'),
(211, 'sharathkumar.j@vit.ac.in', 'hockey', 'Faculty'),
(143, 'shindetushar.ashok2014@vit.ac.in', 'lucky', 'Student'),
(57, 'shiwangi.yadav2014@vit.ac.in', 'football', 'Student'),
(212, 'sholausha.rani@vit.ac.in', 'ranger', 'Faculty'),
(185, 'shridevi.s@vit.ac.in', 'jesusc', 'Faculty'),
(136, 'shrimathy.2014@vit.ac.in', 'lovely', 'Student'),
(128, 'silpa.kambam2014@vit.ac.in', 'letmein', 'Student'),
(170, 'sivabalakrishnan.m@vit.ac.in', 'ginger', 'Faculty'),
(96, 'smudra.sudhirbhai2014@vit.ac.in', 'gatito', 'Student'),
(55, 'soma.pavansimha2014@vit.ac.in', 'baseball', 'Student'),
(121, 'sonali.singh2014mcs1026@vit.ac.in', 'john316', 'Student'),
(126, 'spreetkaur.cheema2014@vit.ac.in', 'lemmein', 'Student'),
(120, 'sramakant.komawar2014@vit.ac.in', 'john', 'Student'),
(14, 'sramana.sengupta2014@vit.ac.in', 'futile', 'Student'),
(171, 'sridhar@vit.ac.in', 'jaguar', 'Faculty'),
(156, 'subbulakshmi.t@vit.ac.in', 'freddy', 'Faculty'),
(133, 'suchita.singh2014@vit.ac.in', 'lotus', 'Student'),
(6, 'suganya.g@vit.ac.in', 'suganya', 'Faculty'),
(75, 'sujith.kumargurram2014@vit.ac.in', '12345', 'Student'),
(29, 'suman.deyashi2014@vit.ac.in', 'jessica', 'Student'),
(144, 'sunil.mandiwal2014@vit.ac.in', 'maddog', 'Student'),
(25, 'svivek.kumar2014@vit.ac.in', 'george', 'Student'),
(239, 'sweetlin.hemalatha@vit.ac.in', 'qwerty', 'Faculty'),
(157, 'syedibrahim.sp@vit.ac.in', 'freedom', 'Faculty'),
(132, 'tayade.nayanpanjab2014@vit.ac.in', 'loser1', 'Student'),
(187, 'thomasabraham.jv@vit.ac.in', 'john', 'Faculty'),
(28, 'tpratik.mohanbhai2014@vit.ac.in', 'michelle', 'Student'),
(178, 'tspradeepkumar@vit.ac.in', 'jason', 'Faculty'),
(215, 'tulasiprasad.sariki@vit.ac.in', 'klaster', 'Faculty'),
(17, 'turlapati.sainath2014@vit.ac.in', 'robert', 'Student'),
(81, 'u.kishore2014@vit.ac.in', 'ford', 'Student'),
(216, 'umamaheswari.e@vit.ac.in', '112233', 'Faculty'),
(217, 'umitty.srinivasarao@vit.ac.in', 'george', 'Faculty'),
(11, 'uthra.k2014@vit.ac.in', 'tigger', 'Student'),
(49, 'vaishnavi.a2014@vit.ac.in', '12345', 'Student'),
(235, 'verginraja.m@vit.ac.in', 'austin', 'Faculty'),
(32, 'vidit.gupta2014@vit.ac.in', 'love', 'Student'),
(182, 'vijaya.k@vit.ac.in', 'jericho', 'Faculty'),
(158, 'vijayakumar.v@vit.ac.in', 'friends', 'Faculty'),
(218, 'vijayalakshmi.av@vit.ac.in', 'astrex', 'Faculty'),
(76, 'vinay.gajula2014@vit.ac.in', '1234', 'Student'),
(2, 'vinayak@vit.ac.in', 'qwerty', 'Faculty'),
(93, 'vinodkumar.raavula2014@vit.ac.in', 'gandalf', 'Student'),
(8, 'vipashyana.jagannath2014@vit.ac.in', 'harley', 'Student'),
(38, 'vishal.bkolki2014@vit.ac.in', 'matthew', 'Student'),
(172, 'vishnupriya.r@vit.ac.in', 'jake', 'Faculty'),
(173, 'viswanathan.v@vit.ac.in', 'james', 'Faculty'),
(137, 'vkranthi.kumar2014@vit.ac.in', 'loveme', 'Student'),
(94, 'wagh.tejasanant2014@vit.ac.in', 'garou324', 'Student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academics_answers`
--
ALTER TABLE `academics_answers`
  ADD UNIQUE KEY `slno` (`slno`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `answered_by` (`answered_by`);

--
-- Indexes for table `academics_questions`
--
ALTER TABLE `academics_questions`
  ADD PRIMARY KEY (`q_id`),
  ADD UNIQUE KEY `slno` (`slno`),
  ADD KEY `posted_by` (`asked_by`),
  ADD KEY `question_class_tag` (`question_school_id`);

--
-- Indexes for table `academics_school`
--
ALTER TABLE `academics_school`
  ADD PRIMARY KEY (`school_id`),
  ADD UNIQUE KEY `slno` (`slno`);

--
-- Indexes for table `club_details`
--
ALTER TABLE `club_details`
  ADD PRIMARY KEY (`club_id`),
  ADD UNIQUE KEY `slno` (`slno`);

--
-- Indexes for table `club_members`
--
ALTER TABLE `club_members`
  ADD UNIQUE KEY `slno` (`slno`),
  ADD KEY `email` (`email`),
  ADD KEY `clubid` (`clubid`);

--
-- Indexes for table `club_taskline`
--
ALTER TABLE `club_taskline`
  ADD UNIQUE KEY `slno` (`slno`),
  ADD KEY `club_id` (`c_id`),
  ADD KEY `posted_by` (`posted_by`);

--
-- Indexes for table `event_admin`
--
ALTER TABLE `event_admin`
  ADD PRIMARY KEY (`event_admin_email`),
  ADD UNIQUE KEY `slno` (`slno`);

--
-- Indexes for table `event_details`
--
ALTER TABLE `event_details`
  ADD UNIQUE KEY `id` (`slno`),
  ADD KEY `event_posted_by` (`event_posted_by`);

--
-- Indexes for table `fac_attributes`
--
ALTER TABLE `fac_attributes`
  ADD UNIQUE KEY `slno` (`slno`),
  ADD KEY `email` (`email`) USING BTREE;

--
-- Indexes for table `info_admin`
--
ALTER TABLE `info_admin`
  ADD PRIMARY KEY (`info_admin_email`),
  ADD UNIQUE KEY `slno` (`slno`);

--
-- Indexes for table `info_details`
--
ALTER TABLE `info_details`
  ADD UNIQUE KEY `slno` (`slno`),
  ADD KEY `info_posted_by` (`info_posted_by`);

--
-- Indexes for table `stu_attributes`
--
ALTER TABLE `stu_attributes`
  ADD UNIQUE KEY `slno` (`slno`),
  ADD KEY `email` (`email`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `slno` (`slno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academics_answers`
--
ALTER TABLE `academics_answers`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `academics_questions`
--
ALTER TABLE `academics_questions`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `academics_school`
--
ALTER TABLE `academics_school`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `club_details`
--
ALTER TABLE `club_details`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `club_members`
--
ALTER TABLE `club_members`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `club_taskline`
--
ALTER TABLE `club_taskline`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `event_admin`
--
ALTER TABLE `event_admin`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `event_details`
--
ALTER TABLE `event_details`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fac_attributes`
--
ALTER TABLE `fac_attributes`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `info_admin`
--
ALTER TABLE `info_admin`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `info_details`
--
ALTER TABLE `info_details`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `stu_attributes`
--
ALTER TABLE `stu_attributes`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `academics_answers`
--
ALTER TABLE `academics_answers`
  ADD CONSTRAINT `academics_answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `academics_questions` (`q_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `academics_answers_ibfk_2` FOREIGN KEY (`answered_by`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `academics_questions`
--
ALTER TABLE `academics_questions`
  ADD CONSTRAINT `academics_questions_ibfk_1` FOREIGN KEY (`question_school_id`) REFERENCES `academics_school` (`school_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `academics_questions_ibfk_2` FOREIGN KEY (`asked_by`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `club_members`
--
ALTER TABLE `club_members`
  ADD CONSTRAINT `club_members_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `club_members_ibfk_2` FOREIGN KEY (`clubid`) REFERENCES `club_details` (`club_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `club_taskline`
--
ALTER TABLE `club_taskline`
  ADD CONSTRAINT `club_taskline_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `club_details` (`club_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `club_taskline_ibfk_2` FOREIGN KEY (`posted_by`) REFERENCES `club_members` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `event_details`
--
ALTER TABLE `event_details`
  ADD CONSTRAINT `event_details_ibfk_1` FOREIGN KEY (`event_posted_by`) REFERENCES `event_admin` (`event_admin_email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fac_attributes`
--
ALTER TABLE `fac_attributes`
  ADD CONSTRAINT `fac_attributes_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `info_details`
--
ALTER TABLE `info_details`
  ADD CONSTRAINT `info_details_ibfk_1` FOREIGN KEY (`info_posted_by`) REFERENCES `info_admin` (`info_admin_email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stu_attributes`
--
ALTER TABLE `stu_attributes`
  ADD CONSTRAINT `stu_attributes_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
