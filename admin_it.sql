-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: mysql.it.mitindia.edu
-- Generation Time: May 21, 2021 at 03:10 AM
-- Server version: 5.7.28-log
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_it`
--

-- --------------------------------------------------------

--
-- Table structure for table `Activities`
--

CREATE TABLE `Activities` (
  `FID` varchar(5) DEFAULT NULL,
  `ACTIVITY` varchar(179) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Activities`
--

INSERT INTO `Activities` (`FID`, `ACTIVITY`) VALUES
('ITF03', 'Video Streaming in 3G Wireless Network for Tele-medicine Applications\' Year 2012, funded by University Grant Commission, Govt. of India, New Delhi.'),
('ITF03', 'Development of Mobile and Pervasive Computing Systems\', Year 2012, University Grant Commission, Govt. of India, New Delhi under DRS-SAP.'),
('ITF03', 'Enhancing the Performance of Mobile Device Using Cloud\', Year 2014, funded by Anna University, Chennai.'),
('ITF03', 'Automated Tele Video Surveillance Over Internet\', Year 2014, funded by Anna University, Chennai.'),
('ITF03', 'Hand-Mouse Human Computer Interaction Using Hand Gesture Year 2013, funded by Anna University, Chennai'),
('ITF03', 'Android Plus: Easing the User Interaction and Helping Illiterates Year 2012 funded by Anna University'),
('ITF03', '\'Intellisense: Human Computer Interaction Using Hand Gestures\',Year 2011, funded by Anna University, Chennai.'),
('ITF03', 'ITU Kaleidoscope 2014: Living in a converged world - impossible without standards Saint Petersburg, Russian Federation, 3-5 June 2014.'),
('ITF03', 'Two sessions in International Conference on High Performance Computing, Networking and Communication Systems (HPCNCS-08) held at Orlando, Florida, USA during 07 to 10th July,2008.'),
('ITF03', 'Kentucky Science & Engineering Foundation, Kentucky Science & Technology Corporation, Lexington, KY, USA.'),
('ITF03', 'International Journal of Computer Applications , Foundation of Computer Science, New York, USA.'),
('ITF03', 'American Academic and Scholarly Research Journal (AASRJ) , Delaware, USA.'),
('ITF03', 'Webmed Central Publication, UK'),
('ITF03', 'International Journal of Computer Networking, Wireless and Mobile Communications (IJCNWMC), India'),
('ITF03', 'International Journal of Computer Science and Engineering (IJCSE), India'),
('ITF03', 'International Journal of Recent Trends in Mathematics & Computing, India'),
('ITF04', 'Integrating Wireless Sensor Networks with Web Services for IP-based systems'),
('ITF04', 'Data Base Transactions and scheduling in Mobile Ad Hoc Networks'),
('ITF04', 'Improving Deduplication strategies in Cloud Computing'),
('ITF04', 'Integration of Wireless Sensor Networks with cloud based Community-centric Application'),
('ITF04', 'Effective Storage services and Data Security in Cloud Computing'),
('ITF04', 'Scaling Online Internet Applications in Distributed Systems by Data Aware Partitioning and Replication'),
('ITF04', 'Cooperative Communication Aware Relay Node Selection for Mobile Ad-hoc Networks and Cognitive Mobile Ad-hoc Networks'),
('ITF04', 'Video Surveillance Over Internet'),
('ITF04', 'Multitenant Testing over Social Networks'),
('ITF03', 'Maintaining a web sites for U.G./P.G class'),
('ITF03', 'A dedicated web site for student\'s Mini-projects'),
('ITF03', 'Online web-based discussion for research and final year students'),
('ITF03', 'Research & development news for students');

-- --------------------------------------------------------

--
-- Table structure for table `Award`
--

CREATE TABLE `Award` (
  `FID` varchar(5) DEFAULT NULL,
  `AWARDDETAILS` longtext,
  `YEAR` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Award`
--

INSERT INTO `Award` (`FID`, `AWARDDETAILS`, `YEAR`) VALUES
('ITF17', 'Presented a paper on \'BLU_RAY\' technology at National Level BYTE QUEST-07.', NULL),
('ITF17', 'Presented a paper on \'REDTACTON\' at National Level CONCOURS-08.', NULL),
('ITF17', 'Participation in \'ROCKETRY\' at National Level CONCOURS-08', NULL),
('ITF14', 'Ranked as District 2nd in +2 Annual Examinations under rural level (Villupuram Dist).', NULL),
('ITF04', 'Name & brief resume included in World\'s Whose Who published by MARQUIS, USA in 27th Edition, for the year 2010', NULL),
('ITF03', 'Ministry of Human Resource Development, GOI, New Delhi scholarship (through GATE) to pursue M.E. and M.Tech. programs.', NULL),
('ITF03', 'Rewarded by Intel Software Network group for a contest \'Show Us Your Threads\' in the year 2007.', NULL),
('ITF03', 'Name & brief resume included in World\'s Whose Who published by MARQUIS, USA in 27th Edition, for the year 2010.', NULL),
('ITF03', 'Nominated for \"Rashtriya Gaurav Award\" by India International Friendship Society, New Delhi, in the year 2010', NULL),
('ITF03', 'Fellowship by ITU\'s Telecommunication Standardization Sector (ITU-T), Geneva, year 2009.', NULL),
('ITF03', 'Fellowship by United Nation Development Program (UNDP) through ITU-T, Geneva Year 2011.', NULL),
('ITF03', 'A prize (RIM/BlackBerry) by ITU-T under two best ranked papers that include a young author during Kaleidoscope 2011 at Cape Town.', NULL),
('ITF03', 'Selected for the \"Mother Teresa Excellence\" award by the Integrated Council for Scio-Economic Progress, Thrissur.', NULL),
('ITF18', 'Won   1st   prize   for   paper  presentation   in   Government  College  of Engineering, Tirunelveli', NULL),
('ITF18', 'Won   1st   prize   in   project   presentation   contest   held   in   Angel   Engineering  College,  Tirupur.', NULL),
('ITF18', 'Won  2nd  prize   in   software   designing   contest   in   G.K.M   College   of   Engineering, Chennai', NULL),
('ITF18', 'Won   2nd   prize   for   paper  presentation   in   SCMS   School   of   Engineering and  Technology,  Ernakulam,  Kerala.', NULL),
('ITF18', 'Won  3rd  prize  in  C-programming  Contest   in  Francis  Xavier  Engineering College, Tirunelveli.', NULL),
('ITF18', 'Awarded as First Rank Holder in the Academic year 2012-2013 by B.S.Abdur Rahman University, Vandalur, Chennai for excellence in proficiency.', NULL),
('ITF18', 'Launched   a project   named  \'IP   camera   security   system\' in Indian Institute   of   Technology, Guwahati.', NULL),
('ITF11', '\"Best Lecturer \" given by Sri Muthukumaran Institute of Technology from India (2005)', NULL),
('ITF07', '\"DRONA AWARD\" given by IBM INDIA from INDIA (2011)', NULL),
('ITF27', 'Best Project Award in Technology Innovation Project (TIP-2019) organized by\r\nDepartment of Information Science and Technology and Centre for Industry University\r\nCollaboration, CEG, Anna University, Chennai on March 27, 2019', NULL),
('ITF28', 'Anna University Rank Holder in PG Degree', NULL),
('ITF31', 'Received Anna Centenary Research Fellowship (ACRF 2018) scholarship from Anna University, INDIA.[ Award Letter No.: CFR/ACRF/2018/AR1/35]', '2018');

-- --------------------------------------------------------

--
-- Table structure for table `Conference`
--

CREATE TABLE `Conference` (
  `FID` varchar(5) DEFAULT NULL,
  `Detailsofconference` varchar(319) DEFAULT NULL,
  `Period` varchar(17) DEFAULT NULL,
  `NationalInternational` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Conference`
--

INSERT INTO `Conference` (`FID`, `Detailsofconference`, `Period`, `NationalInternational`) VALUES
('ITF03', 'Dhananjay Kumar and Chellappan C., \"System Modeling and BER Analysis of a Cellular CDMA-TDD System to Support Asymmetric Internet Traffic\", Proceeding of International Conference on Communication, Convergence and Broadband Networking (ICCBN 2008), IISc., Bangalore,', 'July 17-19, 2008.', NULL),
('ITF19', 'Content Based Video Copy Detection -By Fusing Frames in a National conference on Digital Conference held on April 2012 organized by RMK Engineering College, TamilNadu. (Published in Conference Proceedings with ISBN : 978-81-92', 'Apr-12', NULL),
('ITF04', 'M.R.Sumalatha, has participated in International Conference on Advanced Computing, ICSCN-2007 at MIT, Anna university held during 22-24,Feb, 2007', '22-24,Feb, 2007', NULL),
('ITF06', 'Participated in the \'International Conference on Advanced Computing (ICAC 2009)\', conducted by Department of Information Technology, Anna University Chennai, MIT Campus, 13-15, December 2009.', '2009', NULL),
('ITF06', 'Participated in the International Conference on \'Advanced Computing and Communications (ADCOM 2008)\' conducted by Department of Information Technology, Anna University Chennai, MIT Campus, 14-17, December 2008.', '2008', NULL),
('ITF06', 'Participated in the \'National Conference on Advanced Computing (NCAC-2007)\', organized by the Department of Information Technology, Anna University, M.I.T. Campus, on 16th and 17th February 2007.', '2007', NULL),
('ITF09', 'National conference on \'Role of Women for India Ahead\' organized by the SRM University, April 2 - 3, 2007.', '2007', NULL),
('ITF09', 'Organized a National Level Workshop on Free & Open Source Software along with IBM at Alpha College of Engineering, Thirumazhisai during December 12 & 13, 2007.', '2007', NULL),
('ITF09', 'National Conference on Recent Advances in Computer Networks at Karunya University on 17th March 2007.', '2007', NULL),
('ITF09', 'International Conference on Advanced Computing 2009, at Anna University, MIT Campus, Chromepet, 14th to 15th December 2009.', '2007', NULL),
('ITF06', 'Participated in the \'National Conference on Advanced Computing (NCAC-2006)\', organized by the Department of Information Technology, Madras Institute of Technology, Anna University, on 10th and 11th February 2006.', '2006', NULL),
('ITF04', 'M.R.Sumalatha, has participated in International Conference on Advanced Computing, ADCOM-2006 at MIT, Anna university held during 20-23,Dec, 2006', '20-23,Dec, 2006', NULL),
('ITF18', 'Presented  the  paper  entitled  “Data  Integrity  and  Confidentiality  Assurance  for  Cloud  Storage”  on April 16th 2013 in  National  Conference  on  Advanced  Electronics  and  Communication  held  at  Thanthai  Periyar  Government  Institute  of  Technology,  Vellore', '16-Apr', NULL),
('ITF04', 'M.R.Sumalatha, has participated in National Conference on Advanced Computing, NCAC-2007 at MIT, Anna university held during 16-17,Feb, 2007', '16-17,Feb, 2007', NULL),
('ITF04', 'M.R.Sumalatha, has participated in National Conference on Advanced Computing, NCAC-2006 at MIT, Anna university held during 10-11,Feb, 2006', '10-11,Feb, 2006', NULL),
(NULL, NULL, NULL, 'International'),
(NULL, NULL, NULL, 'International'),
(NULL, NULL, NULL, 'National'),
(NULL, NULL, NULL, 'National'),
('ITF20', 'Presented a paper on neural networks in an international conference conducted by vins Christian College of Engineering,kanyakumari', NULL, NULL),
('ITF20', 'Presented a paper titled as fast learning algorithm for action recognition in a national conference Conducted by S.A.College of Engineering, Chennai. ', NULL, NULL),
('ITF08', NULL, NULL, NULL),
('ITF03', 'Genetic Algorithm based Dynamic Spectrum Allocation in UHF- ISM band of 902-928 MHz with RADAR as Primary User for Cognitive Radio, Proceeding of International Conference on Recent Trends in Information Technology (ICRTIT 2013)', NULL, NULL),
('ITF03', 'Cross Layered Implementation with Multiple Descriptive Coding to Support Video Streaming in IEEE 802.11e Networks, Proceeding of International Conference on Recent Trends in Information Technology (ICRTIT 2013),', NULL, NULL),
('ITF03', 'Multilayered Resolution Based Coding for Internet Video Streaming , Proceeding of International Conference on Recent Trends in Information Technology (ICRTIT 2013)', NULL, NULL),
('ITF03', 'Video Compression with an Effective Block Matching Alogorithm and RDOT, Proceeding of International Conference on Recent Trends in Information Technology (ICRTIT 2013),', NULL, NULL),
('ITF03', 'Video Compression with an Effective Block Matching Alogorithm and RDOT, Proceeding of International Conference on Recent Trends in Information Technology (ICRTIT 2013) July 25-27,2013. ', NULL, NULL),
('ITF03', 'Video Compression with an Effective Block Matching Alogorithm and RDOT, Proceeding of International Conference on Recent Trends in Information Technology (ICRTIT 2013),', NULL, NULL),
('ITF03', 'Harmonized Q-Learning For Radio Resource Management In LTE Based Networks, Proceeding of International Conference on ITU Kaleidoscope: Building Sustainable Communities (K-2013),', NULL, NULL),
('ITF03', 'Proceeding of International Conference on Recent Trends in Computer Science and Engineering(ICRTCSE 2012), Srilakshmi, Dhananjay Kumar, \"Survey on Different Reinforcement Learning Algorithms in Cognitive Radio System\", Chennai,', NULL, NULL),
('ITF03', 'A Review of Human Activity Recognition and Behavior Understanding in Video Surveillance, Proceeding of Advanced Computer Science & Information Technology (ACSIT-2012), Chennai,', NULL, NULL),
('ITF03', 'Survey on Different Reinforcement Learning Algorithms in Cognitive Radio System, Proceeding of Recent Trends in Computer Science and Engineering (ICRTCSE 2012),', NULL, NULL),
('ITF03', 'Reinforced HMM based Learning Model of dynamic spectrum allocation in UHF ISM Band of 902-928 MHz for Cognitive Radio, Proceeding of Recent Trends In Information Technology (ICRTIT2012), Chennai,', NULL, NULL),
('ITF03', 'Spectrum Opportunity in UHF ISM Band of 902-928 MHz for Cognitive Radio, Proceeding of International Conference on Advanced Computing (ICoAC),', NULL, NULL),
('ITF03', 'Radio Resource Management in OFDMA-CRN Considering Primary User Activity and Detection Scenario, Proceeding of ITU-T Kaleidoscope event: The fully networked human-Innovations for future networks and services,', NULL, NULL),
('ITF03', 'A QoS aware cross-layer optimisation for wireless video streaming, proceeding of International Congress on Ultra Modern Telecommunications and Control Systems and Workshops (ICUMT), Budapest, Hungary,', NULL, NULL),
('ITF03', 'Adaptive Packet Scheduling algorithm for Real-Time Services in Wi-MAX Networks, proceeding of International Conference on Recent Trends in Information Technology (ICRTIT 2011),', NULL, NULL),
('ITF03', 'Dynamic Resource Management for Downlink Multimedia Traffic in OFDMA Cellular Networks, proceeding of ITU-T Kaleidoscope event: Beyond the Internet-Innovations for future networks and services, Pune, India,', NULL, NULL),
('ITF03', 'Optimal Resource Management in OFDMA Wireless Networks to Support Multimedia Traffic, proceeding of International Conference on Multimedia, ACM Multimedia 2010, Italy,', NULL, NULL),
('ITF03', 'Dhananjay Kumar, Chellappan C., Srividhya S., Mariappan P. and Martheeswaran M., \"Dynamic Resource Management for Downlink Multimedia Traffic in OFDMA Cellular Networks\", IEEE Xplore, Proceeding of 2nd ITU-T Kaleidoscope event: Innovations for Digital Inclusion, Mar del Plata, Argentina,', NULL, NULL),
('ITF03', 'System Modeling and BER Analysis of a Cellular CDMA-TDD System to Support Asymmetric Internet Traffic, proceeding of International Conference on Communication, Convergence and Broadband Networking (ICCBN 2008), IISc., Bangalore,', NULL, NULL),
('ITF03', 'Dhananjay Kumar, Chellappan C., Sivakami K., Rabbul Nawaz K.S. and Srividhya S., \"Adaptive Resource Management for TDD-CDMA Cellular Wireless Multimedia Networks\" IEEE Xplore, Proceeding of International Conference on Advanced Computing and Communication (ADCOM-2008), Chennai,', NULL, NULL),
('ITF03', 'Dhananjay Kumar and Chellappan C., \"Performance analysis of cellular CDMA-TDD system to support asymmetric internet traffic\", Proceeding of 2008 International Conference on High Performance Computing, Networking and Communication Systems (HPCNCS-08), Orlando, FL,', NULL, NULL),
('ITF03', 'Dhananjay Kumar, Nithya.S, Karthik.M, Sathish.R, \"Enhancing the Performance of SIP in UMTS IP Multimedia Subsytem\", 2008 International Conference on High Performance Computing, Networking and Communication Systems (HPCNCS-08), Orlando, FL, USA, July 7-10, 2008. ', NULL, NULL),
('ITF03', 'Dhananjay Kumar, Nithya.S, Karthik.M, Sathish.R, \"Enhancing the Performance of Session Initiation Protocol in UMTS\", IEEE Xplore, Proceeding of International Conference on    Emerging Trends in Engineering and Technology (ICETET-08),', NULL, NULL),
('ITF05', 'Radha Senthilkumar, Kannan, A., Bhuvaneswari, M.\'Query Optimization for Inter Document Relationships in XML Structured Document\', (IEEE Explore Indexed), in Proceeding of International conference on computational intelligence and multimedia applications, (ICCIMA 2007), pp. 25-32, 2007.', NULL, NULL),
('ITF05', 'Radha Senthilkumar, Kannan, A., Prasanna, V., and Hindumathi, P. \'Query Optimization for Intra Document Relationships in XML Structured Document\', in Proceedings of International Conference on open-source systems & Technologies(ICOST), pp: 45-52, 2007.', NULL, NULL),
('ITF05', 'Radha Senthilkumar and Kannan, A. \'Optimizing Queries with Foreign Functions in a Dynamic Multi-database Environment\', in Proceedings of 1st International Conference on Advances in Computing, pp. 1-5, 2008.', NULL, NULL),
('ITF05', 'Radha Senthilkumar, Kannan, A., Jasber Jenitha, V., Kalpana, R. and Karthikeyan, P. \'Querying and Maintaining a Compact Redundancy Free XML Storage\', in Proceedings of 1st International Conference on Advances in Computing, pp. 1-4, 2008.', NULL, NULL),
('ITF05', 'Radha Senthilkumar, Kannan, A. Shankar, S., Sakthivel, D., Elangovan, R. \'Optimizing Top-k join queries over relational repositories\', in the proceeding of 1st International conference on Data Engineering and Management (ICDEM), pp. 11-15, 2008.', NULL, NULL),
('ITF05', 'Radha Senthilkumar, Gayathri, B. and Kannan, A. \'Security enforcement on RFX Storage- A selective encryption approach\', (IEEE Explore Indexed), in Proceedings of the 2008 International Conference on Computing, Communication and Networking (ICCCN), pp 1-6, 2008.', NULL, NULL),
('ITF05', 'Radha Senthilkumar, Daphne Hannah, S., Raj Kumar, A, Y., Joyson, R. and Kannan, A. \'RFXFreeze: A Non-Queriable Compression for RFX Storage Structure\', (IEEE Explore Indexed), in Proceedings of the 2008 International Conference on Computing, Communication and Networking (ICCCN), pp. 1-5, 2008.', NULL, NULL),
('ITF05', 'Radha Senthilkumar, Rakesh, G, B., Sasikala, N., Gowrishankar, M. and Kannan, A. \'Nested XPath Query Optimization for XML Structured Document Database\', (IEEE Explore Indexed), in Proceeding of Advanced Computing and Communications (ADCOM), pp. 422-426, 2008', NULL, NULL),
('ITF05', 'Radha Senthilkumar, Priyaa Varshinee, S., Manipriya, S., Gowrishankar, M. and Kannan, A. \'Query Optimization of RFX Compact Storage using Strategy List, (IEEE Explore Indexed), in Proceeding of Advanced Computing and Communications (ADCOM), pp. 427-432, 2008.', NULL, NULL),
('ITF05', 'Radha Senthilkumar, Kannan, A., Hariharan, K., Harishankar, N., Aravindan, G, P. and Muthuraj, R. \'Validating Constraints for Inter and Intra Relationships in XML Structured Document\', (ACM DL Indexed), in Proceeding of 1st International Conference on Emerging Trends in Engineering and Technology, pp. 1120-1125, 2008.', NULL, NULL),
('ITF05', 'Radha Senthilkumar, Kannan, A., Rakesh, G., B., Sasikala, N., Sathiya Raj, S. \'Nested XPath Query Optimization for inter and intra document Relationship in XML Structured Database\', (IEEE Explore Indexed), in Proceedings of 1st International Conference on Advances in Computing, pp. 11-15, 2008.', NULL, NULL),
('ITF05', 'B.Pravin Kumar, V.Divakar, E.vinoth and Radha Senthilkumar, \'An Integrated Framework for Relational and Hierarchical Mining of Frequent Closed Patterns\', Communications in Computer and Information Science, 1, Volume 40, Contemporary Computing, Part 3, pp 115-126, 2009.', NULL, NULL),
('ITF05', 'Radha Senthilkumar, Lingeshwara, C. and Kannan, A. \'Content Based Compression for QUICX System\', LNCS-CCIS Vol 191, Springer Verlag, pp. 19-29, 2011.', NULL, NULL),
('ITF05', 'Radha Senthilkumar, Sugnaya, N., Kiruthika, I. and Kannan, A. \'Indexing and Querying the Compressed XML Data (IQCX)\', LNCS-CCIS Vol 198, Springer Verlag, pp. 497-506, 2011.', NULL, NULL),
('ITF05', 'Radha Senthilkumar and Kannan, A. \'Query and Update Support for Indexed and Compressed XML(QUICX)\', LNCS-CCIS Vol 162, Springer Verlag, pp. 414- 428, 2011.', NULL, NULL),
('ITF05', 'Sindhu Sudhakaran and Radha Senthilkumar, \'Efficient Evaluation of Partial Path Queries over a XML Compact Storage Structure\', International Conference on Advances in Computing, Communications and Informatics, pp.28-32, 2012.', NULL, NULL),
('ITF05', 'Ruby Carlin Gerogewin, S Sriram, S Raghav Babu Subramanian, Radha Senthilkumar, \'On Fly Search approach for Compact XML\', in Proceedings of ICRTIT, pp.347-351, 2013.', NULL, NULL),
('ITF05', 'S. Meenakshi, Radha Senthilkumar, \'Generating Relvant Paths using Keyword Search on Compact XML\', in Proceedings of ICRTIT, pp. 312-317, 2013.', NULL, NULL),
('ITF05', 'Radha Senthilkumar, Gowtham G, Hemalathaa S and Anirudh S, \'iCars : Accident Occurrence Detection and Effective Path Tracing using FCD\', ICoAC, pp. 478-483, 2013.', NULL, NULL),
('ITF05', '\nR. Madhu, Radha Senthilkumar, \'Recommendation System to Accomplish User Pursuit\', ICRTIT, pp:1-4, 2014.', NULL, NULL),
('ITF05', 'M. Shankar, Radha Senthilkumar, \'Harnessing the Semantic Analysis of Tag using Semantic Based Lesk Algorithm\', ICRTIT, pp. 1-5, 2014', NULL, NULL),
('ITF05', 'S. Anuja, M. Monisha, Radha Senthilkumar, \" Scale Independent Query Processing using Optimal Access Schema \" Advances in Natural and Applied Sciences 02/2015, 9(6):409-415', NULL, NULL),
('ITF05', 'N. Nasrin Banu, Radha Senthilkumar, \"A Game Theoretic approach for Feature Selection using Two Player Non Zero sum Games\", International Conference on Electrical , Electronics and Computer Engineering, March 2015.', NULL, NULL),
('ITF05', 'N. Nasrin Banu, Radha Senthilkumar, \"A Game Theoretic approach for Filter Based Feature Selection\", 2nd International Conference on Engineering Technology and Science, March 2015.', NULL, NULL),
('ITF05', 'Udhaya Kumar. T, Radha Senthilkumar, \"CWC - Secured Distributed Computing using Android Devices\", 5th International Conference on Recent Trends in Information Technology, 2016 (Under Publication)', NULL, NULL),
('ITF05', 'Yazhini Priyanka, Radha Senthilkumar, \"Sampling Techniques for Streaming Dataset using Sentiment Analysis\", 5th International Conference on Recent Trends in Information Technology, 2016 (Under Publication)', NULL, NULL),
('ITF10', 'S.Umamaheswari and N.Ramadass, \"Pipelined Architecture for Quasi Arithmetic Coding\"\r\npresented in a National level conference on Signals,Systems and Communication\r\n-NCSSC-2006, organised by Dept. of Electronics and Communication Engg., CEG, Anna\r\nUniversity, India from 01-Jun-2006 to 02-Jun-2006', NULL, NULL),
('ITF10', 'S. Umamaheswari, J. Rajapaul Perinbam, K.Monisha and J. Jahir Ali, \"Comparing the\r\nPerformance Parameters of Network on Chip with Regular and Irregular Topologies\" presented\r\nin a International level conference, organised by Springer Verlag Berlin, Heidelberg , India from\r\n15-Jul-2011 to 17-Jul-2011', NULL, NULL),
('ITF10', 'S.Umamaheswari, N.Nancy and J.Rajapaul Perinbam, \"Dynamic Buffer Management to\r\nImprove the Performance of Fault Tolerance Adaptive Network-On-Chip Applications\"\r\npresented in a International level conference, organised by Department of Information Technology, Anna University, India\r\nfrom 19-Apr-2012 to 21-Apr-2012', NULL, NULL),
('ITF10', 'Prathiba. D, Umamaheswari. S, \"Application Based Topology Adaptation In Noc Architecture\"\r\npresented in a National level conference on AICTE Sponsored National Conference on\r\nCommunication and Informatics [NCCI-2013], organised by Department of Information\r\nTechnology, SVCE, India from 02-May-2013 to 03-May-2013', NULL, NULL),
('ITF10', 'Prathiba. D, Umamaheswari.S, \"Application based topology adaptation in NOC architecture\r\nwith reduced power dissipation\" presented in a International level conference, organised by Department of Information\r\nTechnology, Anna University, India from 25-Jul-2013 to 27-Jul-2013', NULL, NULL),
('ITF10', 'Umamaheswari. S, Indu Kirthiga. K, Abinaya. B.S, Ashwin. D, \"Cost Aware Task Scheduling\r\nAnd Core Mapping on Network-on-Chip topology using Firefly Algorithm\" presented in a\r\nInternational level conference, organised by Department of Information Technology, Anna University, India from 25-Jul-2013\r\nto 27-Jul-2013', NULL, NULL),
('ITF10', 'Umamaheswari S, Meganathan D and Raja Paul Perinbam J, \"Customized Adaptive Algorithm\r\nfor Deadlock Free Routing in Irregular Mesh NoC\" presented in a International level conference\r\non Chennai 4th International Conference, organised by K.C.G College of Technology, Chennai, India from\r\n12-Dec-2013 to 14-Dec-2013', NULL, NULL),
('ITF10', 'Umamaheswari S, Nithya R, Aiswarya S and Tharani B, \"Parallel Cache Management with\r\nTwofish Encryption using GPU \" presented in a International level conference on Joint\r\nInternational Conference, organised by Department of EEE,\r\nSRM University, Kattankulathur-603203, India from 19-May-2016 to 21-May-2016', NULL, NULL),
('ITF06', 'P. Kola Sujatha, R. Arun, P.V. Shantoosh, I. Ezra Prince Jebahar and A. Kannan, \"Network\r\nLevel Anomaly Detection System using MST Based Genetic Clustering\" on Computer Network Security and\r\napplications (CNSA 2011), organised by Communications in CCIS, India from 15-Jul-2011 to 17-Jul-2011', NULL, NULL),
('ITF22', 'Paper presented, titled \"Selfish nodes detection in mobile ad-hoc networks\" at Maria College of Engineering and Technology-Kanyakumari(Feb 2012)', NULL, NULL),
('ITF22', 'Paper presented, titled \"Ocular Journeying across bio-medical database\" at Dr.M.G.R Educational&Research Institute University-Chennai(April 2012)', NULL, NULL),
('ITF17', 'Detection of Static and Dynamic Behavior in Forbidden Areas of a Complex Environment .\"\r\npresented in a International level conference, organised by Karpagam\r\ncollege of engineering, India from 12-Dec-2014 to 13-Dec-2014', NULL, NULL),
('ITF02', 'Valarmathi, J., K. Lakshmi, R. S. Menaga, K. V. Abirami, and V. Rhymend Uthariaraj, \"SLA for a Pervasive Healthcare Environment\" presented in a International level conference on Advances in Computing and Information Technology, organised by Springer Berlin Heidelberg', NULL, NULL),
('ITF02', 'Elizabeth, B. Lydia, S. Sudha, A. John Prakash, and V. Rhymend Uthariaraj, \"An Improved Uncertainty Reduction Scheme Based on Bayesian Prediction in MANETs\" presented in a International level conference on Advances in Network Security and Applications, organised by Springer Berlin Heidelberg', NULL, NULL),
('ITF02', 'Vanathi, B., and V. Rhymend Uthariaraj, \"Context Management Using Ontology and Object Relational Database (ORDBMS) in a Pervasive Environment\" presented in a International level conference on Advances in Networks and Communications, organised by Springer Berlin Heidelberg.', NULL, NULL),
('ITF02', ' Monisha, J. Hannah, and V. Rhymend Uthariaraj, \"A Dynamic Scheduling Model for Manets using Order Statistics\" presented in a International level conference on Recent Trends In Information Technology , organised by IEEE.', NULL, NULL),
('ITF02', 'Shunmuga Peruma, P., and R. Rhymend Uthariaraj, \"Removal of radio irregularity crisis in WSN localization using enhanced Co-ordinate Signal Strength Database\" presented in a International level conference on Devices, Circuits and Systems , organised by IEEE.', NULL, NULL),
('ITF02', 'Gopalakrishnan, K., and V. Rhymend Uthariaraj, \"Collaborative Polling Scheme to Detect and Isolate the Colluding Packet Droppers in Mobile Ad Hoc Networks\" presented in a International level conference on Advances in Network Security and Applications, organised by Springer Berlin Heidelberg', NULL, NULL),
('ITF02', 'Elizabeth, B. Lydia, R. Aaishwarya, P. Kiruthika, M. Nandini Shrada, A. John Prakash, and V. R. Uthariaraj, \"Bayesian based confidence model for trust inference in MANETs\" presented in a International level conference on Recent Trends in Information TechnologY, organised by IEEE.', NULL, NULL),
('ITF02', 'Malarvizhi, Nandagopal, and V. Rhymend Uthariaraj, \"A Minimum Time to Release Job Scheduling Algorithm in Computational Grid Environment\" presented in a International level conference on INC, IMS and IDC, organised by IEEE. ', NULL, NULL),
('ITF02', 'Malarvizhi, N., and V. Rhymend Uthariaraj, \"Hierarchical Load Balancing Scheme for Computational Intensive Jobs in Grid Computing Environment\" presented in a International level conference on Advanced Computing, organised by IEEE.', NULL, NULL),
('ITF02', 'Parthasarathy, V., A. V. Bharathi, and V. Rhymend Uthariaraj, \"Performance Analysis of Embedded Media Applications in Newer ARM Architectures\" presented in a International level conference on Parallel Processing, organised by IEEE', NULL, NULL),
('ITF02', 'Malarvizhi, N., and V. Rhymend Uthariaraj, \"A Broker-Based Approach to Resource Discovery and Selection in Grid Environments\" presented in a International level conference on Computer and Electrical Engineering, organised by IEEE.', NULL, NULL),
('ITF02', 'Gunasekaran, R., and V. Rhymend Uthariaraj, \"Differentiated Bandwidth Allocation in Mobile Ad Hoc Networks (MANET)-A Profile Based Approach\" presented in a International level conference on Signal Processing, Communications and Networking, organised by IEEE.', NULL, NULL),
('ITF02', 'Nandagopal, Malarvizhi, K. Gokulnath, and V. Rhymend Uthariaraj, \"Sender Initiated Decentralized Dynamic Load Balancing for Multi Cluster Computational Grid Environment\" presented in a International level conference on Proceedings of the 1st Amrita ACM-W Celebration on Women in Computing in India,, organised by ACM.', NULL, NULL),
('ITF02', 'Malarvizhi, Nandagopal, and V. Rhymend Uthariaraj, \"A New Mechanism for Job Scheduling in Computational Grid Network Environments\" presented in a International level conference on Active Media Technology, organised by Springer Berlin Heidelberg.', NULL, NULL),
('ITF02', 'Vanathi, B., and V. Rhymend Uthariaraj, \"Ontology Based Service Discovery for Context Aware Computing\" presented in a International level conference on Advanced Computing, organised by IEEE. ', NULL, NULL),
('ITF02', 'Aramudhan, M., and V. Rhymend Uthariaraj, \"LDMA: Load Balancing using DecentralizedDecision Making Mobile Agents\" presented in a International level conference onComputational Science, organised by Springer Berlin Heidelberg', NULL, NULL),
('ITF02', 'Gopalakrishnan, K., and V. Rhymend Uthariaraj, \"Scenario Based Evaluation of the Impact of Misbehaving Nodes in Mobile Ad Hoc Networks\" presented in a International level conference on Advanced Computing, organised by IEEE.', NULL, NULL),
('ITF02', 'Vanathi, B., and V. Rhymend Uthariaraj, \"Context Representation and Management in a Pervasive Environmen\" presented in a International level conference on Information and Communication Technologies, organised by Springer Berlin Heidelberg', NULL, NULL),
('ITF02', ' Prakash, A. John, and V. Rhymend Uthariaraj, \"Multicast Cryptosystem: A Cryptosystem for Secure Multicast Communication\" presented in a International level conference on Network and Parallel Computing, organised by IEEE.', NULL, NULL),
('ITF02', 'Vanathi, B., and V. Rhymend Uthariaraj, \"Context Representation using Hierarchical Method and Heuristic Based Context Selection in Context Aware Computing\" presented in a International level conference on Proceedings of the 1st Amrita ACM-W Celebration on Women in Computing in India, organised by ACM.', NULL, NULL),
('ITF02', 'Blessing, Elijah R., and Rhymend Uthariaraj, \"Evaluation and Analysis of Computational Complexity for Secure Multicast Models\" presented in a International level conference on Computational Science and Its Applications, organised by Springer Berlin Heidelberg.', NULL, NULL),
('ITF02', 'Gunasekaran, R., and V. Rhymend Uthariaraj, \"Prevention of Denial Of Service Attacks and Performance Enhancement in Mobile Adhoc Networks\" presented in a International level conference on Communication Systems and Networks and Workshops, organised by IEEE.', NULL, NULL),
('ITF02', 'Damodharan, T. K., and V. Rhymend Uthariaraj, \"USB Printer Driver Development for Handheld Devices\" presented in a International level conference on Information Technology Interfaces, organised by IEEE.', NULL, NULL),
('ITF02', 'Prakash, A. John, and V. Rhymend Uthariaraj, \"Multicrypt: A Provably Secure Encryption Scheme for Multicast Communication\" presented in a International level conference on Networks and Communications, organised by IEEE', NULL, NULL),
('ITF02', 'Uthariaraj, V. Rhymend, J. Valarmathi, G. Arjun Kumar, Praveen Subramanian, and R. Karthick, \"A Novel Trust Management Scheme Using Fuzzy Logic for a Pervasive Environment\" presented in a International level conference on Recent Trends in Networks and Communications, organised by Springer Berlin Heidelberg', NULL, NULL),
('ITF02', 'Valarmathi, J., V. Rhymend Uthariaraj, G. Arjun Kumar, Praveen Subramanian, and R. Karthick, \"A Novel Trust Management Scheme in Pervasive Computing\" presented in a International level conference on Information Management and Engineering, organised by IEEE.', NULL, NULL),
('ITF02', 'Gopalakrishnan, K., and V. Rhymend Uthariaraj, \"Local Monitoring Based Reputation System With Alert to Mitigate the Misbehaving Nodes in Mobile Ad Hoc Networks\" presented in a International level conference on Information and Communication Technologies, organised by Springer Berlin Heidelberg.', NULL, NULL),
('ITF02', 'Gunasekaran, R., V. Rhymend Uthariaraj, R. Sudharsan, S. Sujitha Priyadarshini, and U. Yamini, \"Detection and Prevention of Selfish and Misbehaving Nodes at Mac Layer in Mobile Ad Hoc Networks\" presented in a International level conference on Electrical and Computer Engineering, organised by IEEE.', NULL, NULL),
('ITF02', 'Gunasekaran, R., P. Sumitha, and V. Rhymend Uthariaraj, \"Throughput Enhancement in Ad Hoc Networks using Virtual Carrier Sensing Mechanism\" presented in a International level conference on Electronics and Information Engineering, organised by IEEE.', NULL, NULL),
('ITF02', 'Gunasekaran, R., V. Rhymend Uthariaraj, R. Rajesh, S. Kaarthikeyan, and S. Aravind, \"Priority Scheduling in Mobile Ad Hoc Networks with Improved Bandwidth Utilization\" presented in a International level conference on Electrical and Computer Engineering, organised by IEEE.', NULL, NULL),
('ITF02', 'Rhymend Uthariaraj, V., T. C. Rangarajan, S. Srinivasan, S. M. Vennila, and V. Sankaranarayanan, \"A Security-Centric Comparative Study of Please with Existing Gkm Protocols\" presented in a International level conference on Communication Networks and Services Research, organised by IEEE.', NULL, NULL),
('ITF02', 'Blessing, Elijah, and Rhymend Uthariaraj, \"Design of Secure Multicast Models for Mobile Services\" presented in a International level conference on Theory and Practice of Computer Science, organised by Springer Berlin Heidelberg.', NULL, NULL),
('ITF02', 'Srivathsan, R., S. Siddharth, Raghavan Muthuregunathan, R. Gunasekaran, and V. Rhymend Uthariaraj, \"Enhanced Genetic Algorithm for Solving Broadcast Scheduling Problem in Tdma Based Wireless Networks\" presented in a International level conference on Communication Systems and Networks, organised by IEEE. ', NULL, NULL),
('ITF02', 'Vidya, K., and V. R. Uthariaraj, \"Application Of Logarithmic Keying for Securing Aspath in Inter-Domain Routing\" presented in a International level conference on Advanced Computing, organised by IEEE.', NULL, NULL),
('ITF02', 'Blessing, R. E., and V. R. Uthariaraj, \"Fault Tolerant Analysis of Secure Multicast Models\" presented in a International level conference on Information, Communications and Signal Processing, 2003 and Fourth Pacific Rim Conference on Multimedia, organised by IEEE. ', NULL, NULL),
('ITF02', 'Prakash, A. John, and V. Rhymend Uthariaraj, \"Secure Authenticated Key Establishment Protocol for Ad hoc Networks\" presented in a International level conference on Network and System Security, organised by IEEE.', NULL, NULL),
('ITF02', 'Jayashree, D., and V. Rhymend Uthariaraj, \"New Rerouting Link-State Algorithm using Connected Dominating Set\" presented in a International level conference on Information, Communications and Signal Processing, 2003 and Fourth Pacific Rim Conference on Multimedia, organised by IEEE.', NULL, NULL),
('ITF02', 'Aramudhan, M., and V. Rhymend Uthariaraj, \"End-to-End Web service Performance comparison with Web Server Stress Tool\" presented in a International level conference on The Sixth International Conference on Information Integration and Web Based Applications & Services, organised by iiWAS', NULL, NULL),
('ITF02', 'Vennila, S., G. Vinoth, C. Vinoth, V. Sankaranarayanan, and V. Uthariaraj, \"G-LeaSel: A Secure Multicast Model for Grid\" presented in a International level conference on Communication Systems Software and Middleware, organised by IEEE.', NULL, NULL),
('ITF14', 'Presented paper on Concept Based Document Management in Cloud Storage, organised by MIT campus, Anna\r\nUniversity, India from 25-Jul-2013 to 27-Jul-2013', NULL, NULL),
('ITF02', 'Kanmani, S., V. Rhymend Uthariaraj, V. Sankaranarayanan, and P. Thambidurai, \"Measuring the Object-Oriented Properties in Small Sized C++ Programs An Empirical Investigation\" presented in a International level conference on Product Focused Software Process Improvement, organised by Springer Berlin Heidelberg.', NULL, NULL),
('ITF02', 'Vidya, K., and V. R. Uthariaraj, \"Performance Analysis of Two Inter-Domain Routing Protocols: BGP and HLP Using Taylor Series\" presented in a International level conference on Signal Processing, Communications and Networking, organised by IEEE.', NULL, NULL),
('ITF02', 'Vanathi, B., and V. Rhymend Uthariaraj, \"Towards a Hierarchical Based Context Representation and Selection by Pruning Technique in a Pervasive Environment\" presented in a International level conference on Advances in Computer Science and Information Technology, organised by Springer Berlin Heidelberg.', NULL, NULL),
('ITF02', 'Vanathi, B., and V. Rhymend Uthariaraj, \"Collaborative Context Management and Selection in Context Aware Computing\" presented in a International level conference on Advanced Computing, organised by Springer Berlin Heidelberg.', NULL, NULL),
('ITF02', 'Gopalakrishnan, K., and V. Rhymend Uthariaraj, \"Collaborative alert in a reputation system to alleviate colluding packet droppers in mobile ad hoc networks\" presented in a International level conference on Advances in Computer Science and Information Technology, organised by Springer Berlin Heidelberg.', NULL, NULL),
('ITF02', 'Nandagopal, Malarvizhi, and V. Rhymend Uthariaraj, \"Decentralized dynamic load balancing for multi cluster Grid environment\" presented in a International level conference on Advanced Computing, organised by Springer Berlin Heidelberg.', NULL, NULL),
('ITF02', 'Varalakshmi, R., and V. Rhymend Uthariaraj, \"A new secure multicast group key management using gray code\" presented in a International level conference on Recent Trends in Information Technology (ICRTIT), organised by IEEE.', NULL, NULL),
('', NULL, NULL, NULL),
('', NULL, NULL, NULL),
('', NULL, NULL, NULL),
('ITF15', '.R Ashoka Rajan, \"Fingerprint Enhancement Using OF Estimation\" presented in a National level conference on CIIT 13, organised by Kongu Engineering College, Erode., INDIA from 22-Feb-2013. ', NULL, NULL),
('ITF15', 'R Ashoka Rajan, Dr.P. Anandhakumar, \"A Novel Approach for Secure ATM Transactions Using Fingerprint Watermarking\" presented in a International level conference on ICoAC 13, organised by Dept of CT, MIT Campus, Anna University., INDIA from 18-Dec-2013 to 20-Dec-2013. ', NULL, NULL),
('ITF15', '\"Finger Print Enhancement Using O-F Estimation and Recognition for Cloud Security\" presented in a International level conference on ICoAC 13, organised by Dept of CT, MIT Campus, Anna University., INDIA from 18-Dec-2013 to 20-Dec-2013. ', NULL, NULL),
('ITF15', '\"Combined Additive and Multiplicative Modulo Encryption and Transformation Approach for Fingerprint Template Security\" presented in a International level conference on ICoAC 14, organised by Dept of CT, MIT Campus, Anna University., INDIA from 17-Dec-2014 to 19-Dec-2014.', NULL, NULL),
('ITF15', 'R Ashoka Rajan, Dr.P. Anandhakumar, \"Providing Fingerprint Template Security Using Two Level Encryption Approach\" presented in a International level conference on ICoAC 14, organised by Dept of CT, MIT Campus, Anna University, INDIA from 17-Dec-2014 to 19-Dec-2014. ', NULL, NULL),
('ITF07', 'G.Rajesh, B.Vinayagasundaram, E.Athithya, \" Prediction based Agglomeration\r\n(PbAG) Protocol Using Modified Kolmogorov-zurbenko Filter in Wireless Sensor\r\n\r\nNetworks\", International Conference on next generation Computing and\r\n\r\nCommunication Technologies , April 23 -24 ,2014 , Dubai , UAE , ISBN 978-93-\r\n\r\n8303-42- ', NULL, NULL),
('ITF07', 'G.Rajesh, B.Vinayagasundaram, R.ArunLakshman, L.Hari Prasad, N.Logeshwari,\r\n\r\n\"Secure in-network data Aggregation for wireless sensor networks\", SARC- ITR\r\n\r\nInternational Conference, ISBN 978-93- 84209-14- 8, May 5, 2014, Chennai, India.', NULL, NULL),
('ITF07', 'G.Rajesh, B.Vinayagasundaram, G.SaravanaMoorthy \" Data Fusion in Wireless\r\n\r\nSensor Network Using Simpson\'s 3/8 Rule\" International Conference in Recent\r\n\r\nTrends In Information Technology\'2014, IEEE explore, India.', NULL, NULL),
('ITF25', 'Anandhakumar P., Baskaran R., Kannan A. And Mehata K.M., ‘ Fuzzy Natural    Language Interface To Image Databases’ , Proceedings Of The International     Conference On Information Technology, India, Pp. 151-154, 2002.', NULL, NULL),
('ITF25', 'Anandhakumar P, And Mehata K.M., ‘Feature Extraction Using Neuro Dynamic Programming’, Proceedings Of The International Conference On Operation Research And Development (ICORD 2002), India, Pp. 73-74, 2002.', NULL, NULL),
('ITF25', 'Prabha S., Anandhakumar P And Kannan A., ‘Query Processing In XML Based      	Distributed Temporal Database’ Accepted For The International Conference On Recent    	Trends In Information Systems - IRIS’06 To Be Held During 6th-8th,  January,   	2006, India.', NULL, NULL),
('ITF25', 'Marikkannan M., Anandhakumar P and Kannan	A. (2005), ‘An	 Intelligent   	System For Exact Word Retrieval	In Document Databases’ , International     	Conference On Cognition And Recognition To Be Held During 22-23, December     	2005, India', NULL, NULL),
('ITF25', 'A. Suphalakshmi and Anandhakumar P, “ Fuzzy Logic Based Automatic     	Segmentation Of Echocardiographic Images” , Proceedings Of The     	Second 	International Conference On Information Processing, Pp. 149-162, 2008.', NULL, NULL),
('ITF25', 'A.Suphalakshmi, S. Narendran, and Anandhakumar P, “Transtexture Based\r\n    Segmentation of Echocardiographic Images”, IEEE International Conference On\r\n    Computing  Communications  And Networking,	Digital Object Identifier 10.1109/ICCCNET.2008. 4787731. \r\n', NULL, NULL),
('ITF25', 'A.Suphalakshmi, S. Narendran and Anandhakumar P, “ A Full Causal Two\r\n    Dimensional  Hidden  Markov  Model  For  Image  Segmentation” ,  IEEE\r\n    International Advanced Computing Conference, 2009. IACC 2009, Page(S): 442 -\r\n    445, Digital Object Identifier 10.1109/IADCC.2009. 4809051. \r\n', NULL, NULL),
('ITF25', '.  A.Suphalakshmi and Anandhakumar P, “ Fuzzysheds: A Novel Fuzzy Logic\r\n     Based Watersheds”, International Conference On Information Processing, UVCE,\r\n    Bangalore.\r\n', NULL, NULL),
('ITF25', 'V.Balamurugan And Anandhakumar P, ‘An Integrated Color And Texture\r\n     Feature  Based For Content Based Image Retrieval Using 2D Wavelet Transform’\r\n     In The Proceedings Of The	International Conference	On Computing,\r\n    Communication And Networking (ICCCN08), Karur.18-20 December 2008.\r\n', NULL, NULL),
('ITF25', 'V.Balamurugan and Anandhakumar P, ‘An Efficient Color, Texture and\r\n      Metadata Based Integrated Image Retrieval Framework’ In the Proceedings of the\r\n     International Conference on Sensors, Security, Software and Intelligent Systems\r\n     (ISSSIS2009), Coimbatore.8-10, January 2009.\r\n', NULL, NULL),
('ITF25', '. Anandhakumar P And V.Balamurugan, ‘ The New Integrated Color And Texture\r\n     Based Image Retrieval Using Neuro-Fuzzy Approach’ In The Proceedings Of The\r\n     International Conference On Intelligent Agent And Multi-Agent Systems\r\n     (IAMA2009) 22-24, July 2009, Chennai.\r\n', NULL, NULL),
('ITF25', '. V.Balamurugan And Anandhakumar P, ‘ The New Integrated Color And Texture\r\n     Based Image Retrieval Technique Using Back Propagation (BPN) Approach’ In\r\n     The Proceedings Of The International Conference On Advanced Computing \r\n     (ICAC 09).7-9, August 2009\r\n', NULL, NULL),
('ITF25', 'Anandhakumar P And V.Balamurugan, ‘ An Efficient Color  And Texture \r\n      Based Image Retrieval Technique Using BPN And Fuzzy Approach’\r\n      International Conference On Man, Machine And Systems (ICOMMS 2009)\r\n      10-12 October 2009,  Malaysia\r\n', NULL, NULL),
('ITF25', 'V.Balamurugan And Anandhakumar P, ‘An Efficient Color And Texture Feature\r\n      Based Image Retrieval Technique For Medical Images’ In The Proceedings Of The\r\n      International Conference On Electronic Design And Signal Processing (ICEDSP\r\n      09).10-12 December 2009, Manipal, Karnataka\r\n', NULL, NULL),
('ITF25', 'V.Balamurugan And Anandhakumar P, ‘The New Integrated Content And Metadata\r\n     Based Image Retrieval Framework Using Relevance Feedback” In The Proceedings Of\r\n    The International Conference On Power, Signal, Control And Computations\r\n    (EPSCICON2010).4-6 January 2010. Thrissur, Kerala.\r\n', NULL, NULL),
('ITF25', 'V.Balamurugan and Anandhakumar P, ‘ An Efficient Color And Texture Feature  \r\n       Based Image Retrieval Technique For Medical Images Using Relevance Feedback’\r\n       In The Proceedings Of The International Conference On Information Science And\r\n       Applications (ICISA 2010).6 February 2010.Chennai.\r\n', NULL, NULL),
('ITF25', 'V.Balamurugan and Anandhakumar P, ‘ An Efficient Color And Texture       \r\nFeature Based Image Retrieval Technique Using Relevance Feedback’ In The      \r\nProceedings Of The International Conference On Control, Communication\r\nAnd Computing (ICCC2010).18-20 February 2010, Thiruvanathapuram.\r\nKerala.\r\n', NULL, NULL),
('ITF25', 'V.Balamurugan And Anandhakumar P, ‘The New Integrated Content And       \r\n      Metadata Based Image Retrieval Framework’ Accepted In The International     \r\n     Conference On Convergence Of Science And Engineering (ICSE-2010). 21-23\r\n     April 2010.Banagalore, Karnataka.\r\n', NULL, NULL),
('ITF25', 'Balamurugan V. and Anandhakumar P, ‘An Image Retrieval With Relevance\r\n      Feedback Based on Color and Texture and Metadata Approaches’ had been\r\n     accepted in the International conference on communication , and devices  \r\n     (ICCCD 2010), IIT Kharagpur, 10-12 December 2010.\r\n', NULL, NULL),
('ITF25', 'Kavitha A., Rajamani V And Anandhakumar P “ Performance Analysis Of\r\n     Coding Techniques To Find BER In Optical Transmission” In The First\r\n     International Conference On Advanced Computig (ICAC2009),Anna University, \r\n      Chennai On 13th – 15th Dec’09.\r\n', NULL, NULL),
('ITF26', 'Participated and presented a paper \"WC-PAD: Web Crawler based Phishing Attack Detection\" in IEEE (53rd) International Carnahan Conference on Security Technology 2019, Chennai, India', '2019', NULL),
('ITF26', 'Participated and presented a paper \"Cloud insider attack detection using Machine learning\" in\r\nInternational conference on recent trends in advance computing', 'Sep,2018', NULL),
('ITF26', 'Participated and presented a paper \" Honeyword with Salt-Chlorine Generator to Enhance Security of Cloud User Credentials\" in sixth international conference on Security in computing and communication', 'Sep,2017', NULL),
('ITF26', 'Presented a paper \"A Novel  Honeyword with Complex Salting\" in 8th national conference on Networking and Computing Technologies', NULL, NULL),
('ITF26', 'Presented a paper \"Dynamic allocation of resource for multiple tasks computing in secured cloud\" in international conference on network security at VIT.', NULL, NULL),
('ITF27', '\"Deep Learning based Forest Fire Classification and Detection in Satellite Images\" presented in an International level conference on IEEE 11th INTERNATIONAL CONFERENCE ON ADVANCED COMPUTING, organized by MIT, Anna University, Chennai, India.', 'December 18 - 20', NULL),
('ITF28', 'Presented a paper in “ICCCV 2014” (International Conference on Computing and Computer Vision) conducted by RVS Engineering college on the topic “Secured Data Storage in Cloud Computing”.', NULL, NULL),
('ITF28', 'Presented a paper in the National conference on “Recent Trends in Advanced Computing” conducted by SNS College of Technology on the topic “Secure Data Storage in Cloud Computing” ', '2013', NULL),
('ITF28', 'Participated in National Conference on “Recent Advancements in Software Development” at Alagappa University', NULL, NULL),
('ITF29', 'Cognitive Rehabilitation for Autism Children Mental Status Observation Using Virtual Reality Based Interactive Environment, 3rd International conference on Intelligent Human Systems Integration, University of Palermo, Italy', ' 2020', NULL),
('ITF29', 'A Virtual Reality Therapy for Autism Spectrum Disorder in 2017 International Conference on Computational Intelligence: Theories, Applications, and Future Directions (ICCI-2017) at Indian Institute of Technology Kanpur, India', '2017', NULL),
('ITF29', 'A rehabilitation therapy for autism spectrum disorder using virtual reality, in the 2nd International conference on Intelligent Information Technologies (ICIIT-2017) at Anna University, Guindy, Chennai', '2017', NULL),
('ITF30', 'Prediction of Energy Demand in Smart Grid Using Deep Neural Networks with Optimizer Ensembles, 2020 IEEE Fourth International Conference on Computing Methodologies and Communication (ICCMC), Erode, India, 2020, pp. 1-5. doi: 10.1109/ICCMC48092.2020.ICCMC-000109', '2020', NULL),
('ITF30', 'Trust Based Task Assignment with Prevention of Outside Attack in MANET, 4th National Conference on Recent Trends in Technology (NCRTIT\'18)', '2018', NULL),
('ITF30', 'Preventing Fake Page from Blackhats in Mobile Web Browsers using ECDSA Algorithm, National Conference on Emerging Trends in Technology and Applications (NCETTA-17)', '2017', NULL),
('ITF30', 'Optimizing the Broadcasting Method in Mobile Ad Hoc Networks Using the Hybrid Optimization Tool, TEQIP Sponsored 6th National Conference on Electrical and Instrumentation Systems (NCEIS\'13)', '2013', NULL),
('ITF31', 'V. Arulalan, Dhananjay Kumar, V. Premanand, An Item Based Collaborative Filtering For Similar Movie Search, International Conference on Computational Vision and Bio-Inspired Computing-SPRINGE', '2018', 'International'),
('ITF31', 'V. Premanand, Dhananjay Kumar, V. Arulalan, An Instance İdentification Using Randomized Ring Matching via Score Generation, International Conference on Computational Vision and Bio-Inspired Computing-SPRINGER', '2018', 'International'),
('ITF31', 'G. Balamurugan, V. Arulalan, K. Suresh Joseph, Digital Image Protection Using Reversible Watermarking and Private Symmetric Key Encryption Technique, International Journal of Advanced Information Science and Technology (IJAIST), Vol.6, No.1, ISSN: 2319:2682, 1st International Conference on Recent Trends in Engineering', 'November 2017', 'International'),
('ITF31', 'V. Arulalan, Dr. K. Suresh Joseph, V. Premanand, Securing Digital Data using 256-bit Multimodal Biometrics based Cryptographic Key, IEEE Sponsored World Conference on Futuristic Trends in Research and Innovation for Social Welfare (WCFTR16), ISBN: 978-1-4673-9214-3', 'March 2016', 'International'),
('ITF31', 'G. Balamurugan, Dr. K. Suresh Joseph, V. Arulalan, An Iris based Reversible Watermarking for the Security of Teleradiology, IEEE Sponsored World Conference on Futuristic Trends in Research and Innovation for Social Welfare (WCFTR16), ISBN: 978-1-4673-9214-3', 'March 2016', 'International'),
('ITF31', 'V. Arulalan, Dr. K. Suresh Joseph, Score Level Fusion of Iris and Finger Knuckle Print, IEEE 10th International Conference on Intelligent Systems and Control (ISCO16), ISBN: 978-1-4673-7807-9', 'January 2016', 'International'),
('ITF31', 'V. Arulalan, Dhananjay Kumar, V. Premanand, An Item Based Collaborative Filtering For Similar Movie Search, International Conference on Computational Vision and Bio-Inspired Computing-SPRINGER', '2018', 'International'),
('ITF31', 'V. Premanand, Dhananjay Kumar, V. Arulalan, An Instance İdentification Using Randomized Ring Matching via Score Generation, International Conference on Computational Vision and Bio-Inspired Computing-SPRINGER', '2018', 'International'),
('ITF31', 'G. Balamurugan, V. Arulalan, K. Suresh Joseph, Digital Image Protection Using Reversible Watermarking and Private Symmetric Key Encryption Technique, International Journal of Advanced Information Science and Technology (IJAIST), Vol.6, No.1, ISSN: 2319:2682, 1st International Conference on Recent Trends in Engineeri', 'November 2017', 'International'),
('ITF31', 'V. Arulalan, Dr. K. Suresh Joseph, V. Premanand, Securing Digital Data using 256-bit Multimodal Biometrics based Cryptographic Key, IEEE Sponsored World Conference on Futuristic Trends in Research and Innovation for Social Welfare (WCFTR16), ISBN: 978-1-4673-9214-3', 'March 2016', 'International'),
('ITF31', 'G. Balamurugan, Dr. K. Suresh Joseph, V. Arulalan, An Iris based Reversible Watermarking for the Security of Teleradiology, IEEE Sponsored World Conference on Futuristic Trends in Research and Innovation for Social Welfare (WCFTR16), ISBN: 978-1-4673-9214-3', 'March 2016', 'International'),
('ITF31', 'V. Arulalan, Dr. K. Suresh Joseph, Score Level Fusion of Iris and Finger Knuckle Print, IEEE 10th International Conference on Intelligent Systems and Control (ISCO16), ISBN: 978-1-4673-7807-9', 'January 2016', 'International'),
('ITF31', 'V. Arulalan, DR. K. Suresh Joseph and G. Balamurugan, Safety Driver: Reducing Driver Distraction Using Integrated Smart Sensors, Advances in Natural and Applied Sciences, Volume 11, Number 12, October 2017, Pages: 63-69, ICMR sponsored National Conference on ICT Solutions for Challenges and Issues in e-Health', NULL, 'National'),
('ITF31', 'G. Balamurugan, Dr. K. B. Jayarraman, V. Arulalan, V. Lokesh, Multimodal Biometric Key Generation for Cryptographic Security using FACE and IRIS, Advances in Natural and Applied Sciences, 9(6) Special 2015, Pages: 525-530, DSTE Sponsored National Conference on Intelligent Computing', 'January 2015', 'National');

-- --------------------------------------------------------

--
-- Table structure for table `Contributions`
--

CREATE TABLE `Contributions` (
  `FID` varchar(5) DEFAULT NULL,
  `CONTRIBUTIONS` varchar(214) DEFAULT NULL,
  `YEAR` varchar(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Contributions`
--

INSERT INTO `Contributions` (`FID`, `CONTRIBUTIONS`, `YEAR`) VALUES
('ITF01', 'Developed several software programmes for academic and administrative data processing activities of MIT campus', '1988-1994'),
('ITF01', 'Maintenance of network at University office and development and maintenance of software pertaining to GPF and finance', '1994-1998.'),
('ITF01', 'Coordinator for Computer training programme for BC/MBC Graduates Sponsored by Government of Tamilnadu', '1999-2000'),
('ITF01', 'Residential Counselor for MIT Hostels during the year.', '2000-2001'),
('ITF01', 'Additional Chief Superintendent for the Conduct of B.E./B.Tech Examinations', '2002-2003'),
('ITF01', 'Coordinator for Part-time B.Tech (Information Technology).', '2002-2003'),
('ITF01', 'Member, Campus Development Committee.', '2002-2003'),
('ITF01', 'Assisted the Director RCC and Head i/c Computer Center for obtaining the grant of Rs.20.00 lakhs from UGC under X plan for Modernization of Computer Center at MIT Campus, Anna University.', NULL),
('ITF01', 'Assisted the Dean, MIT, Director RCC and Head i/c Computer centre in the renovation work of the Computer centre under TEQIP scheme.', NULL),
('ITF01', 'Assisting the Director RCC and Head i/c in all the purchase work for the Computer centre with respect to General fund and CPDE fund.', NULL),
('ITF01', 'Staff in Charge of MIT Sports Club ', '2001 TO PRESENT'),
('ITF01', 'Coordinator, Computer Awareness programme for Government School Children under Community service programme of TEQIP.', NULL),
('ITF01', 'Network coordinator for Campus wide networking at MIT Campus from 2007.', NULL),
('ITF01', 'Member, Action Plan committee for Infrastructure Development at MIT Campus.', NULL),
('ITF01', 'Deputy Chairman, Anna University Sports Board from 01/09/2009.', NULL),
('ITF01', 'Chief superintendent, End semester Examinations at MIT Campus, Anna University Dec/Jan 2008.', NULL),
('ITF01', 'Executed the project of Outdoor artificial rock climbing wall under UGC-XI Plan Merged Schemes for adventure Sports at MIT Campus.', NULL),
('ITF01', 'Member Purchase committee for departments at MIT Campus.', '2011-12 and 2012-2013'),
('ITF03', NULL, NULL),
('ITF04', NULL, NULL),
('ITF05', 'CBCS (Choice Based Credit System) Coordinator of UG Programme - IT', '2015'),
('ITF05', 'Vice President of Athenaeum', '2015-2016'),
('ITF05', 'NBA Coordinator', '2014-2016'),
('ITF05', 'Member of Syllabus Subcommittee of  UG &  PG ', '2015'),
('ITF05', 'Member of Dr. MGR and Thiru.Quaid-E-Milleth Endowment Scholarship\" commitee', '2015'),
('ITF05', 'Developed an Academic monitoring systemsCommittee member for women activities under UGC X1 plan to identify the items required and arrange for procurement of the items.Served as PG Examination Chief Superintendent.', 'December 2010.'),
('ITF05', 'Committee member for Departmental consultative committee ', '2007-PRESENT'),
('ITF05', 'Served as Class Committee Chairperson for more than 10 years.', '2006-2007'),
('ITF05', 'Was a member for selection of the best project work done during 2005 -2006', '2005-2006'),
('ITF05', 'Participated in software development of MICSTA project during 2006', '2006'),
('ITF05', 'Member of Question paper Scrutiny Committee for more than 5 years', NULL),
('ITF05', 'Project Coordinator for the final year B.E and B.Tech for more than 8 years.', NULL),
('ITF09', 'Member of the anti ragging comittee', NULL),
('ITF10', 'Member of Anti-ragging monitoring committee', NULL),
('ITF11', 'Assisted in the department Purchase activities.', NULL),
('ITF11', 'Coordinated for the smooth conduct of ICRTIT 2011', NULL),
('ITF11', 'Time Table-inCharge, Department of Information Technology, Anna University, Chennai\nTime Table-inCharge, Department of Information Technology, Anna University, Chennai\n', 'NOV 2015-present'),
('ITF12', NULL, NULL),
('ITF14', NULL, NULL),
('ITF15', 'Administration activities', NULL),
('ITF16', NULL, NULL),
('ITF18', NULL, NULL),
('ITF19', NULL, NULL),
('ITF20', NULL, NULL),
('ITF24', NULL, NULL),
('ITF25', NULL, NULL),
('ITF02', 'Head Of The Department, Department of Media Sciences, Anna University, Chennai during January-2016 and March-2016.', NULL),
('ITF02', 'Director, Knowledge Data Centre, Anna University, Chennai during June-2011 and May-2013.', NULL),
('ITF02', 'Governing Council Member, CDAC MHRD, Anna University, Chennai during January-2010 and December-2014.', NULL),
('ITF02', 'Academic Council Member, , Anna University, Chennai during June-2009 and June-2013.', NULL),
('ITF02', 'Syndicate Member, , Anna University, Chennai during January-2009 and December-2013.', NULL),
('ITF02', 'Convener Common Purchase Committee, , Anna University, Chennai during June-2007 and June-2015', NULL),
('ITF02', 'Director, Ramanujan Computing Centre, Anna University, Chennai during January-2007 and December-2015.', NULL),
('ITF02', 'Secretary, Tamil Nadu Engineering Admissions, Anna University, Chennai during January-2007 and December-2015.', NULL),
('ITF02', 'Coordinator : Aicte Qip For Mca, , Anna University, Chennai during January-2007 and December-2015.', NULL),
('ITF02', 'Head Of The Department, Department of Information Technology, Anna University, Chennai during January-2006 and December-2007.', NULL),
('ITF02', 'Assistant Executive Warden, Boys Hostel, Anna University, Chennai during June-1991 and June-2000.', NULL),
('ITF02', 'Deputy Warden/resident Councellor, Boys Hostel, Anna University, Chennai during June-1984 and June-1990.', NULL),
('ITF08', 'Coordinator, National level Short Course on \"Research Methodology, Techniques of Writing\r\nResearch Articles for Journals and Thesis\" from 02-Mar-2013', NULL),
('ITF11', 'Coordinator, International level workshop on \"Recent Developments in Neural Networks\" from\r\n03-Oct-2012 to 05-Oct-2012', NULL),
('ITF11', 'Coordinator, International level Short Course on \"Faculty Development Training Programme\"\r\nfrom 24-Jun-2014 to 30-Jun-2014', NULL),
('ITF11', 'Publicity chair, International level conference on \"ICRTIT 2016\" from 08-Apr-2016 to\r\n09-Apr-2016', NULL),
('ITF11', 'COORDINATOR,International level Short Course on \"FDTP ON GRID AND CLOUD\r\nCOMPUTING \" from 23-May-2016 to 29-May-2016', NULL),
('ITF07', 'CO-ORDINATOR, National level workshop on \"WORKSHOP ON SIMULATION OF\r\nADVANCED NETWORKS USING NS-2 (WSAN-11)\" from 02-Dec-2011 to 03-Dec-2011', NULL),
('ITF07', 'CO-ORDINATOR, National level workshop on \"WORKSHOP ON SIMULATION OF\r\nADVANCED NETWORKS USING NS-2 (WSAN\'12)\" from 06-Jan-2012 to 07-Jan-2012', NULL),
('ITF07', 'CO-ORDINATOR, National level workshop on \"WORKSHOP ON SIMULATION OF\r\nADVANCED NETWORKS USING NS-2 (WSAN \'11)\" from 02-Dec-2011 to 03-Dec-2011', NULL),
('ITF06', 'Member of Organizing Committee, National level conference on \"National Conference on\r\nAdvanced Computing (ICAC 2006)\" from 10-Feb-2006 to 11-Feb-2006', NULL),
('ITF06', 'Member of Organizing Committee, National level conference on \"National Conference on\r\nAdvanced Computing (ICAC 2007)\" from 16-Feb-2007 to 17-Feb-2007', NULL),
('ITF06', 'Member of Organizing Committee, International level conference on \"16th International\r\nConference on Advanced Computing (ADCOM)\" from 14-Dec-2008 to 17-Dec-2008', NULL),
('ITF06', 'Member of Organizing Committee, International level conference on \"International Conference\r\non Advanced Computing (ICAC 2009)\" from 13-Dec-2009 to 15-Dec-2009', NULL),
('ITF06', 'Member of Organizing Committee, International level conference on \"International Conference\r\non Recent Trends in Information Technology (ICRTIT 2011)\" from 03-Jun-2011 to\r\n05-Jun-2011', NULL),
('ITF06', 'Member of Organizing Committee, International level conference on \"International Conference\r\non Recent Trends in Information Technology (ICRTIT 2012)\" from 19-Apr-2012 to 21-Apr-2012', NULL),
('ITF06', 'Coordinator, National level Short Course on \"Faculty Developement Training Programme on\r\nData Structures\" from 03-Dec-2012 to 09-Dec-2012', NULL),
('ITF06', 'Member of Organizing Committee, International level conference on \"International Conference\r\non Recent Trends in Information Technology\" from 25-Jul-2013 to 27-Jul-2013', NULL),
('ITF06', 'Member of Organizing Committee, International level conference on \"International Conference\r\non Recent Trends in Information Technology (ICRTIT)\" from 25-Jul-2013 to 27-Jul-2013', NULL),
('ITF06', 'Member of Organizing Committee, International level conference on \"International Conference\r\non Recent Trends in Information Technology\" from 10-Apr-2014 to 12-Apr-2014', NULL),
('ITF06', 'Member of Organizing Committee, International level conference on \"International Conference\r\non Recent Trends in Information Technology (ICRTIT)\" from 10-Apr-2014 to 12-Apr-2014', NULL),
('ITF06', 'Coordinator, National level workshop on \"Worshop on Big Data Analytics\" from 20-Nov-2014 to\r\n21-Nov-2014', NULL),
('ITF06', 'Coordinator, National level workshop on \"Worshop on Big Data Tools\" from 11-Jun-2015 to\r\n13-Jun-2015', NULL),
('ITF06', 'Coordinator, National level workshop on \"Hands-on Training Programme on Big Data\r\nAnalytics\" from 30-Oct-2015 to 01-Nov-2015', NULL),
('ITF06', 'Coordinator, National level workshop on \"Hands-on Training Programme on Artificial Neural\r\nNetworks and Fuzzy Logic using MATLAB\" from 29-Jan-2016 to 31-Jan-2016', NULL),
('ITF06', 'Member of Organizing Committee, International level conference on \"International Conference\r\non Recent Trends in Information Technology (ICRTIT)\" from 08-Apr-2016 to 09-Apr-2016', NULL),
('ITF10', 'Co Chairman, National level conference titled \"VLSI, Communication and Network,\r\nVCAN-2010\" conducted by Easwari Engineering College from 25-Mar-2010 to 27-Mar-2010', NULL),
('ITF10', 'Co Chairman, International level conference titled \"International Conference on Recent Trends\r\nin Information Technology, ICRTIT 2016\" conducted by Dept. of IT, MIT from 08-Apr-2016 to\r\n09-Apr-2016', NULL),
('ITF10', 'Coordinator, National level workshop on \"Application of Microcontrollers for Embedded\r\nSystems\" from 24-Jul-2009 to 25-Jul-2009', NULL),
('ITF10', 'Coordinator, National level workshop on \"Advanced Microprocessors and Microcontrollers for\r\nEmbedded Applications\" from 25-Sep-2009 to 26-Sep-2009', NULL),
('ITF10', 'co-coordinator, National level workshop on \"Faculty Empowerment Programme, \'Mission 10X\'\"\r\nfrom 21-Jun-2010 to 25-Jun-2010', NULL),
('ITF10', 'Organizing Committee Member, International level conference on \"Recent Trends in\r\nInformation Technology,ICRTIT-2011\" from 03-Jun-2011 to 05-Jun-2011', NULL),
('ITF10', 'Organizing Committee Member, International level conference on \"Recent Trends in\r\nInformation Technology,ICRTIT-2012\" from 19-Apr-2012 to 21-Apr-2012', NULL),
('ITF10', 'Organizing Committee Member, International level conference on \"Recent Trends in\r\nInformation Technology,ICRTIT-2013\" from 25-Jul-2013 to 27-Jul-2013', NULL),
('ITF10', 'Organizing Committee Member, International level conference on \"Recent Trends in\r\nInformation Technology,ICRTIT-2014\" from 10-Apr-2014 to 12-Apr-2014', NULL),
('ITF10', 'Coordinator, National level Short Course on \"FDTP on Computer Architecture\" from\r\n24-Jun-2014 to 30-Jun-2014', NULL),
('ITF10', 'Org. Committee member & IEEE Coordinator, International level conference on \"Recent\r\nTrends in Information Technology ICRTIT 2016\" from 08-Apr-2016 to 09-Apr-2016', NULL),
('ITF23', 'Workshop on Java Programming, August 28-30, 2015', NULL),
('ITF22', 'Three days workshop on \"Java Programming\" held during 28th August 2015-30th August 2015', NULL),
('ITF22', 'Three days workshop -Hands -on Training Programme on Artificial Neural Networks and Fuzzy Logic using Matlab ,29 - 31 January, 2016', NULL),
('ITF22', 'Three days workshop Hands-on Training Programme on Big Data Analytics 30-31 October & 1 November, 2015', NULL),
('ITF21', 'Life Member of ISTE ', NULL),
('ITF13', 'ISTE Life Member ', NULL),
('ITF13', 'CSI Life Member ', NULL),
('ITF13', 'ISTE, CSI ', NULL),
('ITF09', 'Time Table-inCharge, Department of Information Technology, Anna University, Chennai\r\nfrom November-2015.\r\nFaculty Advisor, Department of Information Technology, Anna University, Chennai from\r\nDecember-2009.\r\n', NULL),
('ITF09', 'Faculty Advisor, Department of Information Technology, Anna University, Chennai from\r\nDecember-2009.\r\n', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Country_visit`
--

CREATE TABLE `Country_visit` (
  `FID` varchar(5) DEFAULT NULL,
  `FORIEGNCOUNTRIESVISITED` varchar(12) DEFAULT NULL,
  `PERIOD` varchar(24) DEFAULT NULL,
  `PURPOSE` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Country_visit`
--

INSERT INTO `Country_visit` (`FID`, `FORIEGNCOUNTRIESVISITED`, `PERIOD`, `PURPOSE`) VALUES
('ITF01', NULL, NULL, NULL),
('ITF02', NULL, NULL, NULL),
('ITF03', 'U.S.A.', NULL, NULL),
('ITF03', 'U.K.', NULL, NULL),
('ITF03', 'Argentina', NULL, NULL),
('ITF03', 'France', NULL, NULL),
('ITF03', 'Japan', NULL, NULL),
('ITF03', 'Hong kong', NULL, NULL),
('ITF03', 'Thailand', NULL, NULL),
('ITF03', 'U.A.E', NULL, NULL),
('ITF03', 'South Africa', NULL, NULL),
('ITF03', 'Russia', NULL, NULL),
('ITF04', NULL, NULL, NULL),
('ITF05', 'Switzerland', '29.08.2008', 'Lab visit, IDIAP affiliated to EPFL'),
('ITF05', 'France', '01.09.2008 to 15.09.2008', 'Attended the 10th Machine Learning Summer School under TEQIP'),
('ITF06', NULL, NULL, NULL),
('ITF07', NULL, NULL, NULL),
('ITF08', NULL, NULL, NULL),
('ITF09', NULL, NULL, NULL),
('ITF10', NULL, NULL, NULL),
('ITF12', NULL, NULL, NULL),
('ITF13', NULL, NULL, NULL),
('ITF14', NULL, NULL, NULL),
('ITF15', NULL, NULL, NULL),
('ITF16', NULL, NULL, NULL),
('ITF17', NULL, NULL, NULL),
('ITF18', NULL, NULL, NULL),
('ITF19', NULL, NULL, NULL),
('ITF20', NULL, NULL, NULL),
('ITF21', NULL, NULL, NULL),
('ITF22', NULL, NULL, NULL),
('ITF23', NULL, NULL, NULL),
('ITF24', NULL, NULL, NULL),
('ITF25', NULL, NULL, NULL),
('ITF11', 'Hongkong', '25/12/2014 to 26/12/2014', 'Research Paper Publication');

-- --------------------------------------------------------

--
-- Table structure for table `Courses`
--

CREATE TABLE `Courses` (
  `FID` varchar(5) DEFAULT NULL,
  `COURSEDETAILS` varchar(151) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Courses`
--

INSERT INTO `Courses` (`FID`, `COURSEDETAILS`) VALUES
('ITF13', 'AICTE-ISTE Short Term Training Programme on \'3G Mobile Networks\', conducted by Kongu College of Engineering from 7th October 002 to 30th October 2002'),
('ITF13', 'Training Programme on \'Modern Teaching Competencies for Faculty Members\' conducted by CUIC, Anna University from 21st April 2003 to 23rd Apil 2003.'),
('ITF13', 'Training Programme on \'Instructional Design and Delivery\' conducted by Technical Teachers Training Institute, Chennai from 31st May to 5th June 2004'),
('ITF13', 'Short Term Course on \'PHP Programming\', organized by Department of Information Technology, MIT Campus, Anna University from 10th to 14th December 2007.'),
('ITF13', '\'2 Days Programme on MATLAB Programming\', conducted by Computer Centre, MIT Campus, Anna University during 23rd and 24th June 2012.'),
('ITF13', 'Soft Computing'),
('ITF13', 'Digital Image Processing'),
('ITF13', 'Digital Signal Processing'),
('ITF13', 'Electronic Devices and Circuits'),
('ITF13', 'Advanced Computer Architecture'),
('ITF13', 'Cellular & Mobile Communication'),
('ITF13', 'Principles of Communication'),
('ITF13', 'Analog and Digital Communication'),
('ITF15', 'Microprocessors and Microcontrollers'),
('ITF16', 'Principles of Environmental Science and Engineering'),
('ITF17', 'Telecommunication Systems'),
('ITF18', 'Electronics and Microprocessor'),
('ITF19', 'Information Coding Techniques'),
('ITF20', 'Digital Systems');

-- --------------------------------------------------------

--
-- Table structure for table `Evaluator`
--

CREATE TABLE `Evaluator` (
  `FID` varchar(5) DEFAULT NULL,
  `Detailsofevaluatedarticle` varchar(142) DEFAULT NULL,
  `Period` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Evaluator`
--

INSERT INTO `Evaluator` (`FID`, `Detailsofevaluatedarticle`, `Period`) VALUES
('ITF01', NULL, NULL),
('ITF02', NULL, NULL),
('ITF03', 'Evaluator of the project proposal of Kentucky Science & Engineering Foundation, Kentucky Science & Technology Corporation, Lexington, KY, USA.', NULL),
('ITF03', 'Editor of \"International Journal of Computer Applications\", Foundation of Computer Science, New York, USA.', NULL),
('ITF03', 'Editor of \"American Academic and Scholarly Research Journal (AASRJ)\", Delaware, USA.', NULL),
('ITF03', 'Editor of Webmed Central Publication, UK', NULL),
('ITF03', 'Editor of International Journal of Computer Networking, Wireless and Mobile Communications (IJCNWMC), India', NULL),
('ITF03', 'Editor of International Journal of Computer Science and Engineering (IJCSE), India', NULL),
('ITF03', 'Editor of International Journal of Recent Trends in Mathematics & Computing, India', NULL),
('ITF03', 'Reviewer of Journal of Internet Technology, Taiwan Academic Network, Ministry of Education, Taipei, Taiwan', NULL),
('ITF03', 'Reviewer of Journal of Communications,Academy Publisher, Finland', NULL),
('ITF03', 'Reviewer of IEEE Transaction on Multimedia, IEEE Communications Society, USA', NULL),
('ITF03', 'Reviewer of Journal of Network and Computer Applications, Elsevier, Netherlands', NULL),
('ITF03', 'Reviewer of Journal of Interactive Mobile Technologies,International Association of Online Engineering, Austria', NULL),
('ITF03', 'Reviewer of Recent Patents on Electrical Engineering,Bentham Science Publishers, USA', NULL),
('ITF03', 'Reviewer of Journal of Electronic Imaging, Bellingham WA, USA', NULL),
('ITF03', 'Reviewer of Journal of Network and Computer Applications, Elsevier, Netherlands', NULL),
('ITF04', NULL, NULL),
('ITF05', NULL, NULL),
('ITF20', NULL, NULL),
('ITF21', NULL, NULL),
('ITF22', NULL, NULL),
('ITF23', NULL, NULL),
('ITF24', NULL, NULL),
('ITF25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Experience`
--

CREATE TABLE `Experience` (
  `FID` varchar(6) DEFAULT NULL,
  `POSTHELD` varchar(187) DEFAULT NULL,
  `NAMEOFINSTITUTE` varchar(150) DEFAULT NULL,
  `NATUREOFDUTIES` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Experience`
--

INSERT INTO `Experience` (`FID`, `POSTHELD`, `NAMEOFINSTITUTE`, `NATUREOFDUTIES`) VALUES
('ITF01', 'Associate Professor & Head(In Charge)', 'MIT', NULL),
('ITF01', 'Coordinator for Computer training programme for BC/MBC Graduates Sponsored by Government of Tamilnadu during 1999-2000', 'MIT', NULL),
('ITF01', 'Member, Campus Development Committee during the year 2002-2003.', 'MIT', NULL),
('ITF01', 'Assisted the Director RCC and Head i/c Computer Center for obtaining the grant of Rs.20.00 lakhs from UGC under X plan for Modernization of Computer Center at MIT Campus, Anna University.', 'MIT', NULL),
('ITF01', 'Assisted the Dean, MIT, Director RCC and Head i/c Computer centre in the renovation work of the Computer centre under TEQIP scheme.', 'MIT', NULL),
('ITF01', 'Assisting the Director RCC and Head i/c in all the purchase work for the Computer centre with respect to General fund and CPDE fund.', 'MIT', NULL),
('ITF01', 'Staff in Charge of MIT Sports Club from 2001 to till date.', 'MIT', NULL),
('ITF01', 'Coordinator, Computer Awareness programme for Government School Children under Community service programme of TEQIP.', 'MIT', NULL),
('ITF01', 'Network coordinator for Campus wide networking at MIT Campus from 2007.', 'MIT', NULL),
('ITF01', 'Member, Action Plan committee for Infrastructure Development at MIT Campus', 'MIT', NULL),
('ITF01', 'Deputy Chairman, Anna University Sports Board from 01/09/2009.', 'Anna University', NULL),
('ITF01', 'Chief superintendent, End semester Examinations at MIT Campus, Anna University Dec/Jan 2008.', 'MIT', NULL),
('ITF01', 'Executed the project of Outdoor artificial rock climbing wall under UGC-XI Plan Merged Schemes for adventure Sports at MIT Campus.', 'MIT', NULL),
('ITF01', 'Member Purchase committee for departments at MIT Campus for the year 2011-12 and 2012-2013', 'MIT', NULL),
('ITF02 ', 'Professor', 'MIT', NULL),
('ITF03', 'Professor-in-charge of undergraduate program', 'MIT', NULL),
('ITF03', 'Faculty advisor for M.Tech.(Part-time) program', 'MIT', NULL),
('ITF03', 'Project co-ordinator for final year B.Tech.(IT) program', 'MIT', NULL),
('ITF04', 'Professor In-Charge PG Program', 'MIT', NULL),
('ITF04', 'Deputy Director, CTDT, Anna University', 'MIT', NULL),
('ITF04', 'Developed an Online Assessment System for the department of Information Technology in the year 2006.', 'MIT', NULL),
('ITF04', 'Staff in charge for NSS in the year 2008, MIT, Anna University', 'MIT', NULL),
('ITF04', 'YRC Programme officer in the year 2009, MIT, Anna University', 'MIT', NULL),
('ITF04', 'Additional Chief Superintend for UG Full Time Courses in the year Oct-Dec End Semester Examinations 2009', 'MIT', NULL),
('ITF04', 'Additional Chief Superintend for PG Full Time Courses in the year April-May End Semester Examinations 2011', 'MIT', NULL),
('ITF04', 'Additional Chief Superintend for UG Full Time Courses in the year April-May End Semester Examinations 2013', 'MIT', NULL),
('ITF04', 'Coordinated for the syllabus revision works R2008, R2012, R2013 regulation for B.Tech Information Technology', 'Anna University', NULL),
('ITF04', 'Deputy Director, CTDT, Jan 2015-Till Date,Anna University,', 'Anna University', NULL),
('ITF04', '13 Board of Studies Member for Department of Information Technology, in Adhiyamaan College of Engineering', 'Adhiyamaan College of Engineering', NULL),
('ITF04', 'Syllabus Sub Committee member, B.Tech Information Technology (R 2015) for University Departments, Anna university', 'Anna University', NULL),
('ITF04', 'Associate Professor', 'MIT', NULL),
('ITF13', 'Visiting Faculty', 'MIT', NULL),
('ITF14', 'Teaching Fellow', 'MIT', NULL),
('ITF15', 'Teaching Fellow', 'MIT', NULL),
('ITF16', 'Teaching Fellow', 'MIT', NULL),
('ITF17', 'Teaching Fellow', 'MIT', NULL),
('ITF18', 'Teaching Fellow', 'MIT', NULL),
('ITF19', 'Teaching Fellow', 'MIT', NULL),
('ITF20', 'Teaching Fellow', 'MIT', NULL),
('ITF21', 'Teaching Fellow', 'MIT', NULL),
('ITF22', 'Teaching Fellow', 'MIT', NULL),
('ITF23', 'Teaching Fellow', 'MIT', NULL),
('ITF24', 'Teaching Fellow', 'MIT', NULL),
('ITF25', 'Professor ', 'MIT', NULL),
('ITF05', 'Lecturer at St\'s Peter Engineering College,Dept . of Computer science and Engg.,', '20/10/93-04/03/96', NULL),
('ITF05', 'Vellammal Engineering CollegeDept. of Information Technology,Senior Lecturer,05/04/1996 - 03/08/1998', NULL, NULL),
('ITF05', 'Accel Technologies,Member Technical Staff,2/05/2000 - 3/01/2001', NULL, NULL),
('ITF05', 'Mascon Communication,Software Engineer,4/01/2001 - 4/5/2002', NULL, NULL),
('ITF05', 'Panimalar Engineering CollegeDept . of Information Technology,Senior Lecturer,1/6/2002 - 1/3/2003', NULL, NULL),
('ITF05', 'Madras Institute of Technology, Anna University, Chennai 600 044Dept . of Information Technology,Assistant Professor,03/02/2003 - 04/02/2008', NULL, NULL),
('ITF05', 'Madras Institute of Technology, Anna University, Chennai 600 044 Dept . of Information Technology,Assistant Professor(Sr. Gr.),05/02/2008-Till Date', NULL, NULL),
('ITF02', 'April 2016 to till date,Professor,Department of Information and Technology, Anna University, MIT Campus', NULL, NULL),
('ITF02', 'January-2016 and March-2016.Professor,Department of Information Science and Technology, College of Engineering\nGuindy, Anna University', NULL, NULL),
('ITF02', 'June-2010 and January-2016,Professor,Ramanujan Computing Centre, College of Engineering Guindy, Anna University', NULL, NULL),
('ITF02', 'February-2005 and May-2010 Professor Department of Information Technology, Madras Institute of Technology, Anna\nUniversity', NULL, NULL),
('ITF02', 'August-2000 and February-2005  Assistant Professor Ramanujan Computing Centre, College of Engineering Guindy, Anna\nUniversity', NULL, NULL),
('ITF02', 'August-1984 and August-2000 Lecturer Centre, College of Engineering Guindy, Anna University', NULL, NULL),
('ITF03', 'Associate Professor.', 'Department of Information Technology, Anna University, MIT Campus, Chennai, India', ''),
('ITF03', 'Worked at School of Computer Science & Engineering (Now Department of Computer Science & Engineering), Anna University Chennai during April 2002 to January 2003 as a lecturer.', NULL, NULL),
('ITF03', 'Worked as a Senior Lecturer cum H.O.D in-charge at Vel Multimedia Engineering College, Avadi during January 2001 to March2002.', NULL, NULL),
('ITF03', 'Teaching subjects like Wireless Mobile Communication / Computing, Digital Signal Processing, Multimedia Systems, Operating Systems, Real-time systems, Embedded Systems', 'etc. for last 13 years.', NULL),
('ITF07', 'Assistant professor from December 2009 to till date', 'Anna University,Mit campus', NULL),
('', NULL, NULL, NULL),
('ITF07', 'Visitng Faculty from December\r\n\r\n2007 to December\r\n\r\n2009', 'Anna University ,Mit Campus', NULL),
('ITF25', 'Professor and Head , Department of Computer Technology', 'MIT', NULL),
('ITF25', 'Professor, Department of Information Technology', 'MIT, Anna\r\nUniversity,Chennai from June 2012', ''),
('ITF25', 'Associate professor, Department of Information Technology,', 'MIT, Anna University, Chennai during July-2009 and June-2012', NULL),
('ITF25', 'Assistant Professor, Department of Information Technology,', 'MIT, Anna University, Chennai during July-2006 and July -2009', NULL),
('ITF25', 'Lecturer Sr. Grade, Department of Information Technology,', ' MIT,\r\nAnna University, Chennai during April-2003 and July-2006.', NULL),
('ITF25', 'Lecturer, Department of Computer Science and Engineering,', 'CEG, Anna University, Chennai during April-1998 and April-2003.', NULL),
('ITF25', 'LECTURER,', 'B.S.A.CRESCENT ENGG COLLEGE, VANDALUR,CHENNAI', '05 Months'),
('ITF26', 'Teaching Fellow, Computer Center', 'MIT', NULL),
('ITF26', 'Teaching Fellow, Information Technology', 'MIT', NULL),
('ITF31', 'Teaching Fellow, Information Technology', 'MIT, Anna University, Chennai  from November 2020 to present', NULL),
('ITF31', 'Research fellow', 'Department of Information Technology, Anna University, Chennai  from January 2018', NULL),
('ITF31', 'Assistant professor', 'Department of Computer Science and Engineering at Christ College of Engineering', NULL),
('ITF29', 'Teaching Fellow', 'Department of Information Technology, Anna University, MIT Campus from  November 2020 - till date', NULL),
('ITF29', 'Assistant professor', 'Thiagarajar College of Engineering, Department of Information Technology from  December 2012 - May 2020', NULL),
('ITF29', 'Lecturer(Senior Grade)', 'Vickram College of Engineering, Department of Computer Science from  June 2012 - December 2012', NULL),
('ITF30', 'Teaching fellow', 'Department of Information Technology at University College of Engineering Tindivanam, from 12.08.2013 to 30.06.2019', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `FDP`
--

CREATE TABLE `FDP` (
  `FID` varchar(5) DEFAULT NULL,
  `Detailsoffdp` varchar(500) DEFAULT NULL,
  `Period` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `FDP`
--

INSERT INTO `FDP` (`FID`, `Detailsoffdp`, `Period`) VALUES
('ITF22', 'Attended \'Anna University Sponsored FDP on Artificial Intelligence \' for a week at Vel Tech High Tech - Chennai.', NULL),
('ITF22', 'Attended \'FDP on Cloud Computing\' for a day at Vel Tech HighTech - Chennai', NULL),
('ITF22', 'Attended \'FDP on Artificial Intelligence\' for two days at Vel Tech High Tech - Chennai', NULL),
('ITF18', 'Computer Organization held on 24th to 30th of June 2014 at Department of Information Technology, MIT Campus, Anna University', '24-20 June 2014'),
('ITF15', 'Sustainable Infrastructure held on 13th Jan 2012 at TCS -Siruseri', '13-Jan-12'),
('ITF14', 'Faculty Development Programme on \'Digital Signal Processing\', organized by Centre for Faculty Development, Anna University at College of Engineering, Guindy from 4th June 2007 to 16th June 2007.', NULL),
('ITF14', 'Faculty Development Programme on \'Digital Signal Processing\', organized by Centre for Faculty Development, Anna University at College of Engineering, Guindy from 15th June 2009 to 21st June 2009.', NULL),
('ITF14', 'Faculty Development Programme on \'Theory of Computation\', organized by Centre for Faculty Development, Anna University at MIT Campus, Chromepet from 8th May 20011 to 12th May 2011.', NULL),
('ITF06', 'Participated in the Faculty Development Programme on Data Mining and Warehousing conducted by Centre for Faculty Development, Anna University Chennai, 26th May to 1st June, 2008.', '2008'),
('ITF06', 'Participated in the Faculty Development Programme on Mobile Computing, conducted by Centre for Faculty Development, Anna University Chennai, 19-25, May 2008.', '2008'),
('ITF06', 'Participated in the Faculty Development Programme on Orientation Training Programme on Re-Engineering Teaching Skills, conducted by Centre for Faculty Development, Anna University, 9-11, May 2005', '2005'),
('ITF07', NULL, NULL),
('ITF08', NULL, NULL),
('ITF09', NULL, NULL),
('ITF10', NULL, NULL),
('ITF03', 'Faculty Development Program on \'Mobile Computing\' 19th to 25th May ', '2008'),
('ITF03', 'Workshop on \' Open Source & Open Standard Based IBM Technologies\' 01st to 02 October\'2005.', NULL),
('ITF03', 'The AICTE sponsored Quality Improvement Program on \'Web and Grid Services\' 16th to 29th November 2004.', NULL),
('ITF03', 'Faculty Development Program on \'Digital Signal Processing\' 10th - 15th October 2003', NULL),
('ITF03', 'Faculty Development Program on \' Mobile Communication\', 14th - 20th May\' 2012.', NULL),
('ITF03', 'Faculty Development Program on \'Digital Image processing \', 5th to 11th Dec 2012', NULL),
('ITF03', 'Faculty Development Program on \'Information Coding and Techniques\', 3 to 9th Jun 2013.', NULL),
('ITF03', 'Faculty Development Program on \' Digital image processing\', 6 to 12th Dec 2013.', NULL),
('ITF19', 'Attended Faculty Development Training Programme on Computer Organization, June 24th-30th,2014', NULL),
('ITF17', 'Attended a National level Short Course on \"FDP on Requirements Management by TCS\"\r\norganized by JNTUK, India from 23-Apr-2011', NULL),
('ITF17', 'Attended a National level Short Course on \"FDP on Data Structures\" organized by MIT,Anna\r\nuniversity, India from 03-Dec-2012 to 09-Dec-2012', NULL),
('ITF26', 'Attended a AICTE Training and Learning Academy (ATAL) & Centre for Faculty Development\r\nprogramme, on Artificial Intelligence, Department of Information\r\nTechnology, MIT, Anna University, Chennai', '11th - 15th Nov'),
('ITF26', 'Attended a Research Oriented Two-Day FDTP on Recent Trends in Data Analytics and Bio Inspired Computing, Department of Information Technology, MIT, Anna University, Chennai, India.', '31st Jan -1st 2'),
('ITF26', 'Participated in Faculty Development Programme \"Student Evaluation and Question Paper setting\".', NULL),
('ITF27', 'Attended a AICTE Training and Learning Academy (ATAL) & Centre for Faculty Development programme, on Artificial Intelligence,Department of Information Technology, MIT, Anna University, Chennai, I', '11th - 15th Nov'),
('ITF27', 'Attended a Research Oriented Two-Day FDTP on Recent Trends in Data Analytics and Bio Inspired Computing, Department of Information\r\nTechnology, MIT, Anna University, Chennai, India.', '31st Jan - 1 st'),
('ITF28', 'Attended a AICTE Training and Learning Academy (ATAL) & Centre for Faculty Development programme, on Artificial Intelligence, Department of Information Technology, MIT, Anna University, Chennai, ', '11th - 15th Nov'),
('ITF28', 'Attended a Research Oriented Two-Day FDTP on Recent Trends in Data Analytics and Bio Inspired Computing, Department of Information Technology, MIT, Anna University, Chennai, India', '31st Jan - 1st '),
('ITF28', 'Attended FDP in \"Research and Challenges in Software Testing and LaTex\" in ACCET, Karaikudi', NULL),
('ITF30', 'Faculty Development Training Program on Web Technology at University College of Engineering Tindivanam', '2019'),
('ITF30', 'Faculty Development Training Program on Grid and Cloud Computing at College of Engineering Guindy, Anna University, Chennai', '2017'),
('ITF30', 'Faculty Development Program on Operating System Design – Case study (CP-7212) organized by J.J. College of Engineering and Technology, Trichy', '2014'),
('ITF30', 'Faculty Development Training Program on Web Technology at University College of Engineering Tindivanam', '2019'),
('ITF30', 'Faculty Development Training Program on Grid and Cloud Computing at College of Engineering Guindy, Anna University, Chennai', '2017'),
('ITF30', 'Faculty Development Program on Operating System Design - Case study (CP-7212) organized by J.J. College of Engineering and Technology, Trichy', '2014'),
('ITF29', 'TEQIP-III Sponsored Two day Faculty Development Programme on Design, Develop and Deliver online courses through MOODLE platform', '23,24 April 202'),
('ITF31', 'Attended one-day online Faculty Development Training Programme on \"Machine Learning for Beginners\" organized by Department of Electrical and Electronics Engineering, Sathyabama Institute of Science and Technology, Chennai in association with Indian Servers', '9th May 2020'),
('ITF31', 'Attended One Week Online International Faculty Development Programme on \"Machine Learning and Computer Vision: Applications, Research Challenges (MLCV 2020)\" organized as twinning programme by National Institute of Technology Silchar, Assam and Gauhati University Institute of Science & Technology, Guwahati, Assam', '24-28 August 20'),
('ITF31', 'Attended two days Research Oriented Faculty Development Training Programme (UGC-XII Plan) on \"Applied Machine Learning\" in the Department of Instrumentation Engineering, MIT Campus, Anna University, Chennai', '09-10 March 202'),
('ITF31', 'Attended five days AICTE sponsored ATAL FDP on \"Artificial Intelligence\" in the Department of Information Technology, MIT Campus, Anna University, Chennai', '11-15 November ');

-- --------------------------------------------------------

--
-- Table structure for table `general`
--

CREATE TABLE `general` (
  `FID` varchar(5) DEFAULT NULL,
  `NAME` varchar(25) DEFAULT NULL,
  `DESIGNATION` varchar(32) DEFAULT NULL,
  `PHONE` int(4) DEFAULT NULL,
  `EMAIL` varchar(200) DEFAULT NULL,
  `AREA OF SPECIALISATION` varchar(200) DEFAULT NULL,
  `FIS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general`
--

INSERT INTO `general` (`FID`, `NAME`, `DESIGNATION`, `PHONE`, `EMAIL`, `AREA OF SPECIALISATION`, `FIS`) VALUES
('ITF01', 'Dr.B.Vinayaga Sundaram', 'Associate Professor ', 6021, 'bvsundaram@annauniv.edu', 'Operating Systems,Computer Networking,Wireless Sensor Networks', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=34301'),
('ITF01', 'Dr.B.Vinayaga Sundaram', 'Associate Professor ', 6021, 'bvsundaram@mitindia.edu', 'Operating Systems,Computer Networking,Wireless Sensor Networks', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=34301'),
('ITF02', 'Dr. V. Rhymend Uthariaraj', 'Professor', 6262, 'rhymend@annauniv.edu', 'Computer Networks, Network Security, Pervasive Computing, Wireless Networks\r\n\r\n', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=31997'),
('ITF03', 'Dr.Dhananjay Kumar', 'Professor and Head', 6019, 'dhananjay@annauniv.edu', 'Multimedia Systems,Video Processing,Mobile Communications and Computing', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=60746'),
('ITF03', 'Dr.Dhananjay Kumar', 'Professor and Head', 6019, 'dhananjay@mitindia.edu', 'Multimedia Systems,Video Processing,Mobile Communications and Computing', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=60746'),
('ITF04', 'Dr.M.R.Sumalatha', 'Professor', 6312, '	sumalatha@annauniv.edu', 'Distributed Systems,Cloud Computing,Big Data Analytics,Social Platforms,Data Security and Privacy', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=66493'),
('ITF05', 'Dr.Radha Senthil Kumar', 'Associate Professor', 6311, 'radhasenthil@annauniv.edu', 'XML Technology, Database Management Systems, Web Information Retrieval, Data Mining, Fuzzy Logic, Ge', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=60781'),
('ITF06', 'Dr.P.Kola Sujatha', 'Assistant Professor [Sl Grade]', 6313, NULL, 'Intrusion Detection System, Data Mining and soft computing', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=63121'),
('ITF07', 'Dr. G.Rajesh', 'Assistant Professor', 6023, 'raajiimegce@gmail.com', 'Wireless sensor network,Software engineering,Computer networks,Adhoc and sensor networks,Operating systems', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=67046'),
('ITF08', 'Dr. B.Lydia Elizabeth', 'Assistant Professor', 6025, 'lydiajohn@annauniv.edu', 'Cloud Security , Information Security, Computer Networks and Mobile Communication', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=67035'),
('ITF09', 'Dr. J.Dhalia Sweetlin', 'Assistant Professor [Sr Grade]', 6025, 'jdsweetlin@mitindia.edu', 'Image Processing, Soft Computing', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=67057'),
('ITF10', 'Dr. S.Umamaheswari', 'Assistant Professor[Sr Grade]', 6304, 'uma_sai@mitindia.edu', 'VLSI, Embedded Systems', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=67417'),
('ITF10', 'Dr. S.Umamaheswari', 'Assistant Professor [Sr Grade]', 6304, 'uma_sai@annauniv.edu', 'VLSI, Embedded Systems', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=67417'),
('ITF11', 'Dr. D.Sangeetha', 'AssistantProfessor', 6352, 'dsangeethabaskaran@gmail.com', 'Cloud computing, Cryptography and Security, Web services, Database Management System.', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=67584'),
('ITF12', 'M.Hemalatha', 'Assistant Professor', 6304, 'hemam@annauniv.edu', 'Pattern Recognition,Image Processing and Networking', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=69531'),
('ITF13', 'Dr. Sunil Retmin Raj', 'Visiting Faculty', 6025, 'retmin2001@yahoo.co.in', 'Data Mining, Image Processing', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=700139'),
('ITF13', 'Dr. Sunil Retmin Raj', 'Visiting Faculty', 6025, 'retmin2001@gmail.com', 'Data Mining, Image Processing', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=700139'),
('ITF14', 'E.Pughazendhi', 'Teaching Fellow', 6375, 'pugazh.cse@gmail.com', 'Programming and Data structures, C# with .NET Technology', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=701039'),
('ITF14', 'E.Pughazendhi', 'Teaching Fellow', 6314, 'pugazh.cse@gmail.com', 'Programming and Data structures, C# with .NET Technology', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=701039'),
('ITF15', 'Ashoka Rajan', 'Teaching Fellow', 6375, 'ashok.tiruchendur@gmail.com', 'Adhoc Networks, Software Engineering, Computer Networks', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=701296'),
('ITF15', 'Ashoka Rajan', 'Teaching Fellow', 6314, 'ashok.tiruchendur@gmail.com', 'Adhoc Networks, Software Engineering, Computer Networks', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=701296'),
('ITF16', 'D.Vivekanandan', 'Teaching Fellow', 6375, 'vivek.acm@gmail.com', 'Image Processing, Operating Systems, and Databases', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=701424'),
('ITF16', 'D.Vivekanandan', 'Teaching Fellow', 6314, 'vivek.acm@gmail.com', 'Medical Image processing , Formal Languages and Automata,Computer Architecture', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=701424'),
('ITF17', 'P.Lakshmi Harika', 'Teaching Fellow', 6352, 'lakshmi.harika558@gmail.com', 'Operating system, Database Management System,Software Engineering, Distributed System', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=701482'),
('ITF26', 'NathezhthaThangaraj', 'Teaching Fellow', 6017, 'nathezhtha31@gmail.com', 'Cloud Computing, Network Security, Machine Learning.', ''),
('ITF19', 'S.Eliza Femi Sherley', 'Teaching Fellow', 6017, 'selizafemisherley@mitindia.edu', 'Database | Image Processing | Computer Graphics', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=701699'),
('ITF20', 'M.Gokuldhev', 'Teaching Fellow', 6375, 'ksmdhev@gmail.com', 'Computer Networks | Web Technology | Grid Computing', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=701700'),
('ITF20', 'M.Gokuldhev', 'Teaching Fellow', 6314, 'ksmdhev@gmail.com', 'Computer Networks | Web Technology | Grid Computing', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=701700'),
('ITF21', 'J.Ashwinth', 'Teaching Fellow', 6023, 'ashwinth@annauniv.edu, ashwinthj@gmail.com', 'Data Structures and Algorithm Analysis, Sensor Networks', ''),
('ITF22', 'M.Monisha Devi', 'Teaching Fellow', 6017, 'mmonishadevi.cse@gmail.com', 'DatabaseManagementSystem| Mobile Computing', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=701867'),
('ITF23', 'P.Jayanthi', 'Teaching Fellow', 6017, 'mail2jayanthi.p@gmail.com', 'Video Analytics, Image Processing, Web Services.', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=701866'),
('ITF24', 'V.Premanand', 'Teaching Fellow', 6020, 'premanand_it@yahoo.com', 'Computer Networks, Web Technology, Information Security', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=702190'),
('ITF25', 'Dr.P.AnandhaKumar', 'Professor', NULL, 'anandh@mitindia.edu\r\n', 'Networks, Digital Image processing, Artificial Intelligence, Computer Vision, Robotics, Multimedia Networks, Multimedia Data Structures, Artificial Neural Networks\r\n', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=33904'),
('ITF07', 'Dr. G.Rajesh', 'Assistant Professor', 6023, 'gr@annauniv.edu', 'Wireless sensor network,Software engineering,Computer networks,Adhoc and sensor networks,Operating systems', 'https://www.aukdc.edu.in/fis/facultyprofile.php?ch=67046'),
('ITF27', 'Shanmuga priya R', 'Teaching Fellow', NULL, 'shanmurajendran2@gmail.com', 'Image Processing,Machine Learning,Deep Learning,Video Analytics', ''),
('ITF28', 'Bala Gayathri D', 'Teaching Fellow', NULL, 'gayathribalansvg@gmail.com ', 'Networking,Cloud Computing,Information Security\r\n', ''),
('ITF31', 'Arulalan V', 'Teaching Fellow', NULL, 'arulalanveerappan@gmail.com, arulalan@mitindia.edu', 'Computer Vision, Machine & Deep Learning, Biometric Security, Data Structures', ''),
('ITF29', 'Manju T', 'Teaching Fellow', NULL, 'tvmanju27@gmail.com', 'Software Testing, Web Technology', ''),
('ITF30', 'Seethalakshmi P', 'Teaching Fellow', NULL, 'seethalaxmiperumal@gmail.com', 'Machine Learning, Deep Learning, Optimization Algorithms, Data Structures', '');

-- --------------------------------------------------------

--
-- Table structure for table `Index_check`
--

CREATE TABLE `Index_check` (
  `FID` varchar(5) DEFAULT NULL,
  `Award` int(1) DEFAULT NULL,
  `Session_chair` int(1) DEFAULT NULL,
  `Research_guidance` int(1) DEFAULT NULL,
  `Activities` int(1) DEFAULT NULL,
  `Review` int(1) DEFAULT NULL,
  `Journals` int(1) DEFAULT NULL,
  `Experience` int(1) DEFAULT NULL,
  `Workshop` int(1) DEFAULT NULL,
  `Contributions` int(1) DEFAULT NULL,
  `Research` int(1) DEFAULT NULL,
  `Country_visit` int(1) DEFAULT NULL,
  `Evaluator` int(1) DEFAULT NULL,
  `Lecture` int(1) DEFAULT NULL,
  `FDP` int(1) DEFAULT NULL,
  `other` int(1) DEFAULT NULL,
  `Conference` int(1) DEFAULT NULL,
  `Courses` int(1) DEFAULT NULL,
  `Membership` varchar(10) DEFAULT NULL,
  `Seminar` int(1) DEFAULT NULL,
  `Scholars` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Index_check`
--

INSERT INTO `Index_check` (`FID`, `Award`, `Session_chair`, `Research_guidance`, `Activities`, `Review`, `Journals`, `Experience`, `Workshop`, `Contributions`, `Research`, `Country_visit`, `Evaluator`, `Lecture`, `FDP`, `other`, `Conference`, `Courses`, `Membership`, `Seminar`, `Scholars`) VALUES
('ITF01', 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, NULL, 1, NULL),
('ITF02', 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 1),
('ITF03', 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, NULL, 1, 1),
('ITF04', 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, NULL, 1, NULL),
('ITF05', 0, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, NULL, 0, NULL),
('ITF06', 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, NULL, 1, NULL),
('ITF07', 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, NULL),
('ITF08', 0, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, NULL, 0, NULL),
('ITF09', 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, NULL, 0, NULL),
('ITF10', 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 1, 0, NULL, 0, NULL),
('ITF11', 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, NULL, 0, NULL),
('ITF12', 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
('ITF13', 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
('ITF14', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL, 0, NULL),
('ITF15', 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, NULL, 0, NULL),
('ITF16', 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
('ITF17', 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, NULL, 0, NULL),
('ITF18', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, NULL),
('ITF19', 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL, 0, NULL),
('ITF20', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, NULL),
('ITF21', 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
('ITF22', 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, NULL, 0, NULL),
('ITF23', 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
('ITF24', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL),
('ITF25', NULL, 1, 1, NULL, NULL, 1, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
('ITF26', 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, NULL, 0, NULL),
('ITF27', 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL, 0, NULL),
('ITF28', 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, NULL),
('ITF31', 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL, 1, NULL),
('ITF30', 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL, 0, NULL),
('ITF29', 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Journals`
--

CREATE TABLE `Journals` (
  `FID` varchar(5) DEFAULT NULL,
  `PUBLICATIONDETAILS` varchar(454) DEFAULT NULL,
  `YEAR` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Journals`
--

INSERT INTO `Journals` (`FID`, `PUBLICATIONDETAILS`, `YEAR`) VALUES
('ITF12', 'ANUBHA PEARLINE.S, M.HEMALATHA, \"FACE RECOGNITION UNDER VARYING BLUR IN AN UNCONSTRAINED ENVIRONMENT\", IJRET-International Journal of Research in Engineering and Technology, Vol. 5, Issue 4, pp. 376-381 (2016)', '2016'),
('ITF02', 'D. Chitra Devi and V. Rhymend Uthariaraj, \"Load Balancing in Cloud Computing Environment Using Improved Weighted Round Robin Algorithm for Nonpreemptive Dependent Tasks\", The Scientific World Journal, Vol. 2016, Issue 3896065', '2016'),
('ITF11', 'D.Sangeetha, VVaidehi,A Asiya, \'EXR-FIS- Enhanced XML Rule base Fuzzy Inference system for PHR criticality analysis\', inInternational Journal of Applied Engineering Research (IJAER), Research India Publication, Volume 21', '2015'),
('ITF24', 'Multi Modal Biometric Recognition System using Palm print and Inner-Knuckle Print\', International Journal of Applied Engineering Research ISSN 0973-4562 Volume 10, Number 14 (2015) pp 34748-34751.', '2015'),
('ITF24', 'Survey on Captcha and its Techniques for BOT Protection\' International Journal of Computer Applications (0975 -8887) Volume 109-No. 5, January 2015.', '2015'),
('ITF24', '\'Security Enhancement in Shoulder Surfing Attacks using Passpoints for Random Similar Images (PRSIm)\' International Journal of Computer Networks and Applications Volume 2, Issue 2, March-April (2015).', '2015'),
('ITF24', '\'A Location Based Terminode Routing in Manets\' International Journal of Engineering Research & Technology (IJERT) ISSN: 2278-0181 Vol. 4 Issue 01, January-2015.', '2015'),
('ITF02', 'K. Gokulnath and Rhymend Uthariaraj, \" Game Theory Based Trust Model for Cloud Environment\", The Scientific World Journal,', '2015'),
('ITF02', 'Sridevi S, Chitra Devi D, Dr. V. Rhymend Uthariaraj, \" Efficient Load Balancing and Dynamic Resource Allocation in Cloud Environment\", International Journal of Engineering Research & Technology, Vol. 4, Issue 2', '2015'),
('ITF02', 'P.Shunmuga Perumal , V.Rhymend Uthariaraj and V.R.Elgin Christo, \" WSN Lifetime Analysis:Intelligent UAV and Arc Selection Algorithm for Energy Conservation in Isolated Wireless Sensor Networks\", KSII TRANSACTIONS ON INTERNET AND INFORMATION SYSTEMS', '2015'),
('ITF02', 'R. Varalakshmi , V. Rhymend Uthariaraj, \" Huffman based conditional access system for key distribution in digital TV multicast\", Multimedia Tools and Applications, published by Springer. Issue 9,', '2015'),
('ITF03', 'A. R. Revathi and Dhananjay Kumar, \'Reducing Run-time for Moving Object Detection in Background Buffering Approach\', ICTACT Journal on Communication Technology, (in-press) Year 2014', '2014'),
('ITF03', 'Sanjay Kumar Suman, Dhananjay Kumar, and L. Bhagyalakshmi, \"Review of Power Control Problem in Wireless Ad Hoc Networks in Game Theoretic Perspective\", International Journal of Advanced Research in Computer Science and Software Engineering 3 (4), February 2014, pp. 1-6', '2014'),
('ITF11', 'D. Sangeetha, V. Vaidehi. A. Asiya,\'A Healthcare Framework for PHR Criticality analysis with ORFIS\' in International Conference on Intelligent Information Technologies, ICIIT', '2014'),
('ITF11', 'D Sangeetha, Vaidehi V and Logeswari G,\'A Cost Effective Clustering\' based Anonymization approach for Storing PHR\'s in Cloud\" in IEEE Proceedings, International Conference on Recent Trends in IT, MIT', '2014'),
('ITF11', 'D. Sangeetha, Vaidehi V, Valliammai T, Aiswarya R ,\'Enhanced Security of PHR System in Cloud Using Prioritized Level Based Encryption\', in Recent Trends in Computer Networks and Distributed Systems Security ,Communications in Computer and Information Science (CCIS), Springer-Verlag, Volume 420, 2014, pp 57-69', '2014'),
('ITF11', 'D. Sangeetha, V. Vaidehi, \" An improved cloud based privacy preserving approach for secure PHR access\" in International Conference on Network Security and Communication Engineering, NSCE.', '2014'),
('ITF11', 'D. Sangeetha, Vaidehi V, Valliammai T, Aiswarya R ,\'Enhanced Security of PHR System in Cloud Using Prioritized Level Based Encryption\', in Recent Trends in Computer Networks and Distributed Systems Security ,Communications in Computer and Information Science (CCIS), Springer-Verlag, Volume 420, pp 57-69', '2014'),
('ITF23', '\'Southern Indian Sign language Alphabets Interpretation using Scale Invariant Feature Transform\' ICMOC 2014, organized by Noorul Islam Univ. Kumaracoil, 2014', '2014'),
('ITF24', 'A Survey on Biometric Recognition Techniques\' International Journal of Advanced Research in Computer and Communication Engineering Vol. 3, Issue 2, February 2014.', '2014'),
('ITF24', 'Multimodal Biometric System using Iris and Inner-Knuckle Print\' International Journal of Computer Applications (0975-8887) Volume 106 -No.6, November 2014.', '2014'),
('ITF02', 'Uthariaraj, V Rhymend, \"DISTRIBUTION OF LOAD USING MOBILE AGENT IN DISTRIBUTED WEB SERVERS\", American Journal of Applied Sciences, Vol. 11, Issue 5, pp. 811', '2014'),
('ITF02', 'P.Shunmuga Perumal, V. Rhymend Uthariaraj, V.R. Elgin Christo, \"Intelligent UAV-Assisted Localisation to Conserve Battery Energy in Military Sensor Networks\", Defence Science Journal, Vol. 64, Issue 6, pp. 557', '2014'),
('ITF02', 'Anitha M and Dr. Rhymend Uthariaraj V, \"Improved Life of Watchdog Nodes in Ad hoc Networks\", International Journal of Security and Its Applications, Vol. 8, Issue 6, pp. 273', '2014'),
('ITF02', 'Kayarvizhy N, Kanmani S and Rhymend Uthariaraj V, \"Hypotheses Verification for High Precision Cohesion Metric\", International Journal of Computer Science and Engine and Engineering, Vol. 2, Issue 4, pp. 238', '2014'),
('ITF02', 'Kandaswamy Gokulnath, V. Rhymend Uthariaraj, \" Fair-Trust Evaluation Approach (F-TEA) for Cloud Environment\", Communications in Computer and Information Science, published by Springer. Vol. 467, pp. 81-91', '2014'),
('ITF02', 'Devi Manickavelu, Rhymend Uthariaraj Vaidyanathan, \"Particle swarm optimization (PSO)-based node and link lifetime prediction algorithm for route recovery in MANET\", EURASIP Journal on Wireless Communications and Networking, published by Springer. Issue 10', '2014'),
('ITF02', 'Dhas, Vijayakumar G., and V. Rhymend Uthariaraj, \"Distribution of Load Using Mobile Agent in Distributed Web Servers\", American Journal Of Applied Sciences , Vol. 11, Issue 5,', '2014'),
('ITF02', 'Varalakshmi, R., and V. Rhymend Uthariaraj, \"Huddle Hierarchy Based Group Key Management Protocol using Gray Code\", Wireless networks , Vol. 20, Issue 4, pp. 695-704', '2014'),
('ITF02', 'Perumal, P. Shunmuga, V. Rhymend Uthariaraj, and V. R. Christo, \"Novel Steam Powered Gravity Assisted Standalone Power System (SP-GA-SP System) Design for Remote Wireless Sensor Networks\", Applied Mechanics and Materials , Vol. 440, pp. 248-253', '2014'),
('ITF03', 'A. R. Revathi and Dhananjay Kumar, \'Reducing Run-time for Moving Object Detection in Background Buffering Approach\', ICTACT Journal on Communication Technology, (in-press) Year 2014', '2014'),
('ITF03', 'Sanjay Kumar Suman, Dhananjay Kumar, and L. Bhagyalakshmi, \"Review of Power Control Problem in Wireless Ad Hoc Networks in Game Theoretic Perspective\", International Journal of Advanced Research in Computer Science and Software Engineering 3 (4), February 2014, pp. 1-6', '2014'),
('ITF03', 'Dhananjay Kumar, Pavithra Hari, Panbhazhagi Selvaraj, Sharavanti Baskaran, \"Efficient Spectrum Utilization in Cognitive Radio through Reinforcement Learning\", ICTACT Journal on Communication Technology, Sep. 2013, Vol. 4, No.3, pp. 790 to 795.', '2013'),
('ITF04', 'Narayan Gowraj, Prasanna Venkatesh, Mouniga V, and M.R.Sumalatha \'S2MART: Smart Sql to Map-Reduce Translators\', APWeb 2013, LNCS 7808, pp. 571-582. 2013.', '2013'),
('ITF04', 'M.Parvathy, M.R.Sumalatha \'Keyword search for structured data retrieval\', An International Journal of Advanced Computer technology,ISSN 2320-0790, pp 59-64. ( 2 & 3 )May 2013', '2013'),
('ITF11', 'S. R. Satheesh, D. Sangeetha, \'Ensuring Data Integrity for Environmental Sensor Data Stored in Cloud\', in Proceedings of Second National Conference on Electronics and Signal Processing (CommuniQuest 13), pp. 23.', '2013'),
('ITF11', 'Aishwarya, M. Divya, D. Sangeetha, V. Vaidehi,\'Harnessing Health care Data Security in Cloud\' in IEEE Proceedings, International Conference on Recent trends in Information Technology , ICRTIT ', '2013'),
('ITF11', 'S. R. Satheesh, D. Sangeetha, V. Vaidehi, \'Epsshic-Enabling Privacy and Security of Smart Health Care System in Cloud\' inIEEE Proceedings , International Conference on Recent trends in Information Technology , ICRTIT', '2013'),
('ITF12', 'Facial feature tracking and Expression Recognition using Optical flow\' presented in a National level conference on 5th National conference on Recent Trends in VLSI, Information and Communication, organised by B.S. Abdur Rahman University, India.', '2013'),
('ITF18', 'Presented the paper entitled  \'Data  Integrity and Confidentiality Assurance forCloud Storage\' on April16th 2013 in National Conference on Advanced Electronics and Communication held at Thanthai Periyar Government Institute of Technology,Vellore.', '2013'),
('ITF22', 'A Novel Approach For Text Classification Using Self Clustering Algorithm\'(ID: 4447) in International journal of advanced research in computer science, Volume 4 Issue 2 (Jan - Feb 2013)', '2013'),
('ITF22', 'A Novel Approach For Achieving High Cohesion and Faculty Calculation in Object Oriented System by Using C3 Metrics\' in International journal of advanced research in computer science and software engineering, Volume 3 Issue 2 (Feb 2013)', '2013'),
('ITF23', 'Tamil Alphabets Sign language translator\', IEEE 5th International Conference on Advanced Computing, Organized by MIT, Anna University, Chennai, 2013.', '2013'),
('ITF23', 'ASL Translation using SIFT Algorithm\' Proceedings of 2nd National conference on Networking, Imaging and Green computing, Agni College of Technology, Chennai, 2013', '2013'),
('ITF02', 'Uthariaraj, V. Rhymend, \"Congestion Based Route Recovery Technique for Manet\", Journal of Theoretical & Applied Information Technology , Vol. 53, Issue 1', '2013'),
('ITF02', 'Varalakshmi, R., and V. Rhymend Uthariaraj, \" Huffman Based Conditional Access System for Key Distribution in Digital TV Multicast\", Multimedia Tools and Applications, Vol. 2013, pp. 1-14', '2013'),
('ITF02', 'Uthariaraj V, Rhymend, \"Improving Fault Prediction using ANN-PSO in Object Oriented Systems\", International Journal of Computer Applications, Vol. 73, Issue 3, pp. 18-25', '2013'),
('ITF02', 'Kathirvel, C., Dr. K Porkumaran, T. Velmurugan, Sibaram Khara, Han-Chen Huang, R. Varalakshmi, V. Rhymend Uthariaraj, \"Fuzzy Logic Based Voltage and Frequency of a Self Excited Induction Generator for Micro Hydro Turbines for Rural Applications\", Journal Of Theoretical And Applied Information Technology , Vol. 54, Issue 1,', '2013'),
('ITF02', 'Valannathi, I., and V. Rhymend Uthariaraj, \"SLA Based Trust Management for a Pervasive Environment\", Information Technology Journal , Vol. 12, Issue 12, pp. 2296-2305', '2013'),
('ITF02', 'Kayarvizhy, N., S. Kanmani, and R. V. Uthariaraj, \"High Precision Cohesion Metric\", WSEAS Transaction on Information Science and Applications , Vol. 10, pp. 79-89', '2013'),
('ITF02', 'Hannah, Monisha J, and Rhymend Uthariaraj V, \"A Novel MAC layer-based Reputation System for MANETs\", International Journal of Computer Applications, Vol. 80, Issue 8, pp. 13-18', '2013'),
('ITF02', 'Perumal, P. Shunmuga, V. Rhymend Uthariaraj, and A. Ajay Khanna, \"A Survey on Active Mode Energy Consuming Factors of Sensor Nodes in WSN\", IJECCE, Vol. 4, Issue 1, pp. 66-69', '2013'),
('ITF02', 'Valarmathi, J., and V. Rhymend Uthariaraj, \"An Integrated Approach for Trust Management Based on Policy, Community Adherence and Reputation\", International Journal of Ad Hoc and Ubiquitous Computing , Vol. 13, Issue 2, pp. 132-139', '2013'),
('ITF02', 'Varalakshmi, R., and V. Rhymend Uthariaraj, \"Design of Group Hierarchy System for Multicast Communication\", Journal Of Theoretical & Applied Information Technology , Vol. 53, Issue 1', '2013'),
('ITF03', 'Dhananjay Kumar, Pavithra Hari, Panbhazhagi Selvaraj, Sharavanti Baskaran, \"Efficient Spectrum Utilization in Cognitive Radio through Reinforcement Learning\", ICTACT Journal on Communication Technology, Sep. 2013, Vol. 4, No.3, pp. 790 to 795.', '2013'),
('ITF04', 'Narayan Gowraj, Prasanna Venkatesh, Mouniga V, and M.R.Sumalatha \'S2MART: Smart Sql to Map-Reduce Translators\', APWeb 2013, LNCS 7808, pp. 571-582. 2013.', '2013'),
('ITF04', 'M.Parvathy, M.R.Sumalatha \'Keyword search for structured data retrieval\', An International Journal of Advanced Computer technology,ISSN 2320-0790, pp 59-64. ( 2 & 3 )May 2013', '2013'),
('ITF04', 'Diwan B., Sumalatha \'Mobility Prediction and Critical Nodes Based Database Transactions using Relay Nodes in MANETs\' European Journal of Scientific Research, ISSN 1450-216X Vol.82 No.3(2012),pp407-413.', '2012'),
('ITF04', 'M.R. Sumalatha, C. Selvakumar, B. Jagadeesh, V. Bhoopesh Kumar and R. Baluprasad, 2012. An Intelligent Cloud System Adopting File Pre-Fetching', '2012'),
('ITF04', 'Diwan B., Sumalatha \'Mobility Prediction and Critical Nodes Based Database Transactions using Relay Nodes in MANETs\' European Journal of Scientific Research, ISSN 1450-216X Vol.82 No.3(2012),pp407-413.', '2012'),
('ITF04', 'M.R. Sumalatha, C. Selvakumar, B. Jagadeesh, V. Bhoopesh Kumar and R. Baluprasad, 2012. An Intelligent Cloud System Adopting File Pre-Fetching', '2012'),
('ITF06', 'Kola Sujatha, P., Suba Priya, C. and Kannan, A. \'Network Intrusion Detection System Using Genetic Network Programming With Support Vector Machine\', Accepted for the International Conference on Advances in Computing, Communications and Informatics (ICACCI 2012), ACM, Chennai, India, August.', '2012'),
('ITF10', 'Dynamic Buffer Management to Improve the Performance of Fault Tolerance Adaptive Network-On-Chip Applications International Conference on Recent Trends in IT 2012, 19-21 Apr 2012', '2012'),
('ITF11', 'Presented entitled \' Dynamic heterogeneous data processing in Iaas Clouds\' in Recent Trends in Information Technology (ICRTIT 2012)', '2012'),
('ITF19', 'Content Based Video Copy Detection – By Fusing Frames', '2012'),
('ITF22', 'Paper presented, titled \'Ocular Journeying across bio-medical database\' at Dr. M.G.R Educational &Research Institute University - Chennai (April 2012)', '2012'),
('ITF22', 'Paper presented, titled \'Selfish nodes detection in mobile ad-hoc networks\' at Maria College of Engineering and Technology - Kanyakumari (Feb 2012)', '2012'),
('ITF23', 'Fraudulent Analysis in SOA based Business Process\' Proceedings of 2nd National conference on CCITT, DMI college of engineering, Chennai 2012.', '2012'),
('ITF02', 'Devi, M., and V. Rhymend Uthariaraj, \"Fuzzy Based Route Recovery Technique for Mobile Ad hoc Networks\", European Journal of Scientific Research , Vol. 83, Issue 1, pp. 129-143', '2012'),
('ITF02', 'Nanthini, V. P., and Dr V. Rhymend Uthariaraj, \"Success Prediction of Students using Soft Skill Measures\", European Journal of Scientific Research, Vol. 91, Issue 1, pp. 68-83', '2012'),
('ITF02', 'Perumal, P. Shunmuga, and V. Rhymend Uthariaraj, \"Novel Localization of Sensor Nodes in Wireless Sensor Networks using Co-Ordinate Signal Strength Database\", Procedia Engineering , Vol. 30, pp. 662-668', '2012'),
('ITF02', 'Varalakshmi, R., and V. Rhymend Uthariaraj, \"Secure Multicast Communication using Group Based Multicast Hierarchy\", International Journal of Advanced Research in Computer Engineering & Technology (Ijarcet) , Vol. 1, Issue 5, pp. 231', '2012'),
('ITF02', 'J. Hannah Monisha, and Rhymend Uthariaraj, \"Diagnosing MAC Misbehavior in Mobile Ad Hoc Networks using Statistical Methods\", IJCSNS, Vol. 12, Issue 5, pp. 1', '2012'),
('ITF02', 'Malarvizhi, N., and V. Rhymend Uthariaraj, \"Comparison of Resource Scheduling in Centralized, Decentralized and Hybrid Grid Environments\", International journal of emerging technology and advanced engineering, Vol. 2, Issue 7, pp. 382-388', '2012'),
('ITF02', 'Nanthini, V. P., and V. Rhymend Uthariaraj, \"Behavioral Identification of Budding Professionals through Neo Personality Inventory Traits\", International Journal of Computer Applications , Vol. 56, Issue 12,', '2012'),
('ITF02', 'Varalakshmi, R., and V. Rhymend Uthariaraj, \"A New Secure Multicast Key Distribution Scheme Using Tabulation Method\", International Journal of Information Technology and Computer Science (IJITCS) , Vol. 4, Issue 1, pp. 32', '2012'),
('ITF02', 'Gopalakrishnan, K., and V. Rhymend Uthariaraj, \"Collaborative polling based routing security scheme to mitigate the colluding misbehaving nodes in mobile ad hoc networks\", Wireless Personal Communications, Vol. 67, Issue 4, pp. 829-857', '2012'),
('ITF02', 'Nanthini, V. P., and V. Rhymend Uthariaraj, \"Success Prediction of Students by Integrating Communication Skills with Achievement Motivation and Personality\", International Journal on Computer Science and Engineering , Vol. 4, Issue 10', '2012'),
('ITF04', 'Diwan B., Sumalatha \'Mobility Prediction and Critical Nodes Based Database Transactions using Relay Nodes in MANETs\' European Journal of Scientific Research, ISSN 1450-216X Vol.82 No.3(2012),pp407-413.', '2012'),
('ITF04', 'M.R. Sumalatha, C. Selvakumar, B. Jagadeesh, V. Bhoopesh Kumar and R. Baluprasad, 2012. An Intelligent Cloud System Adopting File Pre-Fetching', '2012'),
('ITF04', 'Diwan B., Sumalatha \'Mobility Prediction and Critical Nodes Based Database Transactions using Relay Nodes in MANETs\' European Journal of Scientific Research, ISSN 1450-216X Vol.82 No.3(2012),pp407-413.', '2012'),
('ITF04', 'M.R. Sumalatha, C. Selvakumar, B. Jagadeesh, V. Bhoopesh Kumar and R. Baluprasad, 2012. An Intelligent Cloud System Adopting File Pre-Fetching', '2012'),
('ITF06', 'Kola Sujatha, P., Suba Priya, C. and Kannan, A. \'Network Intrusion Detection System Using Genetic Network Programming With Support Vector Machine\', Accepted for the International Conference on Advances in Computing, Communications and Informatics (ICACCI 2012), ACM, Chennai, India, August.', '2012'),
('ITF01', 'B.Vinayagasundaram and G Vithya (2011)\'Actuation sensor with adaptive routing and QOS aware checkpoint arrangement on wireless multimedia sensor network\',Proceedings of ICRTIT 2011, MIT campus Anna University', '2011'),
('ITF01', 'B.Vinayagsundaram, G.Rajesh, Sahiti G Malathi R Mary Priyanga et.al (2011)\'An efficient approach for data aggregation routing using survival analysis in wireless sensor networks\',International Journal of Wireless and Mobile networks vol.3.no.2. pp 243-251', '2011'),
('ITF01', 'B.Vinayagasundaram and G Vithya (2011)\'Quantum DOT sensor for image capturing and routing based on temporal power and critical factor\" Advances in Computing and Information Technology pp.435-445 Springer Verlag', '2011'),
('ITF03', 'Dhananjay Kumar and P.Subramanian \'Greedy Resource Allocation for OFDMA Based Wireless Network\' i-manager\'s Journal on Software Engineering, Vol. 5 l No. 2, January - March 2011.', '2011'),
('ITF06', 'P.Kola Sujatha, R.Arun, P.V.Shantoosh, I.Ezra Prince Jebahar and A.Kannan, \'Network Level Anomaly Detection System using MST Based Genetic Clustering\', in International Conference on Computer Network Security and applications (CNSA 2011),CCIS (Springer- verlog), PP.No.113 - 122,chennai,India,2011.', '2011'),
('ITF10', 'FPGA Based Network On Chip(Noc) Architecture, National Conference on Power Electronics and Controllers for Renewable Energy Systems (PECRES\'11), K.S.R College Of Technology, Tiruchengode, March 2011', '2011'),
('ITF10', 'Comparing the Performance Parameters of Network on Chip with Regular and Irregular Topologies NeCoM/WeST/WiMoN 2011, CCIS 197, pp. 177-186, 2011. Springer-Verlag Berlin Heidelberg 2011 published in July 2011.', '2011'),
('ITF10', 'Energy, Throughput and Area Evaluation of Regular and Irregular Network on Chip Architectures International Journal of Distributed and Parallel Systems (IJDPS) Vol.2, No.5, September 2011', '2011'),
('ITF16', 'A Feature Extraction Model For Assessing The Growth Of Lung Cancer In Computer Aided Diagnosis', '2011'),
('ITF02', 'Nandagopal, Malarvizhi, K. Gokulnath, and V. Rhymend Uthariaraj, \"A Two-Level Hierarchical Resource Selection Model in Grid Environment\", Journal of Computational Information Systems, Vol. 7, Issue 8, pp. 2634-2643', '2011'),
('ITF02', 'K. Gopalakrishnan and V. Rhymend Uthariaraj, \"Neighborhood Monitoring Based Collaborative Alert Mechanism to Thwart the Misbehaving Nodes in Mobile Ad Hoc Networks\", European Journal of Scientific Research, Vol. 57, Issue 3', '2011'),
('ITF02', 'Gopalakrishnan, K., and V. Rhymend Uthariaraj, \"Acknowledgment based Reputation Mechanism to Mitigate the Node Misbehavior in Mobile Ad Hoc Networks\", Journal of Computer Science, Vol. 7, Issue 8,', '2011'),
('ITF02', 'Vidya, K., and V. Rhymend Uthariaraj, \"Throughput optimisation of inter-and intra-domain autonomous systems traffic engineering\", International Journal of Communication Networks and Distributed Systems , Vol. 6, Issue 1, pp. 45-58', '2011'),
('ITF02', 'Nandagopal, Malarvizhi, S. Gajalakshmi, and V. Rhymend Uthariaraj, \"Scheduling With Job Checkpoint In Computational Grid Environment\", International Journal of Modeling, Simulation, and Scientific Computing, Vol. 2, Issue 3, pp. 299-316', '2011'),
('ITF02', 'Vanathi, B., and V. Rhymend Uthariaraj, \"Comparing and Choosing Appropriate Database for Storing Context in Context Aware System\", Journal of Computer Science , Vol. 7, Issue 7,', '2011'),
('ITF02', 'Vidya, K., and V. Rhymend Uthariaraj, \"Quantum Octal Logarithmic Approximation Keying (QOLAK) Scheme for Securing AS-PATH in Inter-Domain Routing\", Information Technology Journal , Vol. 10, Issue 9, (2011).', '2011'),
('ITF02', 'Gunasekaran, R., V. P. Divya, and V. Rhymend Uthariaraj, \"Mitigating channel usage in cooperative caching for Mobile Ad hoc Networks\", International Journal of Ad Hoc and Ubiquitous Computing, Vol. 7, Issue 2, pp. 87-99', '2011'),
('ITF02', 'Malarvizhi, N., and Rhymend V. Uthariaraj, \"Hierarchical Status Information Exchange Scheduling and Load Balancing for Computational Grid Environments\", International Journal of Computer Science and Network Security , Vol. 10, Issue 2, pp. 177-185', '2011'),
('ITF02', 'Devi, M., and Dr V. Rhymend Uthariaraj, \" Routing with AODV protocol for Mobile AdHoc Network\", International Journal of Technology And Engineering System, Vol. 2, Issue 1,', '2011'),
('ITF02', 'Elizabeth B.L,Aaishwarya. R, Kiruthika. P, Shrada. M.N, Prakash. A.J,Rhymend Uthariaraj. V, \"Bayesian based confidence model for trust inference in MANETs\", Bayesian based confidence model for trust inference in MANETs, published by IEEE. pp. 402-406', '2011'),
('ITF02', 'Nandagopal M,Rhymend Uthariaraj .V, \"Decentralized Dynamic Load Balancing for Multi Cluster Grid Environment\", Advanced Computing, published by Springer. pp. 149-160', '2011'),
('ITF02', 'Vidya .K and V. Rhymend Uthariaraj, \"Logarithmic Octal Approximation Keying Scheme for Securing AS-PATH in Inter-Domain Routing\", European Journal of Scientific Research, Vol. 54, pp. 121-133', '2011'),
('ITF02', 'Malarvizhi Nandagopal, V. Rhymend Uthariaraj, \"Load Distribution through Optimal Neighbour Selection in Decentralized Grid Environment\", European Journal of Scientific Research, Vol. 50, pp. 575-585', '2011'),
('ITF02', 'Nandagopal Malarvizhi and V Rhymend Uthariaraj, \" Performance analysis of resource selection algorithms in grid computing environment\", Journal of Computer Science , Vol. 7, Issue 4, pp. 493', '2011'),
('ITF02', 'Sumitra, R., Uthariaraj, V., Vijayaraju, P., Hemavathy, R, \" Common Fixed Point Theorems for Uniformly Subcompatible Mappings Satisfying More General Condition\", Tamkang Journal of Mathematics, Vol. 42, Issue 1, pp. 9-17', '2011'),
('ITF01', 'B.Vinayagasundaram and G Vithya (2011)\'Actuation sensor with adaptive routing and QOS aware checkpoint arrangement on wireless multimedia sensor network\',Proceedings of ICRTIT 2011, MIT campus Anna University', '2011'),
('ITF01', 'B.Vinayagsundaram, G.Rajesh, Sahiti G Malathi R Mary Priyanga et.al (2011)\'An efficient approach for data aggregation routing using survival analysis in wireless sensor networks\',International Journal of Wireless and Mobile networks vol.3.no.2. pp 243-251', '2011'),
('ITF01', 'B.Vinayagasundaram and G Vithya (2011)\'Quantum DOT sensor for image capturing and routing based on temporal power and critical factor\" Advances in Computing and Information Technology pp.435-445 Springer Verlag', '2011'),
('ITF03', 'Dhananjay Kumar and P.Subramanian \'Greedy Resource Allocation for OFDMA Based Wireless Network\' i-manager\'s Journal on Software Engineering, Vol. 5 l No. 2, January - March 2011.', '2011'),
('ITF06', 'P.Kola Sujatha, R.Arun, P.V.Shantoosh, I.Ezra Prince Jebahar and A.Kannan, \'Network Level Anomaly Detection System using MST Based Genetic Clustering\', in International Conference on Computer Network Security and applications (CNSA 2011),CCIS (Springer- verlog), PP.No.113 - 122,chennai,India,2011.', '2011'),
('ITF01', 'B.Vinayagasundaram and A.Sumathi (2010)\'Location privacy in mobile environments using a secured anonymity server\',IEEE proceedings of ICoAC 2010 pp.9-13', '2010'),
('ITF03', 'Dhananjay Kumar and Chellappan. C, \"System Modeling and Analysis for an Efficient Resource Allocation in MC-CDMA Cellular Wireless Networks to Support Internet Traffic\", Journal of Internet Technology, May 2010, Vol. 11, No. 3, pp. 427 to 436.', '2010'),
('ITF03', 'Dhananjay Kumar, Chellappan C., Srividhya S. , Mariappan P. and Martheeswaran M., \"Efficient Resource Allocation in OFDMA Cellular Wireless Networks to Support Multimedia Traffic in Downlink\", International Journal of Mobile Network Design and Innovation, January 2010, Vol. 3 (2009), No. 2, pp. 72 to81.', '2010'),
('ITF04', 'Sumalatha Ramachandran, Sujaya Paulraj, Sharon Joseph and Vetriselvi Ramraj \'Handling Overload Conditions in High Performance Trustworthy Information Retrieval Systems\' Journal of Computing, Vol. 2, Issue 4, April 2010, ISSN: 2151-9617, PP:70-75.', '2010'),
('ITF02', 'Sumitra, R., V. Rhymend Uthariaraj, and R. Hemavathy, \"Common Fixed Point Theorem for T-Hardy-Rogers Contraction Mapping in a Cone Metric Space\", International Mathematical Forum, Vol. 5, Issue 30, pp. 1495-1506', '2010'),
('ITF02', 'Charles, V., A. Udhayakumar, and V. Rhymend Uthariaraj, \"An Approach to Find Redundant Objective Function (S) and Redundant Constraint (S) in Multi-Objective Nonlinear Stochastic Fractional Programming Problems\", European Journal of Operational Research , Vol. 201, Issue 2, pp. 390-398', '2010'),
('ITF02', 'Gunasekaran, R., S. Siddharth, P. Krishnaraj, M. Kalaiarasan, and V. Rhymend Uthariaraj, \"Efficient Algorithms to Solve Broadcast Scheduling Problem in Wimax Mesh Networks\", Computer Communications , Vol. 33, Issue 11, pp. 1325-1333', '2010'),
('ITF02', 'Nandagopal, Malarvizhi, and V. Rhymend Uthariaraj, \"Fault Tolerant Scheduling Strategy for Computational Grid Environment\", International Journal of Engineering Science and Technology, Vol. 2, Issue 9, pp. 4361-4372', '2010'),
('ITF02', 'Nandagopal, Malarvizhi, and Rhymend V. Uthariaraj, \"Hierarchical Status Information Exchange Scheduling and Load Balancing for Computational Grid Environments\", IJCSNS International Journal of Computer Science and Network Security , Vol. 10, Issue 2, pp. 177-185', '2010'),
('ITF02', 'Udhayakumar, A., Vincent Charles, and V. Rhymend Uthariaraj, \"Stochastic Simulation-Based Genetic Algorithm for Chance Constrained Fractional Programming Problem\", International Journal of Operational Research , Vol. 9, Issue 1, pp. 23-38', '2010'),
('ITF02', 'Sumitra, R., V. Rhymend Uthariaraj, R. Hemavathy, and P. Vijayaraju, \" Common Fixed Point Theorem for Non-Self Mappings Satisfying Generalized Type Contraction Condition in Cone Metric Space\", Fixed Point Theory and Applications', '2010'),
('ITF02', 'Sumitra, R., V. Rhymend Uthariaraj, and R. Hemavathy, \"Common Fixed Point Theorem for More General Occasionally Noncommuting Mappings\", Int. J. Contemp. Math. Sciences, Vol. 5, Issue 7, pp. 333-340', '2010'),
('ITF02', 'B. Vanathi and V. Rhymend Uthariaraj, \"Context Aware System for Smart Consignment Tracking\", European Journal of Scientific Research, Vol. 50, pp. 586-596', '2010'),
('ITF02', 'Malarvizhi Nandagopal and V. Rhymend Uthariaraj, \"Hierarchical load balancing Approach In Computational Grid Environment\", International Journal of Recent Trends in Engineering , Vol. 3, pp. 19-24', '2010'),
('ITF02', 'R. Sumitra , V. Rhymend Uthariaraj, R. Hemavathy and P. Vijayaraju, \" Common Fixed Point Theorems for Uniformly Subcompatible Mappings Satisfying more General Condition in Normed Linear Space\", Advances in Theoretical and Applied Mathematics (ATAM), Vol. 5, pp. 97-108', '2010'),
('ITF02', 'R. Sumitra, V. Rhymend Uthariaraj and R. Hemavathy, \"Fixed Point Theorems for T-Nonexpansive Mapping\", IJMSEA, Vol. 4', '2010'),
('ITF02', 'Malarvizhi, N., and V. Rhymend Uthariaraj, \"ARMS: Availability-Aware Resource Management System in Grid Environments\", The IUP Journal of Systems Management , Vol. 8, Issue 4, pp. 7-18', '2010'),
('ITF02', 'R. Gunasekaran and V. Rhymend Uthariaraj, \"A Novel Approach for Enciphering Data of Smaller Bytes\" in International Journal of Computer Theory and Engineering\", in International Journal of Computer Theory and Engineering, Vol. 2, pp. 654-659', '2010'),
('ITF02', 'R. Gunasekaran and V. Rhymend Uthariaraj, \"Efficient algorithms to solve Broadcast Scheduling problem in WiMAX mesh networks\", in the Elsevier-Journal of Computer Communications, Vol. 33, Issue 11, pp. 1325-1333', '2010'),
('ITF02', 'Nandagopal, Malarvizhi, and Rhymend V. Uthariaraj, \"Hierarchical Load Balancing Approach in Computational Grid Environment\", International Journal of Recent Trends in Engineering and Technology, Vol. 3, Issue 1, pp. 19-24', '2010'),
('ITF02', 'Malarvizhi Nandagopal, V. Rhymend Uthariaraj, \"Fault Tolerant Scheduling Strategy for computational grid environment\", International Journal of Engineering Science and Technology, Vol. 2, Issue 9, pp. 4361-4372', '2010'),
('ITF02', 'Sumitra, R., V. Rhymend Uthariaraj, and R. Hemavathy, \"Common Fixed Point and Invariant Approximation Theorems for Mappings Satisfying Generalized Contraction Principle\", Journal of Mathematics Research , Vol. 2, Issue 2, pp. 135', '2010'),
('ITF01', 'B.Vinayagasundaram and A.Sumathi (2010)\'Location privacy in mobile environments using a secured anonymity server\',IEEE proceedings of ICoAC 2010 pp.9-13', '2010'),
('ITF03', 'Dhananjay Kumar and Chellappan. C, \"System Modeling and Analysis for an Efficient Resource Allocation in MC-CDMA Cellular Wireless Networks to Support Internet Traffic\", Journal of Internet Technology, May 2010, Vol. 11, No. 3, pp. 427 to 436.', '2010'),
('ITF03', 'Dhananjay Kumar, Chellappan C., Srividhya S. , Mariappan P. and Martheeswaran M., \"Efficient Resource Allocation in OFDMA Cellular Wireless Networks to Support Multimedia Traffic in Downlink\", International Journal of Mobile Network Design and Innovation, January 2010, Vol. 3 (2009), No. 2, pp. 72 to81.', '2010'),
('ITF04', 'Sumalatha Ramachandran, Sujaya Paulraj, Sharon Joseph and Vetriselvi Ramraj \'Handling Overload Conditions in High Performance Trustworthy Information Retrieval Systems\' Journal of Computing, Vol. 2, Issue 4, April 2010, ISSN: 2151-9617, PP:70-75.', '2010'),
('ITF03', 'Dhananjay Kumar and Chellappan C., \"Performance Analysis of an Optimal Resource Allocation Method for the Water Filled Channel of the OFDMA Cellular Network to Support Multimedia Traffic\", International Journal of Ultra Wideband Communications and Systems, October 2009, Vol. 1(2009), No. 2, pp. 81 to90.', '2009'),
('ITF03', 'Dhananjay Kumar, Chellappan. C, Bala Jeevitha Vani. B, \"Performance Analysis of an Adaptive Resource Allocation in MC-CDMA Systems to Support Multimedia Traffic\", International Journal of Interactive Mobile Technologies, October 2009, Vol. 3, Special Issue No. 2, pp. 51 to 57.', '2009'),
('ITF03', 'Dhananjay Kumar and Chellappan C., \"Adaptive Call Admission Control in TDD-CDMA Cellular Wireless Networks\", Journal of Ubiquitous Computing and Communication, August 2009, Vol. 4, No. 3, pp. 834-840.', '2009'),
('ITF03', 'Dhananjay Kumar and Chellappan C., \"Adaptive Slot Management for OFDMA based Cellular Wireless Networks in TDD mode\", Journal of Theoretical and Applied Information Technology, June 2009, Vol. 5, No. 6 , pp. 686 to 692.', '2009'),
('ITF03', 'Dhananjay Kumar and Chellappan C. , \"Efficient Resource Allocation in MC-CDMA Cellular Wireless Networks to Support Multimedia Traffic\", Journal of Theoretical and Applied Information Technology, May 2009, Vol. 5, No. 5, pp. 699 to 707.', '2009'),
('ITF03', 'Dhananjay Kumar, Chellappan C., Srividhya S. , Mariappan P. and Martheeswaran M., \"Performance Analysis of a Future OFDMA Cellular Wireless Network to Support Large Multimedia Traffic in Downlink\", CiiT International Journal of Wireless Communication, April 2009, Vol. 1, No. 1, pp. 08 to 14.', '2009'),
('ITF04', 'Sumalatha M.R., Sindhuja V. and Sathya.M. \'Detection of Anomalous Data using Data Visualization Techniques\' International Journal of Recent Trends in Engineering Vol.1 May, 2009, 133-136.', '2009'),
('ITF04', 'Sumalatha M.R., Gowrishankar P., Balamurali R. and Jayakandan R \'Discovery of Semantic Web Services Using Intelligent Predictions for Business Applications\' CIIT International Journal, April.', '2009'),
('ITF04', 'Sumalatha Ramachandran, Sujaya Paulraj, Sharon Joseph and Vetriselvi Ramraj \'Enhanced Trustworthy and High-Quality Information Retrieval System for Web Search Engines\' IJCSI International Journal of Computer Science Issues, Vol. 5, 2009, 38-42.', '2009'),
('ITF07', 'LOCALIZATION FOR MOBILE SENSOR NETWORKS BASED ON MCL METHOD USING HW PREDICTION, DOI: WC042009004,\nCiiT, International Journal of Wireless Communication, Print: ISSN 0974-9756 & Online: ISSN 0974-9640, April 2009.', '2009'),
('ITF07', 'LOW POWER LOCALIZATION WITH LOCATION VERIFICATION FOR WIRELESS SENSOR NETWORKS, DOI: WC042009008,CiiT, International Journal of Wireless Communication, Print: ISSN 0974-9756 & Online: ISSN 0974- 9640 , April 2009', '2009'),
('ITF07', 'A Model For Potential Terrorist Attack Detection Using Wireless Sensor Network, National Level Conference, NCFRAC\'09 ,Saintgits college of engineering Kottayam , kerala , India , 21, Feb\'2009', '2009'),
('ITF02', 'Gunasekaran, Raja, Vaidheyanathan Rhymend Uthariaraj, Uamapathy Yamini, Rajagopalan Sudharsan, and Selvaraj Sujitha Priyadarshini, \"A Distributed Mechanism for Handling of Adaptive/Intelligent Selfish Misbehaviour at Mac Layer in Mobile Ad Hoc Networks\", Journal of Computer Science and Technology , Vol. 24, Issue 3, pp. 472-481', '2009'),
('ITF02', 'Vidya, K., and V. Rhymend Uthariaraj, \"Bi-Criteria Latency Optimization of Intra-and Inter-Autonomous System Traffic Engineering\", International Journal of Recent Trends in Engineering, Vol. 1, Issue 1, pp. 11-19', '2009'),
('ITF03', 'Dhananjay Kumar and Chellappan C., \"Performance Analysis of an Optimal Resource Allocation Method for the Water Filled Channel of the OFDMA Cellular Network to Support Multimedia Traffic\", International Journal of Ultra Wideband Communications and Systems, October 2009, Vol. 1(2009), No. 2, pp. 81 to90.', '2009'),
('ITF03', 'Dhananjay Kumar, Chellappan. C, Bala Jeevitha Vani. B, \"Performance Analysis of an Adaptive Resource Allocation in MC-CDMA Systems to Support Multimedia Traffic\", International Journal of Interactive Mobile Technologies, October 2009, Vol. 3, Special Issue No. 2, pp. 51 to 57.', '2009'),
('ITF03', 'Dhananjay Kumar and Chellappan C., \"Adaptive Call Admission Control in TDD-CDMA Cellular Wireless Networks\", Journal of Ubiquitous Computing and Communication, August 2009, Vol. 4, No. 3, pp. 834-840.', '2009'),
('ITF03', 'Dhananjay Kumar and Chellappan C., \"Adaptive Slot Management for OFDMA based Cellular Wireless Networks in TDD mode\", Journal of Theoretical and Applied Information Technology, June 2009, Vol. 5, No. 6 , pp. 686 to 692.', '2009'),
('ITF03', 'Dhananjay Kumar and Chellappan C. , \"Efficient Resource Allocation in MC-CDMA Cellular Wireless Networks to Support Multimedia Traffic\", Journal of Theoretical and Applied Information Technology, May 2009, Vol. 5, No. 5, pp. 699 to 707.', '2009'),
('ITF03', 'Dhananjay Kumar, Chellappan C., Srividhya S. , Mariappan P. and Martheeswaran M., \"Performance Analysis of a Future OFDMA Cellular Wireless Network to Support Large Multimedia Traffic in Downlink\", CiiT International Journal of Wireless Communication, April 2009, Vol. 1, No. 1, pp. 08 to 14.', '2009'),
('ITF04', 'Sumalatha M.R., Sindhuja V. and Sathya.M. \'Detection of Anomalous Data using Data Visualization Techniques\' International Journal of Recent Trends in Engineering Vol.1 May, 2009, 133-136.', '2009'),
('ITF04', 'Sumalatha M.R., Gowrishankar P., Balamurali R. and Jayakandan R \'Discovery of Semantic Web Services Using Intelligent Predictions for Business Applications\' CIIT International Journal, April.', '2009'),
('ITF04', 'Sumalatha Ramachandran, Sujaya Paulraj, Sharon Joseph and Vetriselvi Ramraj \'Enhanced Trustworthy and High-Quality Information Retrieval System for Web Search Engines\' IJCSI International Journal of Computer Science Issues, Vol. 5, 2009, 38-42.', '2009'),
('ITF07', 'LOCALIZATION FOR MOBILE SENSOR NETWORKS BASED ON MCL METHOD USING HW PREDICTION, DOI: WC042009004,\nCiiT, International Journal of Wireless Communication, Print: ISSN 0974-9756 & Online: ISSN 0974-9640, April 2009.', '2009'),
('ITF07', 'LOW POWER LOCALIZATION WITH LOCATION VERIFICATION FOR WIRELESS SENSOR NETWORKS, DOI: WC042009008,CiiT, International Journal of Wireless Communication, Print: ISSN 0974-9756 & Online: ISSN 0974- 9640 , April 2009', '2009'),
('ITF06', 'P.Kola Sujatha, A.Kannan, S.Ragunath, K.Sindu Bargavi and Gitanjali, \'A Behavior Based Approach to Host-Level Intrusion detection using Self -Organizing Maps\', in First International Conference on emerging Trends in Engineering and Technology (ICETET 2008), IEEE Explore , PP.No.1261-1271, Nagpur, India,2008', '2008'),
('ITF02', 'Washington, D. George, D. Senthil Kumar, and V. Rhymend Uthariaraj, \"A Decision Support System for Predicting Academic Performance of Candidates in Engineering Admissions using MARS\", The International Journal of Learning, Vol. 15, Issue 3, pp. 313-322', '2008'),
('ITF02', 'Aramudhan, M., and V. Rhymend Uthariaraj, \" Modified Application Level Differentiated Web Service Management for TCP Connection\", International Journal of Information Technology , Vol. 12, Issue 1', '2008'),
('ITF02', 'Gunasekaran, R., V. Rhymend Uthariaraj, S. Aravind, S. Karthikeyan, and R. Rajesh, \"Selective Suspension Of Transmission For Avoiding Priority Reversal in Mobile Ad Hoc Networks\", UbiCC Journal , Vol. 3, Issue 5, pp. 22-28', '2008'),
('ITF06', 'P.Kola Sujatha, A.Kannan, S.Ragunath, K.Sindu Bargavi and Gitanjali, \'A Behavior Based Approach to Host-Level Intrusion detection using Self -Organizing Maps\', in First International Conference on emerging Trends in Engineering and Technology (ICETET 2008), IEEE Explore , PP.No.1261-1271, Nagpur, India,2008', '2008'),
('ITF01', 'B.Vinayagasundaram and S.K.Srivatsa (2007),\'Implementation of Hybrid software architecture for Artificial Intelligence Systems\',International Journal of Computer science and Network security pp. 35-41 2011', '2007'),
('ITF01', 'B.Vinayagasundaram and S.K.Srivatsa (2007)\'Software Quality in Artificial Intelligence Systems\',Information Technology Journal vol.6 No.6 pp.835-842.', '2007'),
('ITF04', 'Sumalatha M.R., Vaidehi V. and Kannan A.\'Semantic Query Cache using Dynamic Facts - Novel Approach to Efficient Information Retrieval\' Journal, International Journal of Metadata, Semantics and Ontologies(IJMSO), Vol.2, Number 4/2007, pp.281-294.', '2007'),
('ITF04', 'Sumalatha M.R., Vaidehi V. and Kannan A.\'Xml Query Processing - Semantic Cache System\' International Journal of Computer Science and Network Security, Vol.7 No.4, April 30, 2007, 164-169.', '2007'),
('ITF07', 'A Computerized Tongue Diagnosis System Based On Bayesian Network, National Level Conference, NCACT\'07,A.C College of Engineering and Technology Karaikudi, TN ,India, 29&30 march\'2007.', '2007'),
('ITF02', 'Uthariaraj, V. Rhymend, and M. Mahesh Babu, \"Graduate Courses in Embedded and Real-Time Systems\", IEEE Pervasive Computing , Vol. 6, Issue 2, pp. 101-104', '2007'),
('ITF02', 'A.S.Meenakshi Sundaram, M.Mahesh Babu, C.Manikandan, V.Rhymend Uthariaraj and R. Shriram, \"Improving Prediction Accuracy in Context Aware Smart Homes Using K-Markov Model\", published in the International Journal of Soft Computing , Vol. 2.', '2007'),
('ITF02', 'R. Gunasekaran and V. Rhymend Uthariaraj, \"Analysing Link Stability Using QoS to Support Routing in Mobile Ad-hoc Networks\", in the International Journal of Computer Science and Network Security , Vol. 7, pp. 183-189', '2007'),
('ITF02', 'R. Gunasekaran and V. Rhymend Uthariaraj, \"Differentiated Bandwidth Allocation in Mobile Ad Hoc Networks (MANET). A Profile based Approach\", in the Asian Journal of Information Technology , Vol. 6, pp. 662-666', '2007'),
('ITF02', 'Kanmani, S., V. Rhymend Uthariaraj, V. Sankaranarayanan, and P. Thambidurai, \"Object-Oriented Software Fault Prediction using Neural Networks\", Information and Software Technology, Vol. 49, Issue 5, pp. 483-492', '2007'),
('ITF01', 'B.Vinayagasundaram and S.K.Srivatsa (2007),\'Implementation of Hybrid software architecture for Artificial Intelligence Systems\',International Journal of Computer science and Network security pp. 35-41 2011', '2007'),
('ITF01', 'B.Vinayagasundaram and S.K.Srivatsa (2007)\'Software Quality in Artificial Intelligence Systems\',Information Technology Journal vol.6 No.6 pp.835-842.', '2007'),
('ITF04', 'Sumalatha M.R., Vaidehi V. and Kannan A.\'Semantic Query Cache using Dynamic Facts - Novel Approach to Efficient Information Retrieval\' Journal, International Journal of Metadata, Semantics and Ontologies(IJMSO), Vol.2, Number 4/2007, pp.281-294.', '2007'),
('ITF04', 'Sumalatha M.R., Vaidehi V. and Kannan A.\'Xml Query Processing - Semantic Cache System\' International Journal of Computer Science and Network Security, Vol.7 No.4, April 30, 2007, 164-169.', '2007'),
('ITF07', 'Data Clustering Algorithms For Texture Classification And Retrieval, International Conference, ObCom\'2006 ,Vellore Institute of Technology, Vellore, TN, India, 18 and 19, dec\'2006', '2006'),
('ITF10', 'Participated and presented a paper titled Pipelined Architecture for Quasi Arithmetic Coding at 2nd National Conference, NCSSC -2006 at Anna University, Chennai during 1 & 2 June', '2006'),
('ITF10', 'Participated and presented a paper titled Pipelined Architecture for Quasi Arithmetic Coding at 2nd National Conference, NCIICT 2006 at PSG College of Technology, Coimbatore during 7 & 8 July 2006', '2006'),
('ITF10', 'Published a paper titled Quasi Arithmetic Coding: Pipelined Implementation in FPGA and Embedded Systems First International Conference on Industrial and Information Systems, Peradeniya, Sri Lanka held on 8-11 August, 2006', '2006'),
('ITF13', '\'Selective Compression of Medical Images Using Mixed Transform Approach\', Proceedings of the National Conference on Emerging Technologies in Electronics Systems (ETES-2006) on Trends in Image Networking and Signal Processing organized by Dept. of E.E.E., Noorul Islam College of Engineering on 29 April 2006.', '2006'),
('ITF02', 'Aramudhan M. and Rhymend Uthariaraj V, \"LDMA and WLDMA: New Load balancing strategies on Distributed LAN and WAN Environment\", Published in the International Journal of Computer system and Network security, Vol. 6, pp. 76-84', '2006'),
('ITF02', 'Chidambaram, Manikandan, A. S. Meenakshi Sundaram, M. Mahesh Babu, Rhymend Uthariaraj, and R. Shriram, \"Resolving Users Behavior Modeling Ambiguities in Fuzzy-Timed Smart Homes Using Only RFIDs\", IJCSNS , Vol. 6, Issue 11, pp. 179', '2006'),
('ITF02', 'Mahesh Babu, M., A. S. Meenakshi Sundaram, C. Manikandan, and V. Rhymend Uthariaraj, \"On the Short-Term Feasibility of Using RFID in Realizing Ambient-Intelligence in Indian Homes\", computing, Vol. 513, Issue 192, pp. 376', '2006'),
('ITF02', 'Aramudhan M. and Rhymend Uthariaraj V, \"Modified Application Level Differentiated Web Service Management for TCP Connection\", published in the International Journal of Information Technology, Vol. 12, pp. 99-109', '2006'),
('ITF02', 'Aramudhan M. and Rhymend Uthariaraj V, \"A Study on Enhancing QoS through Dynamic Service Prioritization in Web Services\", published in Asian Journal of Information Technology, Vol. 4, pp. 954 - 956', '2005'),
('ITF01', 'B.Vinayagasundaram, M.Kannan and S.K.Srivatsa (2004)\'Software architecture Quality in Artificial Intelligence Systems\',\'Proceedings of International Conference on Emerging Technology ICET-2004 pp: 307-310.', '2004'),
('ITF02', 'Kanmani, S., V. Rhymend Uthariaraj, V. Sankaranarayanan, and P. Thambidurai, \"Investigation into the Exploitation of Object-Oriented Features \", ACM SIGSOFT Software Engineering Notes , Vol. 29, Issue 2, pp. 7-7', '2004'),
('ITF02', 'Kanmani, S., V. Rhymend Uthariaraj, R. Nakkeeran, and P. Inbavani, \"Object Oriented Software Fault Prediction using Adaptive Neuro Fuzzy Inference System\", WSEAS Transactions on information science and applications, Vol. 1, Issue 5, pp. 1142-1145', '2004'),
('ITF02', 'Kanmani, S., V. Rhymend Uthariaraj, and R. Nakkeeran, \"Exploring the Behaviour of Neural Network Based Object Oriented Software Quality Models\", WSEAS Transactions on Information Science and Applications, Vol. 1, Issue 5, pp. 1146-1150', '2004'),
('ITF02', 'Kanmani, S., V. Rhymend Uthariaraj, V. Sankaranarayanan, and P. Thambidurai, \"Object Oriented Software Quality Prediction using General Regression Neural Networks\", ACM SIGSOFT Software Engineering Notes , Vol. 29, Issue 5, pp. 1-6', '2004'),
('ITF01', 'B.Vinayagasundaram, M.Kannan and S.K.Srivatsa (2004)\'Software architecture Quality in Artificial Intelligence Systems\',\'Proceedings of International Conference on Emerging Technology ICET-2004 pp: 307-310.', '2004'),
('ITF01', 'M.Kannan, V.Dhanalakshmi , B.Vinayagasundaram (2003),\'FPGA Implementation of Image Processing Algorithms for Process Control Applications\',Proceedings of ICET2003, KIIT, Bhuvaneswar pp.49', '2003'),
('ITF01', 'M.Kannan, V.Dhanalakshmi , B.Vinayagasundaram (2003),\'FPGA Implementation of Image Processing Algorithms for Process Control Applications\',Proceedings of ICET2003, KIIT, Bhuvaneswar pp.49', '2003'),
('ITF02', 'Natesan, T. R., and Rhymend Uthariaraj, \"A Mathematical Model for Management of Chain Centres to Counsel for Engineering Admissions\", Logistics and Supply Chain Management , Vol. 428.', '2001'),
('ITF02', 'Natesan, T. R., V. Rhymend Uthariaraj, and V. Jacob, \"Redundancies in Mathematical Programming Models-a Logistic Approach for a Priori Identification\", Logistics and Supply Chain Management , Vol. 71.', '2001'),
('ITF07', 'Presented a paper in an international conference \'Inverse Square Law Based Solution for Data Aggregation Routing Using Survival Analysis in Wireless Sensor Networks\'.A.Khaja Muhaiyadeen, R.Hari Narayanan, C.Shelton Paul Infant and G.Rajesh, Communications in Computer and Information Science, 1, Volume 132Advances in Networks and Communications, Part 3, Pages 573-583, and published in springerlink http://www.springerlink.com/content/q2762g1627088721/.', '-'),
('ITF11', 'Presented Paper entitled Sharp hunter - An innovative approach of file sharing and searching in UP2P in National Conference at National Engg College.', '-'),
('ITF11', 'Presented Paper entitled \'Semantic Analysis Patterns\' in National Conference at AVIT Chennai', '-'),
('ITF11', 'Presented paper entitled \'Secure Group Communications in Web Applications\' in National Conference on Microelectronics and Communication at SRM University, Kattankulathur.', '-'),
('ITF11', 'Presented paper entitled \'Adaptive PSecure Access in Mobile P2P systems\' in National Conference on Recent Trends in Information Technology and Communication at Velammal Engineering College, Chennai', '-'),
('ITF03', 'Sanjay Kumar Suman, Dhananjay Kumar, and L. Bhagyalakshmi, \"Non Cooperative Power Control Game with New Pricing for Wireless Ad hoc Networks\", International Review on Computers and Software (I.RE.CO.S.), Vol. 9, No. 1', NULL),
('ITF03', 'Sanjay Kumar Suman, Dhananjay Kumar, and L. Bhagyalakshmi, \"SINR Pricing in Non Cooperative Power Control Game for Wireless Ad Hoc Networks\", KSII Transactions on Internet and Information systems (in press).', NULL),
('ITF04', 'Sumalatha Ramachandran, Uttara Sridhar, Vidhya Srinivasan and J. Jaya Jothi \'Data aggregation and Privacy for Police Patrols\' International Journal of Ad hoc, Sensor & Ubiquitous Computing, volume NO: 2 - Issue: June 2011, ISSN : 0976 - 1764 (Online), PP:0976-2205', NULL),
('ITF14', NULL, NULL),
('ITF19', NULL, NULL),
('ITF20', NULL, NULL),
('ITF05', 'Radha Senthilkumar, Priyaa Varshinee and Kannan, A. \'Designing and Querying a Compact Redundancy Free XML Storage\', The Open Information System Journal, Vol 3, pp. 98-107, 2009.', NULL),
('ITF05', 'Radha Senthilkumar and Kannan, A. \'Efficiently Querying the Indexed Compressed XML Data (IQX)\', International Journal of Database Management Systems, Vol.3, No.3, pp. 135-155, 2011.', NULL),
('ITF05', 'Radha Senthilkumar and Kannan, A. \'Efficient Query Optimization for RFX Storage Structure using Strategy List Approach\', European Journal of Scientific Research, Vol 58, No.2, pp 204-221, 2011.', NULL),
('ITF05', 'Poornima, Radha Senthilkumar, \'Keyword Search on Compact XML Structure with Ranking\', International Journal of Advanced Computer Technology, Vol. 1, No. 1, pp 65-69, 2013', NULL);
INSERT INTO `Journals` (`FID`, `PUBLICATIONDETAILS`, `YEAR`) VALUES
('ITF05', 'S. Meenakshi, Radha Senthilkumar, \'An Efficient Evaluation of High Answer Semantics Queries for Compact Storage Structure\', An International Journal of Advanced Computer Technology, Vol. 1, No. 1, pp 10-13, 2013', NULL),
('ITF05', 'Radha Senthilkumar, Gomathi Nandagopal, and Daphne Ronald, \'QRFXFreeze: Queryable Compressor for RFX,\'The Scientific World Journal, vol. 2015, Article ID 864750, 8 pages, 2015. doi:10.1155/2015/864750.', NULL),
('ITF05', 'Nasrin Banu Nazar, Radha Senthilkumar, \"An Online Approach for Feature Selection for Classification in Big-Data\", Turkish Journal of Electrical Engineering & Computer Science , Dec 2015 (Under Publication)', NULL),
('ITF03', 'Sanjay Kumar Suman, Dhananjay Kumar, and L. Bhagyalakshmi, \"Non Cooperative Power Control Game with New Pricing for Wireless Ad hoc Networks\", International Review on Computers and Software (I.RE.CO.S.), Vol. 9, No. 1', NULL),
('ITF03', 'Sanjay Kumar Suman, Dhananjay Kumar, and L. Bhagyalakshmi, \"SINR Pricing in Non Cooperative Power Control Game for Wireless Ad Hoc Networks\", KSII Transactions on Internet and Information systems (in press).', NULL),
('ITF04', 'Sumalatha Ramachandran, Uttara Sridhar, Vidhya Srinivasan and J. Jaya Jothi \'Data aggregation and Privacy for Police Patrols\' International Journal of Ad hoc, Sensor & Ubiquitous Computing, volume NO: 2 - Issue: June 2011, ISSN : 0976 - 1764 (Online), PP:0976-2205', NULL),
('ITF08', 'B. Lydia Elizabeth, K. Ramya, A. John Prakash and V. Rhymend Uthariayaraj, \"T-Select: Trust\r\nbased Cloud Service Provider Selection\", International Journal of Applied Engineering\r\nResearch (IJAER) , published by RI publication. pp. 979-995 (2015)', NULL),
('ITF08', 'John Prakash A, Lydia Elizabeth, V Rhymend Uthariaraj, \"Performance Evaluation of Multicrypt\r\nEncryption Mechanism\", American Journal of Applied Sciences, published by Science\r\nPublication. Vol. 9, Issue 11, pp. 1849-1861 (2012)', NULL),
('ITF06', 'A. Saranya, P. Kola Sujatha and A. Kannan, \"Zombie Based Attack Detection and Prevention\r\nin Web Applications\", International Journal of Emerging Technology in Computer Science &\r\nElectronics (IJETCSE), published by IJETCSE. Vol. 7, Issue 1, pp. 63-68', NULL),
('ITF06', 'Kola Sujatha, P., Ajay, M., Hariharan, G., Albert, S. and Kannan. A, \" Application-Layer Attacks\r\nSleuthing Model Using Eccentric Classifiers\", European Journal of Scientific Research,\r\npublished by European Journal. Vol. 78, Issue 3, pp. 375-383 (2012)', NULL),
('ITF06', 'P. Kola Sujatha, J. Jayadharini, Kanchan Kumar, Jeevitha and A. Kannan, \" Analysis and\r\nPerformance Evaluation of Cosine Neighbourhood Recommender System\", International Arab\r\nJournal of Information Technology (IAJIT), published by Accepted for Publication(2014)', NULL),
('ITF06', 'P. Kola Sujatha, A. Saranya and A. Kannan, \"Prediction of Future Vulnerablility Discovery in\r\nSoftware Applications using Vulnerability Syntax Tree (PFVD-VST)\", International Arab Journal\r\nof Information Technology (IAJIT), published by Accepted for Publication(2016)', NULL),
('ITF07', 'G. Rajesh, B. Vinayaga Sundaram,S.Mathivanan, \"Data Aggregation In Noisy Wireless Sensor\r\nNetworks using Chaos Theory\", Special issue on Applications of Soft Computational\r\nApproaches in Bioinformatics, published by IIOAB Journal. Vol. 9, Issue 3, pp. 16-23 (2015)', NULL),
('ITF07', 'G. Rajesh, B. Vinayaga Sundaram, C. Aarthi, \"Tree Based Data Aggregation to Resolve\r\nFunneling effect in wireless sensor network\", International Journal of Computer, Electrical,\r\nAutomation, Control and Information Engineering, published by World Academy of Science,\r\nEngineering and Technolo. Vol. 9, Issue 3, pp. 860-865 (2015)', NULL),
('ITF07', 'Dr.B.Vinayaga Sundaram, Rajesh G, Sahiti G, Malathi R, Mary Priyanga S, \"An Efficient\r\nApproach for Data Aggregation Routing using Survival Analysis in Wireless Sensor Networks\",\r\nInternational Journal of Wireless & Mobile Networks , Vol. 3, Issue 2, (2011)', NULL),
('ITF07', 'Khaja Muhaiyadeen, R. Hari Narayanan, C. Shelton Paul Infant and G. Rajesh, \". Inverse\r\nSquare Law Based Solution for Data Aggregation Routing Using Survival Analysis in Wireless\r\nSensor Networks\", , Communications in Computer and Information Science, published by\r\nspringer digital indexing. pp. 573-583 (2011)', NULL),
('ITF17', '\"Detection of Static and Dynamic Behavior in Forbidden Areas of a Complex Environment\",\r\nJournal of Advances in natural and applied science, published by American-Eurasian Network\r\nfor Scientific Informati. pp. 33-39 (2014)', NULL),
('ITF21', 'X. Mercilin Raajini, Dr. P. Indumathi, Ashwinth.J, \"A Spatio Temporal Data Aggregation\r\nScheme for Wireless Sensor Networks\", European Journal of Scientific Research, published by\r\nEuropean Journal of Scientific Research. Vol. 74, Issue 4, pp. 516-526 (2012). ', '2012'),
('ITF21', 'Rajesh G, Vinayagasundaram B, Sahana S, Ashwinth J, \"Data Aggregation By Energy Efficient\r\nOptimal Node Positioning And Compression\", nternational Journal Of Applied Engineering\r\nResearch, published by nternational Journal Of Applied Engineering Resear. Vol. 10, Issue 32,\r\npp. 23381-23386 (2015).', '2015'),
('ITF13', 'Sunil Retmin Raj C, Khanna Nehemiah H, Shiloah Elizabeth D, Kannan, \"Distance Based\r\nGenetic Algorithm for Feature Selection in Computer Aided Diagnosis Systems\", Current\r\nMedical Imaging Reviews, published by Bentham Publications. ', NULL),
('ITF13', 'Shiloah Elizabeth D.,Khanna Nehemiah H.,Sunil Retmin Raj C., Kannan A., \" A Novel\r\nSegmentation Approach for Improving Diagnostic Accuracy of CAD Systems for Detecting\r\nLung Cancer from Chest Computed Tomography Images\", ACM Journal of Data and\r\nInformation Quality, published by ACM. Vol. 3, Issue 4, pp. 4:1-4:16 (2012). ', NULL),
('ITF13', 'Shiloah Elizabeth D.,Khanna Nehemiah H.,Sunil Retmin Raj C., Kannan A., \"Computer Aided\r\nDiagnosis of Lung Cancer Based on Analysis of the Significant Slice of Chest CT Image\", IET\r\nImage Processing, published by IET. Vol. 6, Issue 6, pp. 697-705 (2012).', NULL),
('ITF13', 'Shiloah Elizabeth D.,Khanna Nehemiah H.,Sunil Retmin Raj C., Kannan A., \"A Novel\r\nSupervised Approach for Segmentation of Lung Parenchyma from Chest CT for Computer\r\nAided Diagnosis\", Journal of Digital Imaging, published by Springer. pp. 1-14 (2012). \r\n', NULL),
('ITF13', 'Sunil Retmin Raj C, Khanna Nehemiah H, Shiloah Elizabeth D, Kannan, \"Two-phase\r\nsupervised segmentation algorithm for automatic segmentation of lung parenchyma from chest\r\nCT\", International Journal of Soft Computing, published by Medwell Journal. pp. 127-136\r\n(2014). ', NULL),
('ITF09', 'J Dhalia Sweetlin, S.Aishwarya, D.Vaishnavi, \" CodeDom Technology Based Compiler\",\r\nInternational Journal of Applied Engineering Research, published by Research India\r\nPublications. Vol. 10, Issue 75, pp. 148-153 (2015).', NULL),
('ITF09', 'Dhalia Sweetlin J, Dr.H.Khanna Nehemiah, Dr.A.Kannan, \"Patient Specific Model Based\r\nSegmentation of Lung Computed Tomographic Images\", Journal of Information Science and\r\nEngineering, published by Institution of Information Science, Taiwan. Vol. 32, Issue 5, pp.\r\n1373-1394 (2016).', NULL),
('ITF09', 'J.Dhalia Sweetlin, S.Aishwarya, D.Vaishnavi, \"CodeDom Technology based Compiler\"\r\npresented in a International level conference on Intl Conference on Computing and Information\r\nTechnology, organised by Sri Sai Ram Institute of Technology, India from 13-Aug-2015 to\r\n14-Aug-2015.\r\n', NULL),
('ITF09', 'Vamsi Krishna C, Roshan Karthik S, J.Dhalia Sweetlin, \"Novel approach for string searching\r\nand matching using ASCII code for infromation interchnage value\" presented in a International\r\nlevel conference on ICRTIT 2016, organised by Anna University, India from 08-Apr-2016 to\r\n09-Apr-2016.', NULL),
('ITF09', 'J.DhaliaSweetlin,V.Aswini, R.Dhanusha, \"Speech Based Attendance Application Register\"\r\npresented in a International level conference on ICRTIT 2016, organised by Anna University,\r\nIndia from 08-Apr-2016 to 09-Apr-2016.\r\n', NULL),
('ITF25', 'Anandhakumar P, Boopathi Raja M. And Kannan A. (2005), ‘Partial Image Retrieval System Using Sub Tree Matching’ , WSEAS Transactions On Computers, Vol. 4. Issue 4, Pp. 411-416.', NULL),
('ITF25', 'Anandhakumar P, Boopathi Raja M. And Kannan A. (2005), ‘Code Based Video Retrieval System In A Distributed Environment’, Asian Journal Of Information Technology, Vol. 4, No. 6, Pp. 620-622.', NULL),
('ITF25', 'Suphalakshmi A and Anandhakumar P, “A Novel Fuzzy Logic based Automatic Segmentation of Echocardiographic Images”, International Journal of Information Processing, ISSN 0973-8215, Volume 2, Number 4, 2008. pp 71-81.', NULL),
('ITF25', 'Suphalakshmi A and Anandhakumar P, “A Noise Resistive Transtexture Based Delineation of Left Ventricle in Echocardiographic Images” , International Journal of Recent Trends in Engineering (Computer Science), Vol. 1, No. 1, June 2009, pp. 88 – 94.', NULL),
('ITF25', 'Suphalakshmi A and Anandhakumar P, “Automatic Segmentation of Echocardiographic Images Using Full Causal Hidden Markov Model” European Journal of Scientific Research, ISSN 1450-216X, Vol.36 No.4 (2009), pp.585-594', NULL),
('ITF25', 'V.Balamurugan and Anandhakumar P, “Neuro-fuzzy based clustering approach for content based image retrieval using 2D-Wavelet transform”, International journal of recent trends in engineering (computer science) Vol.1.No.1,pp:418-424.May 2009.', NULL),
('ITF25', 'V.Balamurugan and Anandhakumar P, “An efficient color, texture and metadata based integrated image retrieval framework” International journal of control and Automation and Systems, Interscience Publications UK .', NULL),
('ITF25', 'Anandhakumar P and V.Balamurugan, “ Feature Based Adaptive Tolerance Tree an efficient indexing technique for content based image retrieval ” , International Journal Computer Science and Information Security, Vol. II .USA, Feb 2010. (BEST PAPER AWARD)', NULL),
('ITF25', 'V.Balamurugan and Anandhakumar P, ‘A Dynamic indexing technique for content based image retrieval using feature based adaptive tolerance tree’ Journal of computing, Feb 2010', NULL),
('ITF25', 'Balamurugan V. and Anandhakumar P, ‘Multiresolution Image Indexing Technique Based on Texture Features Using 2D Wavelet Transform’ European journal of scientific research,Vol.48.Issue.4.pp.648-664.January 2011', NULL),
('ITF25', 'Adiline Macriga.T and Anandhakumar P, “Seamless Data Services For Real Time Communication in a heterogeneous network using network Tracking And Management ”, International Journal of Computer Science and Information Security, Accepted for March 2010 issue', NULL),
('ITF25', 'Adiline Macriga.T and Anandhakumar P, “ Mobility Management For Seamless Information Flow In Heterogeneous Network Using Hybrid Handover”, International Journal Of Computer Science and Network Security, February 2010, PP. 61 – 70.', NULL),
('ITF25', 'Adiline Macriga T and Anandhakumar P, “Mobility management for seamless information flow in a heterogeneous networks”, International Journal of Computing Technology, Vol.1, No. 1, pp. 1-10, 2010', NULL),
('ITF25', 'Adiline Macriga T and Anandhakumar P, “Mobility management for seamless flow of information using heterogeneous networks”, International Journal of Management Research and Technology, Vol. 4, No.2, pp 501-523, 2010', NULL),
('ITF25', 'Adiline Macriga T and Anandhakumar P, “ Seamless information flow in a heterogeneous networks using mobility management”, International Journal of Computer Science and Emerging Technologies, Vol.1, No. 1, pp. 39-48, 2010.', NULL),
('ITF25', 'Adiline Macriga. T and Anandhakumar. P, “ Mobility Management for seamless information flow of information in wireless networks”, European journal of Scientific Research, Vol. 52,Issue 2, pp. 147-155, 2011', NULL),
('ITF25', 'Adiline Macriga T and Anandha kumar P, “Mobility management for seamless services in a heterogeneous networks”, Journal of Computer Information Systems, Vol.1, No. 3, pp. 33-40, 2010', NULL),
('ITF25', 'Adiline Macriga T and Anandha kumar P, “Mobility Management Strategies for Seamless Information Flow in a Heterogeneous Networks”, Journal of Computer Science, Vol. 7, No. 2, pp. 270-278, 2011', NULL),
('ITF25', 'Adiline Macriga.T and Anandhakumar P, “S eamless Services For Real Time Communication in Heterogeneous Networks” International Journal on Mobile Networks and Applications, Accepted for publications in Springer Publications. (REF: M1499).', NULL),
('ITF25', 'Suguna. R and Anandhakumar. P, “A rotation invariant pattern operator for texture characterization”, International Journal of computer science and network security, Vol. 10 , Number 4, April 2010, pp 120-129.', NULL),
('ITF25', 'R. Suguna and P. Anandhakumar “An Efficient Feature Extraction Technique for Texture Learning” International Journal of Computer Science and Information Security, Vol. 8, No. 2, May 2010 (21-28).', NULL),
('ITF25', 'R. Suguna and P. Anandhakumar “ Fingerprint Recognition using Orthogonal Polynomial Based Transform” International Joint Journal Conference in Computer, Electronics and Electrical – CEE 2010, published in IJRTE journal, Vol. 4, Nov 2010', NULL),
('ITF25', 'Velammal, B .L. and Anandhakumar, P. “Adaptation Aware Indexing of Image Cache In Content Adaptation Proxies”, European Journal of Scientific Research,  Vol. 53, No. 3, pp. 453-461, 2011.', NULL),
('ITF25', 'Velammal, B .L. and Anandhakumar, P. “ Flexible Content Browsing for Impaired e - Learning”, International Journal of Computer Applications, Vol. 27, No. 3, pp. 1-4, 2011.\r\n', NULL),
('ITF25', 'Velammal, B .L. and Anandhakumar, P. “Dynamic Content Adaptation for Multimedia Content in Handheld Devices”, Journal of Computer Science and Engineering, Vol. 2, Issue. 1, pp. 1-5, 2010.', NULL),
('ITF25', 'Velammal, B .L. and Anandhakumar, P. “An Efficient Ball Detection Framework for Cricket” , International Journal of Computer Science Issues, Vol. 7, Issue 3, No. 2, pp. 30-35, 2010.', NULL),
('ITF25', 'Velammal, B .L. and Anandhakumar, P. “ An Efficient Adaptation Aware Caching Architecture for Multimedia Content Proxies” , International Journal of Computer and Network Security, Vol. 1, No. 2, pp. 89-94, 2009.', NULL),
('ITF25', 'Velammal, B .L. and Anandhakumar, P. “ Client Device Based Content Adaptation using Rulebase” , Journal of Computer Science, Vol. 7, Issue 12, pp. 1908-1913, 2011.', NULL),
('ITF25', 'Velammal, B .L. and Anandhakumar, P. “ Automated Video Summarization using Subtitles Adaptation Aware Indexing of Image Cache In Content Adaptation Proxies”, Accepted for International Journal of Computer Science Issues, 2011.', NULL),
('ITF25', 'Navaneetha Krishnan, S . and Anandhakumar, P. “Decision Fusion for Texture Classification Based on Dual Tree Complex Wavelet Transform”, Vol 56, Issue 4, pp. 529 – 538, European Journal of Scientific Research, July 2011.', NULL),
('ITF25', 'Rajeswari, R . and Anandhakumar, P. “Image Segmentation and Identification of Brain Tumour using FFT Techniques of MRI Image” , International Journal of Recent Trends in Engineering and Technology, Vol. 4, No. 2,pp. 80-84,2010.', NULL),
('ITF25', 'Rajeswari, R. and Anandhakumar, P.“ Multi-label Image Segmentation for medical Applications based on graph- cuts” , International Journal of Computer Science and Information Security,Vol.8,No.5,pp.142-147,2010.', NULL),
('ITF25', 'Rajeswari, R. and Anandhakumar,P. “ Image Segmentation and Identification of Brain Tumour using FFT Techniques of MRI Image” , Second international Joint Journal Conference in Computer,Electronics and Electrical Engineering,pp.80-84,2010,India.', NULL),
('ITF25', 'Rajeswari, R. and Anandhakumar, P. “ Segmentation and Identification of Brain Tumour MRI Image with Radix4 FFT Techniques”, European Journal of Scientific Research, ISSN 1450-216X ,Vol.52 No.1, pp.100-109, 2011.', NULL),
('ITF25', 'Rajeswari, R. and Anandhakumar, P. “ Fast Medical Image Mixture Density Clustering Segmentation Using Radix4-Fast Fourier Transform” , considered for publication in Springer Signal Image and Video Processing journal, 2011.', NULL),
('ITF25', 'Sivakoumar, R. and Anandhakumar, P. “Neighbour Cache Based Video Streaming in a Peer to Peer Mesh Network”, European Journal of Scientific Research, ISSN 1450-216X, Vol. 71, No. 3, pp. 443-451, 2012.', NULL),
('ITF25', 'J.Priyadarshini and Anandhakumar P, “Dynamic Location Updates and Collision Avoidance for Multiple Objects Using Agent Based Framework”, European Journal of Scientific Research, ISSN 1450-216X, Vol. 79, No. 3, pp. 337-352, 2012.', NULL),
('ITF25', 'Meenakshi, B., and P. Anandhakumar. \"Fuzzy based energy efficient clustering technique for ZigBee (802.15. 4) Sensor Networks.\" Eur. J. Sci. Res 80 (2012): 93-108. [SCOPUS]', NULL),
('ITF25', 'Meenakshi, R., and P. Anandhakumar. \"Wavelet statistical texture features with orthogonal operators tumour classification in magnetic resonance imaging brain.\" American Journal of Applied Sciences 10.10 (2013): 1154. [SCOPUS]', NULL),
('ITF25', 'Kumar, A. Sasi, and P. Anandhakumar. \"Efficient Cluster Based Processing of Joint Top—K Spatial Keyword Queries.\" Asian Journal of Information Technology 13.11 (2014): 678-683. [SCOPUS]', NULL),
('ITF25', 'Evangeline, D. Preetha, and Anandhakumar Palanisamy. \"A Novel Cloud Based Scheduling Strategy to Perform Transcoding for H. 264 Real-Time Streaming.\" Asian Journal of Information Technology 15.14 (2016): 2473-2482. [SCOPUS] ', NULL),
('ITF25', 'Sathiya, P., and AnandhaKumar. \"Human Activity Recognition Based on 2d Texture Signal Pattern Analysis.\" Online Journal of Communication and Media Technologies, Special Issue : Sept 2016, pp:53-66.', NULL),
('ITF25', 'D. Sowmiya, P. Anandhakumar, \"Human Detection and Segmentation using Automatic Geodesic Active Contours for Vision Basaed Activity Recognition Applications\", Journal of Computational and Theoretical Nanoscience, Vol. 14, 1-8, 2017 (SCOPUS)  ', NULL),
('ITF25', 'R.  Ashoka Rajan, P. Anandhakumar, “Multi Biometric Cryptosystem Based on Generation of Graphs Using Feature Vectors”, Journal of Computational and Theoretical Nanoscience, Vol. 14,1-7, 2017. (SCOPUS)  ', NULL),
('ITF25', 'Anandhakumar P and Kannan A., ‘An Agent Based Framework For Similarity Retrieval Of Images From Distributed Image Databases’ , ICFAI journal on System Management, India, 2005.', NULL),
('ITF25', '. Anandhakumar P and Kannan A., ‘Object tracking in a Video Sequence using Ternary Tree Structure’, Indian Journal of Mathematics, India, 2005.', NULL),
('ITF28', 'Published a paper in \"IJERT\" (International Journal of Engineering Research and Technology) with the title \"Secured Data  Storage in Cloud Computing\" in Volume III, Issue 2 ', NULL),
('ITF28', 'Published a paper in \"IJIRD\" (International Journal of Innovative Research and Development) with the title \"Literature Survey\" in Volume II, Issue 11', NULL),
('ITF31', 'V. Arulalan, G. Balamurugan, V. Premanand, \"Multi-Modal Biometric Recognition System using Palmprint and Inner-Knuckle Print\", International Journal of Applied Engineering Research, Volume 10, Number 14 (2015) pp 34748-34751', NULL),
('ITF31', 'V. Arulalan, V. Premanand, G. Balamurugan, \"An Overview on multi Modal Biometrics\", International Journal of Applied Engineering Research, Volume 10, Number 17 pp 37534-37538. [SCOPUS]', '2015'),
('ITF31', 'V. Premanand, A. Meiappane, V. Arulalan, \"Survey on Captcha and its Techniques for BOT Protection\", International Journal of Computer Applications (0975 - 8887) Volume 109 - No. 5', '2015'),
('ITF31', 'V. Arulalan, N. Geetha, V. Premanand, \"Multimodal Biometric System using Iris and Inner-Knuckle Print\", International Journal of Computer Applications (0975 - 8887)  Volume 106 - No.6', '2014'),
('ITF31', 'G. Balamurugan, V. Arulalan, V. Lokesh, \"Customer- Management Relationship Service using Android\", International Journal of Computer Applications (0975- 8887) Volume 105 - No. 1\"', '2014'),
('ITF31', 'G. Balamurugan, Dr. K. B.  Jayarraman, V. Arulalan, \"A Survey on Medical Image Watermarking Techniques\", IJCSN International Journal of Computer Science and Network, Volume 3, Issue 5', '2014'),
('ITF31', 'G. Balamurugan, Dr. K. B. Jayarraman, V. Arulalan, \"Multi-Modal Biometric Template Protection Using Image Processing\", International Journal of Engineering Research & Technology (IJERT) Vol. 3 Issue 4', '2014'),
('ITF31', 'G. Balamurugan, Sakthivel Punniakodi, V. Arulalan, C. Jayanavithraa, \"Multipath Forwarding in VANET for Message Dissemination\", International Journal of Advanced Research in Computer and Communication Engineering Vol. 2, Issue 11', '2013'),
('ITF31', 'V. Arulalan, G. Balamurugan, V. Premanand, \"A Survey on Biometric Recognition Techniques\", International Journal of Advanced Research in Computer and Communication Engineering Vol. 3, Issue 2', '2013'),
('ITF29', '\"MIVRA (Mental Immersion in Virtual Reality Avatar) - Social Communication Rehabilitation Assistive Tool for Autism Children\", International Conference on Innovations in Information and Communication Technologies[Accepted for publication in Springer]', '2020'),
('ITF29', '\"VR based under Water Museum of Andaman and Nicobar Islands\", Fourth International Conference on Information and communication Technology for Intelligent Systems, Springer: Smart Innovation, Systems and Technologies 196, https://doi.org/10.1007/978-981-15-7062-9_63, vol.2, pp 627-632, Oct 2020', NULL),
('ITF29', '\"Cognitive Rehabilitation for Autism Children Mental Status Observation Using Virtual Reality Based Interactive Environment\", Springer, AISC 1131, pp. 1213–1218, 2020.', NULL),
('ITF29', '\"A Rehabilitation Therapy For Autism Spectrum Disorder Using Virtual Reality\", International Conference on Intelligent Information Technologies - 2017, Springer - Communication in Computer and Information Science 808, pp. 328–336, 2018.https://doi.org/10.1007/978-981- 10-7635-0_26.', NULL),
('ITF29', '\"A Virtual Reality Therapy for Autism Spectrum Disorder\" in 2017 International Conference on Computational Intelligence: Theories, Applications, and Future Directions (ICCI-2017) at Indian Institute of Technology Kanpur, India during December 6th - 8th, 2017.', NULL),
('ITF29', '\"Autism Spectrum Disorder Treatment Through Virtual Environment: A Survey\", Asian Journal of Convergence in Technology,Volume III, Issue IIII, SSN No.:2350-1146, Impact Factor - 2.71, April 2017', NULL),
('ITF29', '\"Ensuring Confidentiality of Cloud Data Using Homomorphic Encryption\", Indian Journal of Science and Technology, Volume-9, Issue-8, Feb- 2016, ISSN:0974-6846.', NULL),
('ITF29', '\"Fault Localization for COTS Components using Dynamic Analysis Technique\", International Journal Of Advanced Research In Engineering Technology & Sciences, Volume-2, Issue-2,Feb-2015,ISSN:2394-2819.', NULL),
('ITF29', 'T. Manju, A. Askarunisa and Giri Babu, \"Fault Localization For Java Programs Using Probabilistic Program Dependence Graph\". IJCSI International Journal of Computer Science Issues, Vol. 8, Issue 6, No 2, November 2011.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Lectures`
--

CREATE TABLE `Lectures` (
  `FID` varchar(5) DEFAULT NULL,
  `Lecturedetails` varchar(232) DEFAULT NULL,
  `Period` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Lectures`
--

INSERT INTO `Lectures` (`FID`, `Lecturedetails`, `Period`) VALUES
('ITF06', NULL, NULL),
('ITF07', NULL, NULL),
('ITF11', 'Delivered Lecture on \'Virus and Malicious Software\' in the Faculty Development Programme during Dec 2011 organized by the Department of Computer Technology, MIT.', '2011'),
('ITF11', 'Delivered Lecture on \'JAX RPC- Web Services\' in the Faculty Development Programme during Dec 2012 organized by the Department of Computer Technology, MIT.', '2012'),
('ITF11', 'Delivered Lecture on \'Distributed Data Mining\' in the FDTP- TEQIP sponsored organized by the Department of CSE, Government College of Engineering, Bargur.', NULL),
('ITF12', NULL, NULL),
('ITF13', NULL, NULL),
('ITF14', NULL, NULL),
('ITF15', NULL, NULL),
('ITF01', 'Series of lectures on C programming for BC/MBC Computer training programme sponsored by Government of Tamilnadu.', '1999-2000'),
('ITF01', 'Lecture on Artificial Intelligence for Faculty Development programme conducted by the Department of Information Technology, MIT campus', '2003'),
('ITF03', 'Offered guest lectures regularly for the other departments of Anna University and its affiliated engineering colleges in the area of Computer Networks, Operating system, Wireless Networks,Mobile Computing, Multimedia Systems and etc', NULL),
('ITF08', 'Delivered a Lecture on \"Email Security\" in FDP in Cryptography and Network Security\r\norganized by Department of CT,Madras Institute of Technology, A, Chennai (21-Dec-2011)', NULL),
('ITF08', 'Delivered a Lecture on \"Network Attack and Threats\" in AICTE QIP STC on Recent\r\nDevelopments in Network Security organized by RCC, Anna University, Chennai\r\n(05-Mar-2009)', NULL),
('ITF11', 'Delivered a Lecture on \"Cloud security\" in Workshop on network security and challenges\r\norganized by Department of Electronics MIT campus Anna Univers, MIT (17-Aug-2015)', NULL),
('ITF11', 'Delivered a Lecture on \"Distributed systems, synchronization\" in fdtp on distributed systems\r\norganized by MIT campus Anna University , It MIT(30-Nov-2015)', NULL),
('ITF11', 'Delivered a Lecture on \"Cloud security and tools\" in Workshop on security issues in network\r\norganized by Saveetha University Department of ECE, Saveetha University (21-Apr-2016)', NULL),
('ITF11', 'Delivered a Lecture on \"Cloud computing and service oriented architecture \" in fdtp on grid and\r\ncloud computing organized by MIT Anna University , it dept (23-May-2016)', NULL),
('ITF10', 'Delivered a Lecture on \"Embedded Systems\" in Guest Lecture organized by KCG College of\r\nTechnology, Chennai (18-Mar-2013)', NULL),
('ITF10', 'Delivered a Lecture on \"Combinational Logic Design and Divide and Conquer Strategy\" in\r\nGuest Lecture organized by KCG College of Technology, Chennai (20-Aug-2013)', NULL),
('ITF10', 'Delivered a Lecture on \"Multi-Core Architectures - Graphics Processing Units\" in Guest Lecture\r\norganized by VIT University, Chennai (23-Sep-2014)', NULL),
('ITF09', 'Delivered a Lecture on \"Teaching Learning Process\" in Staff Orientation Programme on\r\nTeaching Learning Process organized by Loyola ICAM College of Engineering and\r\nTechnology, Nugambakkam, Chennai (01-Feb-2011).\r\n', NULL),
('ITF09', 'Delivered a Lecture on \"Elliptic Curve Cryptography\" in 4 Days Programme on Cryptography &\r\nNetwork Security organized by Computer Centre, MIT, MIT Chromepet (16-Sep-2011).', NULL),
('ITF09', 'Delivered a Lecture on \"Public key Cryptosystems & Hash Functions\" in FDP on Cryptography\r\n& Network Security organized by CT Dept, MIT, MIT Chromepet (19-Dec-2011).', NULL),
('ITF09', 'Delivered a Lecture on \"Mathematical Analysis of Recursive and Non-recursive Algorithms\" in\r\nStudent Seminar organized by Sri Sai ram Institute of Technology, Chennai (23-Jan-2015).', NULL),
('ITF09', 'Delivered a Lecture on \"Digital Image Processing and the Challenges Ahead\" in Student\r\nSeminar organized by ACT College of Engineering and Technology, Nelvoy, Maduranthagam\r\n(17-Mar-2015).', NULL),
('ITF09', 'Delivered a Lecture on \"Application of Fuzzy System\" in Hands-on Training Programme on\r\nArtificial Neural networks and Fuzzy logic using Matlab organized by MIT, Chennai\r\n(30-Jun-2016).\r\n', NULL),
('ITF29', 'Virtual Reality & Augmented Reality in Kalasalingam University on 25th January 2020.', NULL),
('ITF29', 'Virtual Reality and Its Applications in Thiagarajar College of Engineering, Madurai, October 2019.', NULL),
('ITF29', 'Virtual Reality and Its Applications in Thiagarajar College of Engineering, Madurai, September 2017.', NULL),
('ITF29', 'About Virtual Reality and Its Applications in Government College of Engineering, Tirunelveli, March, 2017.', NULL),
('ITF29', 'About Latex Documentation in CSIR sponsored seminar on \"Clean room Software Engineering and Zero Defect Software\" held at Vickram College of Engineering on 3rd October, 2012.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Main`
--

CREATE TABLE `Main` (
  `sno` int(11) NOT NULL,
  `FID` varchar(5) NOT NULL DEFAULT '',
  `name` varchar(25) DEFAULT NULL,
  `designation` varchar(32) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(49) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Main`
--

INSERT INTO `Main` (`sno`, `FID`, `name`, `designation`, `phone`, `email`, `status`) VALUES
(0, 'ITF01', 'Dr. B.Vinayaga Sundaram', 'Associate Professor', '6021', 'bvsundaram@annauniv.edu\r\nbvsundaram@mitindia.edu', 2),
(2, 'ITF02', 'Dr. V. Rhymend Uthariaraj', 'Professor', '6262', 'rhymend@annauniv.edu', 1),
(1, 'ITF03', 'Dr.Dhananjay Kumar', 'Professor and Head ', '6019', 'dhananjay@annauniv.edu, dhananjay@mitindia.edu', 1),
(4, 'ITF04', 'Dr.M.R.Sumalatha', 'Professor', '6312', 'sumalatha@annauniv.edu', 1),
(5, 'ITF05', 'Dr.Radha Senthil Kumar', 'Associate Professor', '6311', 'radhasenthil@annauniv.edu', 1),
(6, 'ITF06', 'Dr.P.Kola Sujatha', 'Assistant Professor [Sl Grade]', '6313', 'pkolasujatha@annauniv.edu', 1),
(9, 'ITF07', 'Dr. G.Rajesh', 'Assistant Professor', '6023', 'raajiimegce@gmail.com ,  gr@annauniv.edu', 1),
(10, 'ITF08', 'Dr. B.Lydia Elizabeth', 'Assistant Professor', '6025', 'lydiajohn@annauniv.edu', 1),
(8, 'ITF09', 'Dr. J.Dhalia Sweetlin', 'Assistant Professor [Sr Grade]', '6025', 'jdsweetlin@mitindia.edu', 1),
(7, 'ITF10', 'Dr. S.Umamaheswari', 'Assistant Professor [Sr Grade]', '6304', 'uma_sai@annauniv.edu', 1),
(11, 'ITF11', 'Dr. D Sangeetha', 'Assistant Professor', '6352', 'dsangeetha@mitindia.edu, dsangeetha@annaunniv.edu', 1),
(12, 'ITF12', 'M.Hemalatha', 'Assistant Professor', '6304', 'hemam@annauniv.edu', 1),
(13, 'ITF13', 'Dr. Sunil Retmin Raj', 'Visiting Faculty', '6025', 'retmin2001@yahoo.co.in, retmin2001@gmail.com', 1),
(14, 'ITF14', 'E.Pughazendhi', 'Teaching Fellow', '6375, 6314', 'pugazh.cse@gmail.com', 1),
(0, 'ITF15', 'Ashoka Rajan', 'Teaching Fellow', '6375, 6314', 'ashok.tiruchendur@gmail.com', 0),
(15, 'ITF16', 'Vivekanandan D', 'Teaching Fellow', '6375, 6314', 'vivek.acm@gmail.com', 1),
(16, 'ITF17', 'Lakshmi Harika', 'Teaching Fellow', '6352', 'lakshmi.harika558@gmail.com', 1),
(18, 'ITF19', 'S. Eliza Femi Sherley', 'Teaching Fellow', '6017', 'selizafemisherley@mitindia.edu', 1),
(0, 'ITF20', 'Gokuldhev M', 'Teaching Fellow', '6314', 'ksmdhev@gmail.com', 0),
(0, 'ITF22', 'M.Monisha Devi', 'Teaching Fellow', '6017', 'mmonishadevi.cse@gmail.com', 0),
(19, 'ITF23', 'P.Jayanthi', 'Teaching Fellow', '6017', 'pjayanthi@mitindia.edu', 1),
(20, 'ITF24', 'V.Premanand', 'Teaching Fellow', '6020', 'premanand_it@yahoo.com', 1),
(3, 'ITF25', 'Dr.P.AnandhaKumar', 'Professor', NULL, 'anandh@mitindia.edu', 1),
(26, 'ITF26', ' NathezhthaThangaraj', 'Teaching Fellow', '6017', 'nathezhtha31@gmail.com', 1),
(27, 'ITF27', 'Shanmuga priya R', 'Teaching Fellow', '', 'shanmurajendran2@gmail.com', 1),
(31, 'ITF28', 'Bala Gayathri D', 'Teaching Fellow', '', 'gayathribalansvg@gmail.com ', 1),
(29, 'ITF29', 'Manju T', 'Teaching Fellow', '', 'tvmanju27@gmail.com', 1),
(30, 'ITF30', 'Seethalakshmi P', 'Teaching Fellow', '', 'seethalaxmiperumal@gmail.com', 1),
(28, 'ITF31', 'Arulalan V', 'Teaching Fellow', '', 'arulalan@mitindia.edu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `other`
--

CREATE TABLE `other` (
  `FID` varchar(5) DEFAULT NULL,
  `FACULTYDEVELOPMENTPROGRAMMES` varchar(85) DEFAULT NULL,
  `COURSES` varchar(245) DEFAULT NULL,
  `YEAR` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `other`
--

INSERT INTO `other` (`FID`, `FACULTYDEVELOPMENTPROGRAMMES`, `COURSES`, `YEAR`) VALUES
('ITF11', 'Attended the Faculty Development Training Programme on \'Internet Programming\' at MIT.', NULL, NULL),
('ITF11', 'Attended the Faculty Development Training Programme on \'Data Structures\' at MIT.', NULL, NULL),
('ITF11', 'Organized the Faculty Development Training Programme on Computer Architecture at MIT.', NULL, NULL),
('ITF12', NULL, NULL, NULL),
('ITF13', NULL, NULL, NULL),
('ITF14', NULL, NULL, NULL),
('ITF15', NULL, NULL, NULL),
('ITF06', NULL, 'Participated in the two weeks AICTE-QIP programme on \'Recent Trends in Grid Computing\', organized by Department of Information Technology, Anna University Chennai, M.I.T. Campus, 3-15, March 2008.', 2008),
('ITF06', NULL, 'Participated in the 5-day short-term course on \'PHP Programming\' (Under the Auspices of Appadurai Chair), organized by Department of Information Technology, 10-14, December 2007.', 2007),
('ITF06', NULL, 'Participated in the short-term course on \'Web and Grid Services\', sponsored by AICTE under Quality Improvement Program, conducted by the Department of Information Technology, Madras Institute of Technology, Anna University, 16-29, November 2004.', 2004),
('ITF06', NULL, 'National Conference on Advanced computing (NCAC 2006)', 2006),
('ITF06', NULL, 'Grid and Pervasive Computing', 2006),
('ITF06', NULL, 'National Conferences on Advanced Computing (NCAC 2007)', 2007),
('ITF06', NULL, 'International Conference on Advances in Computing (ADCOM 2008)', 2008),
('ITF06', NULL, 'AICTE Staff Development Training Programme on Fundamentals of Nanoscience and Technology', 2011),
('ITF06', NULL, 'Mobile computing', 2008),
('ITF06', NULL, 'Workshop on Virtualization Techniques', 2009),
('ITF06', NULL, 'First International Conference on Advanced Computing (ICAC 2009)', 2009),
('ITF06', NULL, 'International Workshop on Data Mining for Web Intelligence (DMWI)', 2011),
('ITF06', NULL, 'FDP on Theory of Computation', 2011),
('ITF06', NULL, 'Two days Workshop on Simulation of Advanced Networks using NS-2 (WSAN\'11)', 2011),
('ITF09', NULL, 'Short Term Training Programme on Data Structures and Algorithms at Sree Sastha Institute of Engineering & Technology, 13th to 14th July 2004.', 2004);

-- --------------------------------------------------------

--
-- Table structure for table `Qualification`
--

CREATE TABLE `Qualification` (
  `FID` varchar(40) NOT NULL,
  `qualification` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Qualification`
--

INSERT INTO `Qualification` (`FID`, `qualification`) VALUES
('ITF01', 'B.E Electronics and Communication, Thiagarajar College of Engineering Madurai, 1984'),
('ITF01', 'M.E MIT campus Anna University, 1994'),
('ITF01', 'PhD Software Architecture, Anna University, 2008'),
('ITF02', 'PhD Computer Science and Engineering, thesis titled \'Algorithms for model reduction of linear programming problems and computational efficiency\' College of Engineering, Anna University 1999.'),
('ITF02', 'M.E. Computer Science and Engineering College of Engineering, Anna University'),
('ITF02', 'P.G.D.O.R INDUSTRIAL ENGINEERING, 1984'),
('ITF02', 'M.Sc Mathematics, St Xaviers College, Madurai Kamaraj University, 1983'),
('ITF03', 'Ph.D Mobile communication and Computing'),
('ITF03', 'M.Tech Communication Engineering, Pondicrerry Eng College, Pondicherry, 2001'),
('ITF03', 'M.E Industrial Electronics, Maharaja Sayajirao University, Baroda, 1999'),
('ITF03', 'U.G Electronics & Communication Engineering, The Institution of Engineers, Kolkata, 1997'),
('ITF04', 'B.E, M.E, Ph.D Information Retrieval'),
('ITF05', 'Ph.D I&CE, Title: Non-Redundant Compact Storage Structures for XML Databases, 2012'),
('ITF05', 'M.E CSE, College of Engg, Guindy, Anna University, 2000'),
('ITF05', 'B.E CSE, Bharathidasan University, Tiruchirapalli, 1993'),
('ITF07', 'PhD Wireless sensor networks'),
('ITF07', 'M.E Computer science and Engineering, 2007'),
('ITF07', 'B.Tech Information Technology, AVC college of Engineering, Anna University, 2005'),
('ITF08', 'Ph.D at Anna University, Area of Research: Trust and Cloud Security'),
('ITF08', 'M.E CSE, Karunya University, 2006'),
('ITF24', 'M.Tech Computer Science and Engineering ,Manakula Vinayagar Institute of Technology, 2015'),
('ITF24', 'B.Tech Information Technology ,Sri Manakula Vinayagar Engineering College, Pondicherry University, 2013'),
('ITF23', 'M.E Computer Science,College of Engineering, Guindy, Anna University, Chennai,[2002-2004].'),
('ITF23', 'B.E ECE,Govt. College of Tech.,Coimbatore.[ 1995-1999 ]'),
('ITF22', 'M.Tech Computer Science and Engineering,VelTech Dr.RR & Dr.SR Technical University,[2009-2011].'),
('ITF22', 'B.E Computer Science and Engineering,Avinashilingam University for Women.[2005-2009]'),
('ITF21', 'B.E Computer Science and Engineering,Sasurie College of Engineering, Perundurai,2010'),
('ITF21', 'M.Tech Information Technology,Anna University,MIT Campus,Chennai,2012'),
('ITF21', 'Ph.D(Pursuing) Wireless Multimedia Sensor Networks, Department of Information Technology, Anna University'),
('ITF20', 'M.E Computer Science&Engg,MNM Jain Engineering College,[2010-2012]'),
('ITF20', 'B.E Computer Science & Engg, K.S.R College of Engineering,(2006-2010)'),
('ITF19', 'M.E Multimedia Technology,College of  Engineering,Guindy,[2010-2012]'),
('ITF19', 'B.Tech Information Technology,Prince Shri Venkateshwara Padmavathy Engineering College,[2006-2010]'),
('ITF18', 'M.Tech Information Technology ,B.S.Abdur Rahman University,[2011-2013].'),
('ITF18', 'B.Tech Information Technology,Francis Xavier Engineering College,[2007-2011].'),
('ITF17', 'M.Tech CSE'),
('ITF16', 'B.E CSE,Anna University,MIT Campus, 2007,'),
('ITF16', 'M.Tech Information Technology,Anna University, MIT Campus,2011'),
('ITF16', 'Ph.D (Pursuing) Medical Image Processing,Anna University,'),
('ITF15', ' B.Tech IT,SSN College of Engineering , Chennai, 2006.'),
('ITF15', 'M.E. CSE,RVS College of Engineering and Technology, Trichy, 2011'),
('ITF15', 'Ph.D.( Pursuing )  Biometric Security,Anna University. '),
('ITF14', 'B.E CSE, Govt College of Engg, SALEM, 2008'),
('ITF14', 'M.E. CSE with SPLKN, CEG Campus, Anna University, 2010'),
('ITF14', 'PhD (Pursuing) Backup Computing,Anna University.'),
('ITF13', 'M.E Applied Electronics.'),
('ITF08', 'B.Tech IT,Karunya Institute of Technology/Bharathiar University, 2003'),
('ITF09', 'Ph.D(Pursing) at Anna University, Area of Research: Image processing, Data Mining'),
('ITF09', 'M.E CSE, Govt.College of Technogy/Bharathiar University, 2001'),
('ITF09', 'B.E CSE Karunya Institute of Technology/Bharathiar University, 1998'),
('ITF10', 'Ph.D'),
('ITF10', 'M.E Applied Electronics, M.B.A Systems'),
('ITF11', 'PhD at Anna University, Area of Research: Cloud security'),
('ITF11', 'M.E CSE, Sri Muthukumaran Inst of Tech/ Anna University, 2008'),
('ITF11', 'B.E CSE, Jaya Engg College/ University of Madras, 2001'),
('ITF12', 'PhD(Pursuing) Pattern Recognition,IIT Madras.'),
('ITF12', 'B.Tech Information Technology, Panimalar Engineering College, 2007-2011'),
('ITF12', 'M.E Communication & Networking, Madras Institute of Technology, 2011-2013'),
('ITF06', 'M.C.A'),
('ITF06', 'M.E Computer Science & Engineering'),
('ITF06', 'Ph.D'),
('ITF13', 'Ph.D at anna university, Area of research-Medical Image processing'),
('ITF25', 'M.E. in COMPUTER SCIENCE ENGINEERING , GCT COIMBATORE, BHARATHIAR\r\nUNIVERSITY, COIMBATORE (1996 - 1997).'),
('ITF25', 'Ph.D. in IMAGE PROCESSING from Faculty of INFORMATION AND COMMUNICATION\r\nENGINEERING, COLLEGE OF ENGINEERING , GUINDY, ANNA UNIVERSITY (2000 -\r\n2006).'),
('ITF26', 'Pursuing Ph.D. (Provisionally confirmed) in Anna University, Completed Course Works with 8.5 CGPA'),
('ITF27', 'M.E. in MULTIMEDIA TECHNOLOGY ,\r\nCollege of Engineering, Guindy, Anna University. (2017 - 2019).'),
('ITF27', 'B.E. in COMPUTER SCIENCE ENGINEERING,\r\nSt. Peter\'s College of Engineering and Technology,\r\nAnna University, Chennai. (2013 - 2017).\r\n'),
('ITF28', 'M.E. in COMPUTER SCIENCE AND ENGINEERING,Sri Shakthi Institute of Engineering and Technology, Coimbatore. (2012 - 2014)\r\n'),
('ITF28', 'B.E. in COMPUTER SCIENCE AND ENGINEERING, V.P.Muthiah Pillai Meenakshi Ammal Engineering college for women, Srivilliputur. (2008 - 2012)\r\n\r\n'),
('ITF29', 'Ph.D. (Pursuing) in Anna University, Chennai from 2017\r\n\r\n'),
('ITF29', 'M.E. in Computer Science and Engineering,Thiagarajar college of Engineering, Madurai(2010-2012)'),
('ITF29', 'B.E. in Computer Science and Engineering, Vins Christian college of Engineering in 2006-2010 \r\n'),
('ITF29', 'Higher Secondary Examination, Sacred Heart Matriculation Higher Secondary School in 2004 - 2006 \r\n'),
('ITF29', 'SSLC Board Examination, Sacred Heart Matriculation Higher Secondary School in 2004\r\n\r\n'),
('ITF30', 'M.Tech in Information Technology at Anna University Regional Centre Coimbatore. Anna University,  Chennai, 2011\r\n'),
('ITF30', 'B.Tech in  Information Technology at Mahendra Institute of Technology, Namakkal. Anna University, Coimbatore, 2013'),
('ITF31', 'Ph.D. in Information and Communication Engineering, Madras Institute of Technology Campus, Chennai- Pursuing\r\n\r\n'),
('ITF31', 'M.Tech. in Computer Science & Engineering,Manakula Vinayagar Institute of Technology, Puducherry in 2015\r\n\r\n'),
('ITF31', 'B.Tech. in Computer Science & Engineering, R V S College of Engineering & Technology, Karaikal,  Puducherry in 2013\r\n\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `Research`
--

CREATE TABLE `Research` (
  `FID` varchar(5) DEFAULT NULL,
  `DETAILSOFRESEARCH` varchar(169) DEFAULT NULL,
  `YEAR` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Research`
--

INSERT INTO `Research` (`FID`, `DETAILSOFRESEARCH`, `YEAR`) VALUES
('ITF01', NULL, NULL),
('ITF02', NULL, NULL),
('ITF03', 'Video Streaming in 3G Wireless Network for Tele-medicine Applications \', funded by University Grant Commission, Govt. of India, New Delhi.', '2012'),
('ITF03', 'Development of Mobile and Pervasive Computing Systems\', University Grant Commission, Govt. of India, New Delhi under DRS-SAP.', '2012'),
('ITF03', 'Enhancing the Performance of Mobile Device Using Cloud\', funded by Anna University, Chennai.', '2014'),
('ITF03', 'Automated Tele Video Surveillance Over Internet\', funded by Anna University, Chennai.', '2014'),
('ITF03', 'Automated Tele Video Surveillance Over Internet\', funded by Anna University, Chennai.', '2014'),
('ITF03', 'Android Plus: Easing the User Interaction and Helping Illiterates\' ,funded by Anna University', '2012'),
('ITF03', '\'Intellisense: Human Computer Interaction Using Hand Gestures\', funded by Anna University, Chennai.', '2011'),
('ITF03', 'Guided 58 U.G. and 24 P.G. final year student projects.', NULL),
('ITF03', 'Presently supervising 10 Ph.Ds and 02 M.S.(By Research) students', NULL),
('ITF04', 'Provided Guidance for the Integrating Wireless Sensor Networks with Web Services for IP-based systems', NULL),
('ITF04', 'Provided Guidance for Data Base Transactions and scheduling in Mobile Ad Hoc Networks', NULL),
('ITF04', 'Provided Guidance for Improving Deduplication strategies in Cloud Computing', NULL),
('ITF04', 'Provided Guidance for the Integration of Wireless Sensor Networks with cloud based Community-centric Application', NULL),
('ITF04', 'Provided Guidance for the Effective Storage services and Data Security in Cloud Computing', NULL),
('ITF04', 'Provided Guidance for Scaling Online Internet Applications in Distributed Systems by Data Aware Partitioning and Replication', NULL),
('ITF04', 'Provided Guidance for the Cooperative Communication Aware Relay Node Selection for Mobile Ad-hoc Networks and Cognitive Mobile Ad-hoc Networks', NULL),
('ITF04', 'Provided Guidance for Video Surveillance Over Internet', NULL),
('ITF04', 'Provided Guidance for Multitenant Testing over Social Networks', NULL),
('ITF04', 'Review committee Member for Airccse Journals \"Wireilla Net Solutions Pvt Ltd, Victoria, Australia Nnn Net Solutions Private Limited, Tamil Nadu, India\"', NULL),
('ITF04', 'Advisor in the Interview Board , year 2012 for the Government of INDIA, Staff Selection Commission, Southern Region, Chennai.', NULL),
('ITF04', 'Review committee Member, Organizing Committee member ICRTIT 2011, ICRTIT 2012, ICoAC 2011, ICRTIT 2011, ICSCN 2008, ICSCN 2007 Conferences at MIT, Anna University', NULL),
('ITF04', 'Member of the Doctoral committee for PhD and MS candidates Anna University', NULL),
('ITF04', 'Member of the Doctoral committee for PhD candidates at SRM University', NULL),
('ITF04', 'FIST-Setting up Sensor Network and Cloud Computing Lab., DST, (Consultancy Project, Investigator, Rs. 51 Lakhs),', '2011-2013'),
('ITF04', 'Development of an Intrusion Detection System and Development of Semantic Cache in Query Processing, Xambala Inc, USA, (Consultancy Project, Investigator, Rs. 8.8 Lakhs).', '2006-2008'),
('ITF04', 'Multicloud Deployment of Computing Clusters for Health Care System.', NULL),
('ITF04', 'Development of Intelligent Forensic Investigation Tool in Cloud Computing Environment.', NULL),
('ITF04', 'Geo Distributed Social Service System (GDSS)', NULL),
('ITF05', NULL, NULL),
('ITF06', NULL, NULL),
('ITF07', NULL, NULL),
('ITF08', NULL, NULL),
('ITF09', NULL, NULL),
('ITF10', NULL, NULL),
('ITF11', NULL, NULL),
('ITF12', 'Provided giudance for M.E./M.Tech projects', NULL),
('ITF13', NULL, NULL),
('ITF14', NULL, NULL),
('ITF15', NULL, NULL),
('ITF16', NULL, NULL),
('ITF17', NULL, NULL),
('ITF18', NULL, NULL),
('ITF19', NULL, NULL),
('ITF20', NULL, NULL),
('ITF21', NULL, NULL),
('ITF22', NULL, NULL),
('ITF23', NULL, NULL),
('ITF24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Research_guidance`
--

CREATE TABLE `Research_guidance` (
  `FID` varchar(5) DEFAULT NULL,
  `Detailsofstudentsandtopic` varchar(116) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Research_guidance`
--

INSERT INTO `Research_guidance` (`FID`, `Detailsofstudentsandtopic`) VALUES
('ITF03', 'Guided 58 U.G. and 24 P.G. final year student projects.'),
('ITF03', 'Presently supervising 10 Ph.Ds and 02 M.S.(By Research) students'),
('ITF04', 'Integrating Wireless Sensor Networks with Web Services for IP-based systems'),
('ITF04', 'Data Base Transactions and scheduling in Mobile Ad Hoc Networks'),
('ITF04', 'Improving Deduplication strategies in Cloud Computing'),
('ITF04', 'Integration of Wireless Sensor Networks with cloud based Community-centric Application'),
('ITF04', 'Effective Storage services and Data Security in Cloud Computing'),
('ITF04', 'Scaling Online Internet Applications in Distributed Systems by Data Aware Partitioning and Replication'),
('ITF04', 'Cooperative Communication Aware Relay Node Selection for Mobile Ad-hoc Networks and Cognitive Mobile Ad-hoc Networks'),
('ITF04', 'Video Surveillance Over Internet'),
('ITF04', 'Multitenant Testing over Social Networks'),
('ITF02', 'Number of Ph.D Scholars Guided : 23'),
('ITF02', 'Number of Ph.D Scholars Guiding : 12\n'),
('ITF02', 'Number of M.S (By Research) Students Guided : 1'),
('ITF02', 'Number of M.E./ M.Tech. Projects Guided : 75\n'),
('ITF02', 'Number of M.S (By Research) Students Guiding as Joint-Supervisor : 1'),
('ITF08', 'Guided 8 M.E./ M.Tech. Projects\r\n'),
('ITF08', 'Guiding 1 M.E./ M.Tech. Project'),
('ITF07', 'Guided 8 M.E./ M.Tech. Projects'),
('ITF07', 'Guiding 2 M.E./ M.Tech. Projects'),
('ITF06', 'Guided 18 M.E./ M.Tech. Projects'),
('ITF06', 'Guiding 2 M.E./ M.Tech. Projects'),
('ITF22', 'Guiding 1 M.E/M.Tech Project'),
('ITF19', 'Guiding 1 M.E/M.Tech Project'),
('ITF25', 'Number of Ph.D Scholars Guided : 15'),
('ITF25', 'Number of Ph.D Scholars Guiding : 4\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `Review`
--

CREATE TABLE `Review` (
  `FID` varchar(5) DEFAULT NULL,
  `Infoaboutthereview` varchar(212) DEFAULT NULL,
  `Period` varchar(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Review`
--

INSERT INTO `Review` (`FID`, `Infoaboutthereview`, `Period`) VALUES
('ITF05', 'International Conference on Advance Computing (ICAC 2009), Chennai, 12-15th December 2009.', '12-15th December 2009'),
('ITF05', 'International Conference on Recent Trends in Information Technology (ICRTIT2011), Chennai, June 3-5th, 2011.', 'June 3-5th, 2011'),
('ITF05', 'First International Conference in Advances in Computing and Information Technology, July 2011, Chennai.', 'Jul-11'),
('ITF05', 'International Conference on Recent Trends in Information Technology (ICRTIT2012), Chennai, April 19-21, 2012.', 'April 19-21, 2012'),
('ITF05', 'International Conference on Recent Trends in Information Technology (ICRTIT2013), Chennai, July 25-27, 2013.', 'July 25-27, 2013'),
('ITF05', 'IET Software International Conference on Recent Trends in Information Technology (ICRTIT2014), Chennai, April 10-12, 2014.', 'April 10-12, 2014'),
('ITF05', 'International Journal of Fuzzy System.TIIS : KSII Transaction on Internet and information system, \'Searching for Formulae Written in MathML Using Plain Text Queries\', Authors, Ko, Youngioong; yang, seon,Feb 2014.', 'Feb-14'),
('ITF05', '6th International Conference on Advance Computing, ICoAC Chennai, 17-19 December, 2014', '17-19 December, 2014'),
('ITF03', 'Journal of Internet Technology, Taiwan Academic Network, Ministry of Education, Taipei, Taiwan', NULL),
('ITF03', 'Journal of Communications,Academy Publisher, Finland', NULL),
('ITF03', 'IEEE Transaction on Multimedia, IEEE Communications Society, USA', NULL),
('ITF03', 'Journal of Network and Computer Applications, Elsevier, Netherlands', NULL),
('ITF03', 'Journal of Interactive Mobile Technologies,International Association of Online Engineering, Austria', NULL),
('ITF03', 'Recent Patents on Electrical Engineering,Bentham Science Publishers, USA', NULL),
('ITF03', 'Journal of Electronic Imaging, Bellingham WA, USA', NULL),
('ITF03', 'Journal of Network and Computer Applications, Elsevier, Netherlands', NULL),
('ITF03', 'IEEE GLOBCOM2009 held at Honolulu, Hawaii, USA during 6-10 Dec 2009.', NULL),
('ITF03', 'IEEE PIMRC 2010 held at Istanbul, Turkey, during 26 to 30 Sep 2010.', NULL),
('ITF03', 'Australasian Telecommunication Networks and Applications Conference, held at Auckland, New Zealand, during Oct 31, 2010 - Nov 3, 2010.', NULL),
('ITF03', '4th IEEE International Conference on Computer Science and Information Technology, Chengdu, China during June 10 - 12, 2011.', NULL),
('ITF03', 'International Conference on Recent Trends in Information Technology (ICRTIT2011), Chennai, India', NULL),
('ITF03', 'Fourth International Conference on Advanced Computing (ICoAC 2012), Chennai, India', NULL),
('ITF03', '3rd IEEE International Advance Computing Conference (IACC-2013), Ghaziabad, India', NULL),
('ITF03', 'International Conference on Computational Intelligence and Communication Networks (CICN 2013), Mathura, India, September 27 to 29, 2013.', NULL),
('ITF03', '2013 IEEE Conference on Clean Energy and Technology (CEAT 2013), Malaysia, November 18-20, 2013.', NULL),
('ITF04', 'Review committee Member for Airccse Journals \"Wireilla Net Solutions Pvt Ltd, Victoria, Australia Nnn Net Solutions Private Limited, Tamil Nadu, India\"', NULL),
('ITF04', 'Advisor in the Interview Board , year 2012 for the Government of INDIA, Staff Selection Commission, Southern Region, Chennai.', '2012'),
('ITF04', 'Review committee Member, Organizing Committee member ICRTIT 2011, ICRTIT 2012, ICoAC 2011, ICRTIT 2011, ICSCN 2008, ICSCN 2007 Conferences at MIT, Anna University', '2011'),
('ITF04', 'Member of the Doctoral committee for PhD and MS candidates Anna University', NULL),
('ITF04', 'Member of the Doctoral committee for PhD candidates at SRM University', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Scholars`
--

CREATE TABLE `Scholars` (
  `FID` varchar(7) NOT NULL,
  `StudentName` varchar(50) NOT NULL,
  `RegisterNo` varchar(15) NOT NULL,
  `Area` varchar(200) NOT NULL,
  `Status` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Scholars`
--

INSERT INTO `Scholars` (`FID`, `StudentName`, `RegisterNo`, `Area`, `Status`) VALUES
('ITF02', 'Dr.R.S.Bhuvaneswaran', '99.49.28', 'Collision Avoidance and Energy Efficient Protocol solution to the distributed System of Wireless Sensor Networks', 'Completed (2003)'),
('ITF02', 'Dr.AntonyIrudyaraj', '95.38.07', 'Evaluation of fault class testing strategies specification based testing', 'Completed (2004)'),
('ITF02', 'Dr.D.Jayashree(MS)', '2001388715', 'New re-routing link-state algorithm using dominating set', 'Completed (2004)'),
('ITF02', 'Dr. R.Elijah Blessing Vinoth', '2001399711', 'Design and Analysis of Secure Multicast Models for Wired and Mobile Networks', 'Completed (2005)'),
('ITF02', 'Dr.S.Kanmani', '99.51.30', 'Fault Prediction models using Object Oriented Metrics', 'Completed (2006)'),
('ITF02', 'Dr.M.Aramudhan', '2003419714', 'Quality of Services in Networks Heterogeneous', 'Completed (2008)'),
('ITF02', 'Dr.Udyakumar', '20033719745', 'New Heuristic Algorithm for solving large scale Linear Programming Problems', 'Completed (2010)'),
('ITF02', 'Dr.R.Sumithra', '200371942', 'Crypt Analysis of Encryption Algorithm', 'Completed (2010)'),
('ITF02', 'Dr.R.Gunasekaran', '2006439104', 'Quality of Service on Adhoc Networks', 'Completed (2010)'),
('ITF02', 'Dr.N.Malarvizhi', '2007419224', 'Parallel Computing', 'Completed (2011)'),
('ITF02', 'Dr.D.George Washington', '200241970', 'Methods and Models for Characterization and Optimization of Counselling Procedure for Engineering Admissions', 'Completed (2012)'),
('ITF02', 'Dr.K.Gopalakrishnan', '2714419757', 'Prevention of selfish node misbehavior in wireless mobile adhoc network', 'Completed (2012)'),
('ITF02', 'Dr.K.Vidya', '2006439709', 'Algebraic Theory of Network Routing Techniques', 'Completed (2012)'),
('ITF02', 'Dr.A.John Prakash', '2007419234', 'Security in Adhoc Networks', 'Completed (2013)'),
('ITF02', 'Dr.B.Vanathi', '2823419102', 'Belief Network for Context - Aware Computing', 'Completed (2013)'),
('ITF02', 'Dr.V.P.Nanthini', '2824719756', 'Intelligent Information System for Effective Knowledge Management', 'Completed (2013)'),
('ITF02', 'Dr.Vijayakumar G. Das', '2006339703', 'Load Balancing in Distributed Systems', 'Completed (2014)'),
('ITF02', 'Dr.P.ShunmugaPerumal', '2914419751', 'Localization in 3D wireless Sensor Networks', 'Completed (2014)'),
('ITF02', 'Dr.R.Varalakshmi', '2823719759', 'Secure multicast queue distribution for Adhoc Networks', 'Completed (2014)'),
('ITF02', 'Dr. Kayarvizhy N(JS)', '20084022005', 'Object Oriented Metrics for the perdition of fault prone classes using software quality models', 'Completed (2014)'),
('ITF02', 'Dr.J.Valarmathi', '2007419115', 'Security issues on Pervasive/ Ubiquitous Computing', 'Completed (2015)'),
('ITF02', 'Dr.Devi', '2723419715', 'Reliable route directory and seamless route maintenance mechanism for AODU routing protocol', 'Completed (2016)'),
('ITF02', 'Dr. P. Mahendran(JS)', '20085022001', 'A Study on the Analytical Procedure for    Analysis of Factors influencing Engineering Institution Selection', 'Completed (2014)'),
('ITF02', 'Ms.M.Anitha', '2824419140', 'Applying game theory for co-operation of Nodes in Adhoc Networks', 'Thesis Submitted'),
('ITF02', 'Ms.B.Lydia Elizabeth', '2824419701', 'A Novell Method for detecting and Isolating malicious nodes in Mobile Adhoc Networks', 'Thesis Submitted'),
('ITF02', 'Ms. Kishori (JS)', '20107012002', 'A study to identify factors contributing success and failure of the employees in cross cultural work environment', 'Confirmation'),
('ITF02', 'Dr.Gokulnath.K', '1114419721', 'Trust models for Cloud Environment', 'Completed (2016)'),
('ITF02', 'ChitraDevi.D', '1223419101', 'Load Balancing Algorithm for Cloud Environment', 'Confirmation'),
('ITF02', 'P.S.Abi', '1213419897', 'Coalescing QoS with Fortification of MANET against Security Hazards', 'Course Work'),
('ITF02', 'S.Mary Virgil Nithya', '1423419285', 'Integrity of Shared Data in the Cloud', 'Confirmation'),
('ITF02', 'N.Thilagavathi', '1424419786', 'Efficient Load Balancig Scheme for Bigdata Analytics', 'Course Work'),
('ITF02', 'S.Sridevi', '1525419581', 'Efficient Load Balancig Scheme for Bigdata Analytics', 'Course Work'),
('ITF02', 'R.Madhura', '1522419958', 'Resource Management and Security', 'Course Work'),
('ITF02', 'DeepikaRoselind', '1523419982', 'Marine Environment Monitoring -Analysis of an Adaptive,Scalable and an Energy Efficiency WSN System', 'Course Work'),
('ITF02', 'Arun Prem Santh J (JS)', '1514419736', 'Energy Efficient and Secure UAV guiding mechanism in Military Sensor Networks', 'Course Work'),
('ITF02', 'Subha M (JS)', '1523419737', 'Vision for All : Artificial Wireless Retina System to Restore Vision for blind retinas', 'Course Work'),
('ITF02', 'Irene', '1624419317', 'Human Activity Recognition System using Video Analytics', 'Course Work'),
('ITF02', 'Sathya Priya', '16254197192', 'Enhancing reliability for Big Data framework', 'Course Work'),
('ITF03', 'A. R. Revathi', '1124439131', 'Video Streaming', 'Registration Confirmed'),
('ITF03', 'L. Arun Raj', '1114439116', 'Video Streaming Network', 'Registration Confirmed'),
('ITF03', 'A. Srinivasan ', '1112439107', 'Video Streaming Network', 'Registration Confirmed'),
('ITF03', 'Hiran Kumar Singh', '1115439722', 'Cognitive Radio Networks', 'Thesis Submitted'),
('ITF03', 'L. Sindhia', '1122439715', 'Video Surveillance', 'Registration Confirmed'),
('ITF03', 'P. Shyamala Bharathi', '1224339119', 'Cognitive Radio Networks', 'Registration Confirmed'),
('ITF03', 'R. Saravanan', '1214439872', 'Video Surveillance', 'Registration Confirmed'),
('ITF03', 'M. Vijaya(M.S)', '1325438703', 'Video Streaming Network', 'Coursework  Completed'),
('ITF03', 'Sudha A', '1424439282', 'Cognitive Radio Networks', 'Registration Confirmed'),
('ITF03', 'Aswinth J', '1515439199', 'Wireless Multimedia Sensor', 'Coursework'),
('ITF03', 'Sanjay Kumar Suman', '271441970', 'A Game Theoretic Approach for Power Management and Interference Reduction in Wireless AdHoc Networks', 'Completed'),
('ITF03', 'Kalai Selvi', '1125438102', 'Machine Learning based Efficient Resource Planning in Cognitive Radio System', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `Seminar`
--

CREATE TABLE `Seminar` (
  `FID` varchar(6) DEFAULT NULL,
  `DETAILSOFSEMINAR` varchar(199) DEFAULT NULL,
  `PERIOD` int(4) DEFAULT NULL,
  `CONDUCTEDATTENDEDORGANISED` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Seminar`
--

INSERT INTO `Seminar` (`FID`, `DETAILSOFSEMINAR`, `PERIOD`, `CONDUCTEDATTENDEDORGANISED`) VALUES
('ITF01', 'AICTE-ISTE STTP on Avionics Systems From 18.01.2000 to 30.01.2000.', 2000, 'ATTENDED'),
('ITF01', 'ISTE STTP on Automotive Electronics for fuel economy and pollution control 16.06.2001 to 30.06.2001.', 2001, 'ATTENDED'),
('ITF01', 'Recent trends in wireless Technologies From 18.04.2003 to 18.04.2003.', 2003, 'ATTENDED'),
('ITF01', 'Webservices and applications development using C# and .Net frameworks From 10.11.2003 to 24.11.2003.', 2003, 'ATTENDED'),
('ITF01', 'Re-Engineering Teaching skills. From 06.04.2004 to 07.04.2003.', 2003, 'ATTENDED'),
('ITF02 ', NULL, NULL, NULL),
('ITF03', 'IEEE Lecture Series on \'Antennas for Mobile Communication Base Station\'', 2011, 'ATTENDED'),
('ITF03', 'One Day IEEE Seminar on \'Emerging Trends in Communication Systems and Technologies\'', 2010, 'ATTENDED'),
('ITF03', 'National Seminar on \'Research Challenges in Wireless Sensor Networks\'', 2010, 'ATTENDED'),
('ITF03', 'One Day Seminar on \'Recent Trend in Image and Video Processing\'', 2010, 'ATTENDED'),
('ITF03', 'Technical Education Quality Improvement Program on \'Virtualization Techniques\'', 2009, 'ATTENDED'),
('ITF03', '2008 Winter School on \'Speech and Audio Processing (WiSSAP)\'', 2008, 'ATTENDED'),
('ITF03', 'Seminar on \'Security and Messaging (SnM)\'', 2004, 'ATTENDED'),
('ITF03', 'National Seminar on \'Convergence of Technology By 2010\'', 2001, 'ATTENDED'),
('ITF04', 'M.R.Sumalatha, has participated in National Seminar on \'Security and Messaging\' at MIT, Anna university held during 15,oct, 2004', 2004, 'ATTENDED'),
('ITF04', 'Coordinator for the \'Student Innovative Projects Motivational seminar\' held on March 5th at MIT campus, CTDT, Anna University', NULL, 'ORGANISED'),
('ITF04', 'Coordinator for the \'Student Innovative Projects Motivational seminar\' held on March 5th at MIT campus, CTDT, Anna University', NULL, 'ORGANISED'),
('ITF04', 'M.R.Sumalatha, has participated in National Seminar on \'Security and Messaging\' at MIT, Anna university held during 15,oct, 2004', 2004, 'ATTENDED'),
('ITF05', NULL, NULL, NULL),
('ITF06', 'Attended a seminar on \'Security and Messaging - SnM 2004\', conducted jointly by Microsoft and Department of Information Technology, Madras Institute of Technology, Anna University, 15th October 2004.', 2004, 'ATTENDED'),
('ITF07', NULL, NULL, NULL),
('ITF08', NULL, NULL, NULL),
('ITF09', NULL, NULL, NULL),
('ITF10', NULL, NULL, NULL),
('ITF11', NULL, NULL, NULL),
('ITF12', NULL, NULL, NULL),
('ITF13', NULL, NULL, NULL),
('ITF14', NULL, NULL, NULL),
('ITF15', NULL, NULL, NULL),
('ITF16', NULL, NULL, NULL),
('ITF17', NULL, NULL, NULL),
('ITF18', NULL, NULL, NULL),
('ITF19', NULL, NULL, NULL),
('ITF20', NULL, NULL, NULL),
('ITF21', NULL, NULL, NULL),
('ITF22', NULL, NULL, NULL),
('ITF23', NULL, NULL, NULL),
('ITF24', NULL, NULL, NULL),
('ITF31', 'Attended AICTE Sponsored two days national seminar on \"Impact of Biometric Security Using Image Processing\" at Manakula Vinayagar Institute of Technology, Puducherry.', 2013, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Session_chair`
--

CREATE TABLE `Session_chair` (
  `FID` varchar(5) DEFAULT NULL,
  `Detailsofsessionchair` varchar(109) DEFAULT NULL,
  `Period` varchar(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Session_chair`
--

INSERT INTO `Session_chair` (`FID`, `Detailsofsessionchair`, `Period`) VALUES
('ITF05', 'International Conference on Advance Computing (ICAC 2009), Chennai, 12-15th December 2009.', '12-15th December 2009'),
('ITF05', 'International Conference on Recent Trends in Information Technology (ICRTIT2011), Chennai, June 3-5th , 2011.', 'June 3-5th , 2011'),
('ITF05', 'First International Conference in Advances in Computing and Information Technology, July 2011, Chennai.', 'Jul-11'),
('ITF05', 'International Conference on Recent Trends in Information Technology (ICRTIT2012), Chennai, April 19-21, 2012.', 'April 19-21, 2012'),
('ITF05', 'International Conference on Recent Trends in Information Technology (ICRTIT2013), Chennai, July 25-27, 2013.', 'July 25-27, 2013'),
('ITF05', 'International Conference on Recent Trends in Information Technology (ICRTIT2014), Chennai, April 10-12, 2014.', 'April 10-12, 2014'),
('ITF05', '6th International Conference on Advance Computing, ICoAC, Chennai, 17-19 December, 2014.', '17-19 December, 2014'),
('ITF05', 'International Conference on Recent Trends in Information Technology (ICRTIT2016), Chennai,April 8 - 9, 2016.', 'April 8 - 9, 2016');

-- --------------------------------------------------------

--
-- Table structure for table `student_record`
--

CREATE TABLE `student_record` (
  `student_id` varchar(20) NOT NULL,
  `student_batch_id` varchar(10) NOT NULL,
  `student_fa_id` varchar(10) NOT NULL,
  `student_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_record`
--

INSERT INTO `student_record` (`student_id`, `student_batch_id`, `student_fa_id`, `student_status`) VALUES
('2015506106', 'B1519', 'ITF09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `TABLE 3`
--

CREATE TABLE `TABLE 3` (
  `FID` varchar(5) DEFAULT NULL,
  `AWARD DETAILS` varchar(140) DEFAULT NULL,
  `YEAR` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE 3`
--

INSERT INTO `TABLE 3` (`FID`, `AWARD DETAILS`, `YEAR`) VALUES
('ITF17', 'Presented a paper on ?BLU_RAY? technology at National Level BYTE QUEST-07.', NULL),
('ITF17', '?Presented a paper on ??REDTACTON? ?at National Level CONCOURS-08.?', NULL),
('ITF17', '?Participation ?in ?ROCKETRY? at National Level CONCOURS-08', NULL),
('ITF18', 'Awarded as First Rank Holder in the Academic year 2012?2013 by B.S.Abdur Rahman University, Vandalur, Chennai for excellence in proficiency.', NULL),
('ITF18', 'Launched?? a project?? named?? ?IP?? camera?? security?? system??? in Indian Institute?? of?? Technology, Guwahati.', NULL),
('ITF18', 'Won?? 1st?? prize?? for?? paper? presentation?? in?? Government? College? of Engineering, Tirunelveli.', NULL),
('ITF18', 'Won?? 1st?? prize?? in?? project?? presentation?? contest?? held?? in?? Angel?? Engineering? College,? Tirupur.', NULL),
('ITF18', 'Won? 2nd? prize?? in?? software?? designing?? contest?? in?? G.K.M?? College?? of?? Engineering, Chennai.', NULL),
('ITF18', 'Won?? 2nd?? prize?? for?? paper? presentation?? in?? SCMS?? School?? of?? Engineering and? Technology,? Ernakulam,? Kerala.', NULL),
('ITF18', 'Won? 3rd? prize? in? C-rogramming? Contest?? in? Francis? Xavier? Engineering College, Tirunelveli.', NULL),
('ITF14', 'Ranked as District 2nd in +2 Annual Examinations under rural level (Villupuram Dist).', NULL),
('ITF04', '?Name & brief resume included in World\'s Whose Who published by MARQUIS, USA in 27th Edition, for the year 2010', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Workshop`
--

CREATE TABLE `Workshop` (
  `FID` varchar(5) DEFAULT NULL,
  `Workshopdetails` varchar(329) DEFAULT NULL,
  `Period` varchar(84) DEFAULT NULL,
  `ATTENDEDORGANISEDCONDUCTED` varchar(28) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Workshop`
--

INSERT INTO `Workshop` (`FID`, `Workshopdetails`, `Period`, `ATTENDEDORGANISEDCONDUCTED`) VALUES
('ITF17', 'Participated in Workshop on Cryptography Algorithms on Banking', 'Mar-11', NULL),
('ITF19', 'Workshop On Computational Intelligence for Big Data organized by Department of Information Technology, Anna University, MIT Campus', '7-8 Feb 2014', NULL),
('ITF18', 'Attended a two day workshop on \'Computational Intelligence for Big Data\' held on 7th and 8th of February 2014 at Department of Information Technology, MIT Campus Anna University', '7-8 Feb 2014', NULL),
('ITF18', 'Attended a two day workshop on \'Software Testing\' held on 3rd and 4th of October 2011 at B.S.Abdur Rahman University', '3-4 October 2011', NULL),
('ITF13', 'Participated in a National level workshop on \"Hands-on Training Programme on Artificial Neural Network and Fuzzy Logic using MATLAB\" organized by Department of Information Technology, MIT Campus, Anna University, India ', '29-Jan-2016 to 31-Jan-2016', NULL),
('ITF14', 'National Workshop on ;Data Mining Techniques\' at\nM.I.T. Campus, Anna University, Chromepet, Chennai.', '27 th and 28 th March 2012', NULL),
('ITF13', 'Participated in a National level workshop on \"Workshop on Pattern Classification,Image Segmentation and Image Registration \" organized by Saveetha School of Engineering, India ', '24-Oct-2015.', NULL),
('ITF17', 'Participated in Workshop', '23rd Apr, 2011', NULL),
('ITF12', 'National level workshop on \"Hands-on Training Programme on Artificial Neural Network and Fuzzy Logic using MATLAB\" organized by Department of Information Technology, MIT Campus, Anna University, India from 29-Jan-2016 to 31-Jan-2016.', '2016', 'ATTENDED'),
('ITF12', 'National level workshop on \"Workshop on Pattern Classification,Image Segmentation and Image Registration \" organized by Saveetha School of Engineering, India from 24-Oct-2015 to 24-Oct-2015.', '2015', 'ATTENDED'),
('ITF12', 'National level workshop on \"Computational Intelligence for Big Data organized by Department of Information Technology\" organized by Anna University, MIT Campus, India from 07-Feb-2014 to 08-Feb-2014.', '2014', 'ATTENDED'),
('ITF12', 'International level workshop on \"Databases in Cloud - An Avant Garde\" organized by Anna University, MIT Campus, India from 10-Feb-2014.', '2014', 'ATTENDED'),
('ITF12', 'International level conference on \"Indian Conference on Computer Vision, Graphics and Image Processing \" organized by IISc, Bangalore, India from 14-Dec-2014 to 17-Dec-2014.', '2014', 'ATTENDED'),
('ITF09', 'Workshop on Soft Computing during 21st and 22nd of March 2012.', '2012', 'CONDUCTED'),
('ITF11', 'Workshop on \'Cloud Computing\' during Sep 2012 at MIT.', '2012', 'ATTENDED'),
('ITF11', 'Workshop on \'Network Security at CEG.', '2012', 'ATTENDED'),
('ITF11', 'Workshop on \'National e-Governance plan\' during Dec 2012 at MIT.', '2012', 'ATTENDED'),
('ITF11', 'Organized a \'Three Days workshop on Recent Developments in Neural Networks\' during October 2012in the Department of Information Technology at MIT, Anna University.', '2012', 'ORGANISED'),
('ITF15', 'Workshop on Simulation of Advanced Networks using NS-2 ( WSAN12) 6,7 Jan 2012', '2012', 'ATTENDED'),
('ITF15', 'FDP on \'Sustainable Infrastructure\' held on 13th Jan 2012 at TCS -Siruseri.', '2012', 'ATTENDED'),
('ITF11', 'Workshop on \'Data Mining and Web intelligence\' during Jan 2011 at MIT.', '2011', 'ATTENDED'),
('ITF11', 'Workshop on \'NS2-Network Simulator\' during Dec 2011 at MIT.', '2011', 'ATTENDED'),
('ITF11', 'Workshop on \'Recent Trends in Wireless Sensor Networks\' at MIT.', '2011', 'ATTENDED'),
('ITF15', 'Research Methodologies in Computer Science and Engineering, 24 and 25th Sep 2011', '2011', 'ATTENDED'),
('ITF15', 'Workshop on Simulation of Advanced Networks using NS-2 ( WSAN12 ) 2,3 Dec 2011', '2011', 'ATTENDED'),
('ITF09', 'Mission 10 X Faculty Empowerment Programme during June 21st to June 25th 2010', '2010', 'CONDUCTED'),
('ITF06', 'Workshop on “Virtualization Techniques” under TEQIP, organized by Department of Information Technology, Anna University Chennai, MIT Campus, 8-9, April 2009.', '2009', 'ATTENDED'),
('ITF09', 'National Level workshop on Wired and Wireless Network Simulation Tool at St.Joseph\'s College of Engineering on 12th August 2008', '2008', 'ATTENDED'),
('ITF06', 'Participated in the “National workshop on Ad-hoc Networks”, organized by the Department of Information Technology, Anna University, M.I.T. Campus, on 22-23, March 2007.', '2007', 'ATTENDED'),
('ITF06', 'Participated in the two-days workshop on “Grid and Pervasive Computing” (Under TEQIP), conducted by the Department of Information Technology, Madras Institute of Technology, Anna University,  on 16th and 17th November 2006.', '2006', 'ATTENDED'),
('ITF09', 'National Workshop on Pervasive Computing & Adhoc Networks at SVCE, 27th to 28th January 2006.', '2006', 'ATTENDED'),
('ITF06', 'Participated in the workshop on “Grid Computing”, conducted by the Department of Information Technology, Madras Institute of Technology, Anna University, on 5th and 6th August 2004.', '2004', 'ATTENDED'),
('ITF17', 'Participated in Workshop on Genomic Signal Processing', '19th and 20 Mar, 2011', NULL),
('ITF13', 'Participated in a International level conference on \"Indian Conference on Computer Vision, Graphics and Image Processing \" organized by IISc, Bangalore, India ', '14-Dec-2014 to 17-Dec-2014.\n14-Dec-2014 to 17-Dec-2014.\n14-Dec-2014 to 17-Dec-2014.\n', NULL),
('ITF14', 'National Workshop on \'Image and Video Analytics Using Matlab\' at M.I.T. Campus, Anna University, Chromepet, Chennai.', '12th and 13 th March 2013', NULL),
('ITF18', 'Attended a one day workshop on \'Encrypted Databases in Cloud -an Avant Garde / Recent Trends in Big Data Analytics / Technologies for 4 G Wireless Systems\' held on 10th April, 2014 in the Fourth International Conference on Recent Trends in Information Technology (ICRTIT-2014) at Anna University MIT Campus', '10th April, 2014', NULL),
('ITF13', 'Participated in a International level workshop on \"Databases in Cloud - An Avant Garde\" organized by Anna University, MIT Campus, India ', '10-Feb-2014. ', NULL),
('ITF19', 'Workshop On Encrypted Databases in Cloud - An Avant Garde Organized by ICRTIT 2014,Department of Information Technology, Anna University, MIT Campus', '10 Feb 2014.', NULL),
('ITF13', 'Participated in a National level workshop on \"Computational Intelligence for Big Data organized by Department of Information Technology\" organized by Anna University, MIT Campus, India ', '07-Feb-2014 to 08-Feb-2014.', NULL),
('ITF01', 'UGC workshop on Neurofuzzy applications', '02.12.2000', 'ATTENDED'),
('ITF02', 'Open Source & Open Standard Based IBM Technologies', '01.10.2005', 'ATTENDED'),
('ITF22', 'Attended two days workshop on \'Big Data Analytics\' at Anna University(MIT Campus-Chrompet)', NULL, NULL),
('ITF22', 'Attended one day workshop on \'Emerging Trends in Oracle Technology\' at VelTech MultiTech Engineering College - Chennai.', NULL, NULL),
('ITF22', 'Attended one day \'National Level Workshop on Pervasive Computing\' at VIT - Chennai', NULL, NULL),
('ITF14', 'Workshop on \'Gateway to Research\', organized by Technology Research and Development Centre of Noorul Islam College of Engineering from 9th December 2005 to 10th December 2005', NULL, NULL),
('ITF14', 'National Workshop on \'Matlab and its Applications\', organized by Department of Electronics and Communication Engineering, SSN College of Engg. and Raghuram Associates from 7th May 2007 to 11th May 2007.', NULL, NULL),
('ITF14', 'International Workshop on \'Content Based Image Retrieval and Image Fusion\', organized by Center for International affairs & Department of Electronics Engineering Madras Institute of Technology (MIT) Anna University, Chennai In Collaboration with University of Hertfordshire United Kingdom from 7th August 2009 to 9th August 2009.', NULL, NULL),
('ITF14', 'International Workshop on \'Data Mining for Web Intelligence\', organized by Department of Information Technology, MIT Campus, Anna University during 20th and 21st January 2011.', NULL, NULL),
('ITF14', 'ISTE Workshop on \'Basic Electronics\', under the National Mission on Education through ICT, conducted by IIT Bombay from 28th June to 08th July, 2011.', NULL, NULL),
('ITF14', 'Workshop on \'Intel Embedded Initiative Faculty Training\', conducted by Department of Information Science and Technology, CEG Campus, Anna University on 20th and 21st January 2012.', NULL, NULL),
('ITF14', 'ISTE Workshop on \'Introduction to Research Methodologies\', under the National Mission on Education through ICT, conducted by IIT Bombay from 25th June to 04th July, 2012.', NULL, NULL),
('ITF09', 'Advanced Level of Mission 10X workshop', NULL, 'CONDUCTED'),
('ITF11', 'Workshop on \'Innovation and Entrepreneur Skills \'during June 2013 at CEG', NULL, 'ATTENDED'),
('ITF01', 'Physical design and verification issues in ASIC', NULL, 'ATTENDED'),
('ITF02', 'Co-ordinator, National level Short Course on \"COBOL Programming and its Applications\" from 01-Jan-1985 to 10-Jan-1985.', NULL, NULL),
('ITF02', 'Co-ordinator, National level Short Course on \"Business Application through Personal Computers\" from 11-Jan-1985 to 18-Jan-1985.', NULL, NULL),
('ITF02', 'Attended a National level Short Course on \"New Approaches for Linear Programming\" organized by ISTE, INDIA from 12-May-1986 to 30-May-1986.\r\n', NULL, NULL),
('ITF02', 'Co-ordinator, National level Short Course on \"Window based Business Applications\" from 19-Jan-1985 to 24-Jan-1985.', NULL, NULL),
('ITF02', 'Co-ordinator, National level Short Course on \"UNIX and C++\" from 25-Jan-1985 to 31-Jan-1985.', NULL, NULL),
('ITF02', 'Co-ordinator, National level Short Course on \"Window Based Packages\" from 01-Jan-1991 to 10-Jan-1991.', NULL, NULL),
('ITF02', 'Co-ordinator, National level Short Course on \"Office Automation\" from 02-Jan-1995 to 14-Jan-1995.', NULL, NULL),
('ITF02', 'Co-ordinator, National level Short Course on \"Computer Training under Job Oriented Training Scheme\" from 01-Mar-1996 to 15-Mar-1996.', NULL, NULL),
('ITF02', 'Co-ordinator, National level Short Course on \"Educational Applications of Computers for the Educational Administrations of District Institutes of Education and Training\" from 01-Apr-1998 to 15-Apr-1998.', NULL, NULL),
('ITF02', 'Co-ordinator, National level workshop on \"Modernizing the Curriculum of MCA\" from 10-Mar-2000 to 11-Mar-2000.', NULL, NULL),
('ITF02', 'Co-ordinator, National level Short Course on \"New Approaches to Resource Management\" from 29-May-2000 to 10-Jun-2000', NULL, NULL),
('ITF02', 'Co-ordinator, National level Short Course on \"Network Administration\" from 22-Jan-2001 to 04-Feb-2001.', NULL, NULL),
('ITF02', 'Co-ordinator, National level Short Course on \"Object Oriented Programming using C++\" from01-Aug-2001 to 10-Aug-2001.', NULL, NULL),
('ITF02', 'Co-ordinator, National level Short Course on \"Network Security\" from 11-Feb-2002 to23-Nov-2002.', NULL, NULL),
('ITF02', 'Co-ordinator, National level Short Course on \"MS-SQL Server and Visual Basic to the Police Personnel of CB CID Wing of Tamil Nadu\" from 19-Dec-2003 to 05-Feb-2004.', NULL, NULL),
('ITF02', 'Co-ordinator, National level Short Course on \"Computer Awareness Programme for TNHB employees\" from 01-Nov-2004 to 15-Nov-2004.', NULL, NULL),
('ITF02', 'Co-ordinator, National level Short Course on \"Advanced Multimedia Computing\" from 22-Nov-2004 to 05-Dec-2004.', NULL, NULL),
('ITF02', ' Co-ordinator, National level Short Course on \"Computer Awareness Programme for TNHB employees\" from 01-Dec-2004 to 15-Dec-2004.', NULL, NULL),
('ITF02', 'Co-ordinator, National level Short Course on \"Computer Awareness Programme for TNHB employees\" from 16-Dec-2004 to 30-Dec-2004.', NULL, NULL),
('ITF02', 'Co-ordinator, National level workshop on \"Distributed and Mobile Computing\" from 15-Mar-2005 to 15-Mar-2005.', NULL, NULL),
('ITF02', 'Co-ordinator, National level workshop on \"Web Sphere\" from 06-Jul-2005 to 09-Jul-2005. ', NULL, NULL),
('ITF02', 'Co-ordinator, National level Short Course on \"Network design and implementation for MCA teachers \" from 01-Dec-2006 to 15-Dec-2006.', NULL, NULL),
('ITF02', 'Co-ordinator, National level workshop on \"Network Security\" from 12-May-2007 to 12-May-2007.', NULL, NULL),
('ITF02', 'Co-ordinator, National level Short Course on \"on Network Security for Technical Teachers Training Institute Employees\" from 01-Nov-2007 to 07-Nov-2007.', NULL, NULL),
('ITF02', 'Attended a National level Short Course on \"Theory and Applications of Neural Networks\" organized by IISC Bangalore, INDIA from 04-Jul-1994 to 15-Jul-1994.', NULL, NULL),
('ITF02', 'Participated in a National level workshop on \"Scientific Writing\" organized by Anna University, INDIA from 27-Apr-1994 to 29-Apr-1994', NULL, NULL),
('ITF02', 'Participated in a International level conference on \"Stochastic Models, Optimization Techniques and Computer Applications\" organized by PSG College of Technology, INDIA from 15-Dec-1994 to 17-Dec-1994.', NULL, NULL),
('ITF02', 'Participated in a National level conference on \"Neural Networks and Fuzzy Systems\" organized by School of Computer Science and Engineering of Anna University , INDIA from 16-Mar-1995 to 18-Mar-1995.', NULL, NULL),
('ITF02', 'Attended a National level Short Course on \"Object Oriented Systems\" organized by ISTE, INDIA from 04-Mar-1996 to 15-Mar-1996.', NULL, NULL),
('ITF02', 'Attended a National level Short Course on \"Modern Trends in Food Preservation Technology\" organized by ISTE, INDIA from 18-Mar-1996 to 29-Mar-1996.', NULL, NULL),
('ITF02', 'Participated in a National level workshop on \"Software Reliability Engineering\" organized by DOE and STOC Directorate, INDIA from 29-Jan-1998 to 30-Jan-1998.', NULL, NULL),
('ITF02', 'Participated in a International level conference on \"Systems Modelling and Optimization\" organized by Cambridge, LONDON from 12-Jul-1999 to 16-Jul-1999.', NULL, NULL),
('ITF02', 'Participated in a International level conference on \"Computer Modelling, Simulation and Communication\" organized by AMSE, INDIA from 01-Dec-1999 to 03-Dec-1999.', NULL, NULL),
('ITF02', 'Attended a National level Short Course on \"Modern Computer Network Management\" organized by AICTE, INDIA from 06-Dec-1999 to 17-Dec-1999.', NULL, NULL),
('ITF02', 'Attended a National level Short Course on \"Computer Communication\" organized by AICTE, INDIA from 20-Dec-1999 to 31-Dec-1999.', NULL, NULL),
('ITF02', 'Participated in a National level conference on \"Optimization Techniques in Industrial Mathematics \" organized by Ramanujan Institute for Advanced study in Mathematics, INDIA from 01-Mar-2000 to 03-Mar-2000.', NULL, NULL),
('ITF02', 'Participated in a International level conference on \"Logistics and Supply Chain Management\" organized by PSG College of Technology, INDIA from 06-Aug-2001 to 08-Aug-2001.', NULL, NULL),
('ITF02', 'Participated in a International level conference on \"Industrial Mathematics\" organized by IndianInstitute of Technology, Madras, INDIA from 12-Aug-2001 to 14-Aug-2001.', NULL, NULL),
('ITF02', 'Participated in a International level conference on \"Computing Technology Trends\" organizedby TIFAC CORE, INDIA from 16-Dec-2001 to 18-Dec-2001.', NULL, NULL),
('ITF02', 'Attended a National level Short Course on \"Information Technology A Pilot Programme\"organized by UGC, INDIA from 08-Sep-2003 to 28-Sep-2003.', NULL, NULL),
('ITF02', 'Participated in a International level conference on \"on Information, Communication and Signal Processing \" organized by Nanyang Technological University, SINGAPORE from 15-Dec-2003 to 18-Dec-2003.', NULL, NULL),
('ITF02', 'Attended a National level Short Course on \"FDP Programme on Software Engineering \" organized by M/S Tata Consultancy Services, Chennai, INDIA from 11-Oct-2004 to 15-Oct-2004.', NULL, NULL),
('ITF02', 'Participated in a National level conference on \"Vision 2020: The Strategic Role of Operational Research\" organized by Indian Institute of Management, Ahmedabad, INDIA from 08-Jan-2005 to 11-Jan-2005.', NULL, NULL),
('ITF02', 'Participated in a National level conference on \"Advanced Computing\" organized by Department of Information Technology, Anna University, Chennai, INDIA from 01-Mar-2006 to 03-Mar-2006.', NULL, NULL),
('ITF02', 'Attended a National level Short Course on \"Grid and Pervasive Computing\" organized by TEQIP, INDIA from 20-Dec-2006 to 31-Dec-2006.', NULL, NULL),
('ITF08', 'Participated in a National level workshop on \"Workshop on Simulation of Advanced Networks\r\nUsing NS-2\" organized by Department of Information Technology, MIT, Anna University,\r\nchennai, India from 02-Dec-2011 to 03-Dec-2011', NULL, NULL),
('ITF08', 'Participated in a International level workshop on \"Data Mining for Web Intelligence\" organized\r\nby Department of Information Technology, MIT, Anna University, Chennai, India from\r\n20-Jan-2011 to 21-Jan-2011', NULL, NULL),
('ITF08', 'Attended a National level Short Course on \"AICTE QIP STC on Recent Developments in\r\nNetwork Security \" organized by Ramanujan Computing Centre, Anna University, Chennai,\r\nIndia from 02-Mar-2009 to 15-Mar-2009', NULL, NULL),
('ITF08', 'Participated in a National level workshop on \"Thesis Writing for Research Scholars\" organized\r\nby Anna University, CEG Campus, Guindy, Chennai, India from 04-Dec-2008 to 05-Dec-2008', NULL, NULL),
('ITF11', 'Participated in a International level conference on \"ICRTIT2011\" organized by MIT, India from\r\n03-Jun-2011 to 05-Jun-2011', NULL, NULL),
('ITF11', 'Attended a National level Short Course on \"Self awareness goals for higher education\r\n(SAGHE) 2016\" organized by Indian Institute of Technology IIT Madras, India from\r\n30-May-2016 to 03-Jun-2016', NULL, NULL),
('ITF11', 'Attended a International level seminar on \"Mobile and Pervasive computing\" organized by MIT,\r\nIndia from 06-Mar-2013 to 07-Mar-2013', NULL, NULL),
('ITF10', 'Participated in a National level workshop on \"Three Days Workshop on JAVA Programming\"\r\norganized by Department of IT, MIT, Anna University, India from 28-Aug-2015 to 30-Aug-2015', NULL, NULL),
('ITF10', 'Attended a National level Short Course on \"A short-term course on Self-Awareness and Higher\r\nGoals in Education\" organized by IIT Madras, India from 02-Jun-2015 to 06-Jun-2015', NULL, NULL),
('ITF10', 'Attended a National level Short Course on \"Two-week ISTE STTP on Introduction to Design of\r\nAlgorithms\" organized by IIT Kharagpur, India from 27-Apr-2015 to 30-May-2015', NULL, NULL),
('ITF10', 'Participated in a National level workshop on \"Two days workshop on Big Data Analytics\"\r\norganized by Dpt. of IT, MIT, India from 21-Nov-2014 to 22-Nov-2014', NULL, NULL),
('ITF10', 'Participated in a National level workshop on \"Two Days Workshop on Computational\r\nIntelligence for Big Data\" organized by Dept. of IT, MIT, India from 07-Feb-2014 to\r\n08-Feb-2014', NULL, NULL),
('ITF10', 'Participated in a National level workshop on \"TWO WEEK ISTE MAIN WORKSHOP ON\r\nSIGNALS & SYSTEMS\" organized by IIT Kharagpur , India from 02-Jan-2014 to 12-Jan-2014', NULL, NULL),
('ITF10', 'Attended a National level seminar on \"One day Awareness course on ISO 9001:2008\"\r\norganized by Anna University, India from 12-Mar-2013', NULL, NULL),
('ITF10', 'Attended a National level seminar on \"UGC, New Delhi sponsored Seminar on Mobile and\r\nPervasive Computing\" organized by Dept. of IT, MIT, India from 06-Mar-2013 to 07-Mar-2013', NULL, NULL),
('ITF10', 'Attended a National level Short Course on \"Research Methodologies, Techniques of writing\r\nResearch Articles and thesis Preparation\" organized by Dept of IT, Anna University, India from\r\n02-Mar-2013 to 02-Mar-2013', NULL, NULL),
('ITF10', 'Participated in a International level workshop on \"How to Write for and Get Published in\r\nScientific Journals and Publish Manuscripts\" organized by Springer-Verlag GmbH & Dept. of\r\nIST, Anna University, India from 29-Jan-2013 to 29-Jan-2013', NULL, NULL),
('ITF10', 'Attended a National level Short Course on \"FDTP on Data Structures\" organized by Dept of IT,\r\nAnna University, India from 03-Dec-2012 to 09-Dec-2012', NULL, NULL),
('ITF10', 'Participated in a National level workshop on \"Teaching Learning Methododlogy\" organized by\r\nDept. of CSE/IST, Anna University, India from 29-Nov-2012 to 01-Dec-2012', NULL, NULL),
('ITF10', 'Participated in a International level workshop on \"Recent Trends in Neural Networks\" organized\r\nby Dept. of IT, Anna University, India from 03-Oct-2012 to 05-Oct-2012', NULL, NULL),
('ITF10', 'Attended a National level Short Course on \"ASIC Design Using Cadence EDA Tools\"\r\norganized by NIELIT, Chennai, India from 18-Jun-2012 to 22-Jun-2012', NULL, NULL),
('ITF10', 'Participated in a National level workshop on \"INTEL Embedded Iniative Faculty Training\"\r\norganized by Dept of IST, Anna University, India from 20-Jan-2012 to 21-Jan-2012', NULL, NULL),
('ITF10', 'Attended a National level Short Course on \"FDTP on Digital Signal processing\" organized by\r\nMIT, Anna University, India from 28-Nov-2011 to 04-Dec-2011', NULL, NULL),
('ITF10', 'Participated in a National level workshop on \"Reconfigurable Technology and its Applications\"\r\norganized by Dept. of ECE, CEG, Anna University, India from 18-Oct-2011 to 18-Oct-2011', NULL, NULL),
('ITF10', 'Attended a National level Short Course on \"Digital Design Using FPGA\" organized by VIT\r\nuniversity Vellore, India from 25-Aug-2011 to 26-Aug-2011', NULL, NULL),
('ITF10', 'Participated in a National level workshop on \"ISTE Workshop on Basic Electronics\" organized\r\nby IIT, Bombay, India from 28-Jun-2011 to 08-Jul-2011', NULL, NULL),
('ITF10', 'Participated in a International level workshop on \"Data Mining for WEB Intelligence\" organized\r\nby Dept of IT, Anna University, India from 20-Jan-2011 to 21-Jan-2011', NULL, NULL),
('ITF10', 'Attended a National level Short Course on \"Embedded System\" organized by NITTTR,\r\nChennai, India from 06-Dec-2010 to 10-Dec-2010', NULL, NULL),
('ITF10', 'Attended a National level Short Course on \"Lab Manual Preparation on 8051 Micro Controller\"\r\norganized by NITTTR, Chennai, India from 25-Oct-2010 to 29-Oct-2010', NULL, NULL),
('ITF10', 'Attended a National level Short Course on \"FDTP on Internet Programming\" organized by MIT,\r\nAnna University, India from 07-Jun-2010 to 11-Jun-2010', NULL, NULL),
('ITF10', 'Participated in a National level workshop on \"MISSION 10X\" organized by WIPRO\r\nTechnologies and Easwari Engineering College, India from 07-Dec-2009 to 11-Dec-2009', NULL, NULL),
('ITF10', 'Participated in a National level workshop on \"Advanced Microprocessors and Micro\r\nControllers\" organized by Dept of IT, Easwari Engineering College, Chennai, India from\r\n18-Sep-2009 to 19-Sep-2009', NULL, NULL),
('ITF10', 'Participated in a International level workshop on \"Application of Microcontrollers for Embedded\r\nSystems\" organized by Dept of IT, Easwari Engineering College, Chennai, India from\r\n24-Jul-2009 to 25-Jul-2009', NULL, NULL),
('ITF10', 'Participated in a National level workshop on \"Research Opportunities in VLSI and Applied\r\nElectornics\" organized by Dept. of ECE, SSN College of Engineering, Chennai., India from\r\n29-Aug-2008 to 29-Aug-2008', NULL, NULL),
('ITF10', 'Attended a International level Short Course on \"PIC 16F877A Microcontroller and Its\r\nApplications\" organized by NITTTR, Chennai, India from 28-Jul-2008 to 02-Aug-2008', NULL, NULL),
('ITF10', 'Participated in a National level workshop on \"Embedded Systems Development on FPGAs\"\r\norganized by Dept. of Electronic Engineering, MIT, Anna University, India from 07-Jan-2008 to\r\n08-Jan-2008', NULL, NULL),
('ITF10', 'Participated in a National level workshop on \"Practical Training in ASIC Design and MATLAB\r\nBased EDA Tools\" organized by Dept of ECE, Easwari Engineering College, Chennai, India\r\nfrom 15-Dec-2007 to 19-Dec-2007', NULL, NULL),
('ITF10', 'Attended a National level Short Course on \"Microcontrollers for Embedded Applications\"\r\norganized by VLB Janakiammal College of Engg & Technology, Coimbatore, India from\r\n23-Apr-2007 to 07-May-2007', NULL, NULL),
('ITF23', 'Attended Faculty Development Training Programme on Grid and Cloud Computing, at Anna University, MIT campus, June 15th-21st, 2014', NULL, NULL),
('ITF23', 'Attended Faculty Development Training Programme on Java Programming, at Sathybama University, Dec 3 - 8, 2013', NULL, NULL),
('ITF23', 'Workshop On Hands-on Training Programme Big Data Mining and Search organized by Department of Information Technology, Anna University, MIT Campus,3 - 5 Dec 2014', NULL, NULL),
('ITF23', 'Workshop On Big Data Analytics, organized by Information Technology, Anna University, MIT Campus, Nov 21 - 22, 2014', NULL, NULL),
('ITF23', '1 day tutorial in Big Data at MIT, Anna University, 18th Dec 2013', NULL, NULL),
('ITF22', 'Three Days workshop on \"Cloud Computing and Big Data\" in College of Engineering,Guindy', NULL, NULL),
('ITF19', 'Workshop On Hands-on Training Programme on Artificial Neural Network and Fuzzy Logic using MATLAB organized by Department of Information Technology, Anna University, MIT Campus,29-31 Jan 2016', NULL, NULL),
('ITF17', 'Participated in a International level workshop on \"Recent Developments in Neural Networks\"\r\norganized by MIT campus,Anna university, India from 03-Oct-2012 to 05-Oct-2012', NULL, NULL),
('ITF17', 'Participated in a National level workshop on \"e-Governance\" organized by MIT,Anna\r\nUniversity, India from 19-Dec-2012', NULL, NULL),
('ITF17', 'Participated in a International level workshop on \"Cloud Computing\" organized by MIT\r\nCampus, India from 25-Jul-2013 to 27-May-2013', NULL, NULL),
('ITF15', 'Participated in a National level workshop on \"JAVA PROGRAMMING\" organized by ANNA\r\nUNIVERSITY, INDIA from 28-Aug-2015 to 30-Aug-2015', NULL, NULL),
('ITF15', 'Participated in a National level workshop on \"BIG DATA ANALYTICS\" organized by ANNA\r\nUNIVERSITY, INDIA from 21-Nov-2014 to 22-Nov-2014', NULL, NULL),
('ITF08', 'Participated in a International level conference on \"First International Conference on Advanced\r\nComputing (ICAC 2009)\" organized by Department of Information Technology, MIT, Anna\r\nUniversity,Chennai, India from 13-Dec-2009 to 15-Dec-2009.', '13-Dec-2009 to 15-Dec-2009', NULL),
('ITF08', 'Participated in a International level conference on \"International Conference on Recent Trends\r\nin Information Technology (ICRTIT 11)\" organized by Department of Information Technology,\r\nMIT, Anna University, Chennai, India from 03-Jun-2011 to 05-Jun-2011.\r\n', NULL, NULL),
('ITF08', 'Participated in a National level workshop on \"Workshop on Simulation of Advanced Networks\r\nUsing NS-2\" organized by Department of Information Technology, MIT, Anna University,\r\nchennai, India from 02-Dec-2011 to 03-Dec-2011.\r\n', NULL, NULL),
('ITF08', ' Participated in a National level workshop on \"Writing Effective Conference Papers\" organized\r\nby IIT Bombay, India from 18-Feb-2012 to 19-Feb-2012.', NULL, NULL),
('ITF08', ' Participated in a International level workshop on \"Recent Developments in Neural Networks\"\r\norganized by Department of Information Technology, MIT, Anna University, Chennai, India\r\nfrom 04-Oct-2012 to 05-Oct-2012.\r\n', NULL, NULL),
('ITF08', ' Participated in a National level workshop on \"National eGovernance Plan \" organized by\r\nDepartment of Information Technology, MIT, Anna University,Chennai, India from\r\n19-Dec-2012.', NULL, NULL),
('ITF08', ' Attended a International level seminar on \"Mobile and Pervasive Computing\" organized by\r\nAnna University, India from 06-Mar-2013 to 07-Mar-2013.', NULL, NULL),
('ITF08', ' Participated in a International level workshop on \"Computational Intelligence for Big Data\"\r\norganized by Anna University, India from 07-Feb-2014 to 08-Feb-2014.', NULL, NULL),
('ITF08', ' Participated in a International level workshop on \"Big Data Analytics\" organized by Anna\r\nUniversity, India from 21-Nov-2014 to 22-Nov-2014.', NULL, NULL),
('ITF08', ' Participated in a International level workshop on \"Java Programming\" organized by Anna\r\nUniversity, India from 28-Aug-2015 to 30-Aug-2015.', NULL, NULL),
('ITF19', 'Participated in a National level workshop on \"Workshop On Encrypted Databases in Cloud - An\r\nAvant Garde\" organized by Anna University, MIT Campus, India from 10-Apr-2014 to\r\n10-Apr-2014.', NULL, NULL),
('ITF19', 'Attended a National level Short Course on \"Faculty Development Programme on Computer\r\nOrganization\" organized by Anna University,MIT campus, India from 24-Jun-2014 to\r\n30-Jun-2014.\r\n', NULL, NULL),
('ITF18', 'Participated in a National level conference on \"Encrypted Databases in Cloud / Recent Trends\r\nin Big Data Analytics / Technologies for 4 G Wireless Systems\" organized by Fourth\r\nInternational Conference on Recent Trends in Information Technology (ICRTIT-2014) at Anna\r\nUniversity MIT Campus., India from 10-Apr-2014 to 12-Apr-201', NULL, NULL),
('ITF18', ' Participated in a National level workshop on \"Recent Advances in Medical Imaging\r\nTechniques\" organized by Centre for Medical Electronics, Dept of ECE, Anna University CEG\r\nCampus., India from 31-Jul-2015 to 31-Jul-2015.', NULL, NULL),
('ITF17', 'Participated in a National level workshop on \"Genomic signal processing\" organized by JNTU\r\nK, India from 19-Mar-2011 to 20-Mar-2011.', NULL, NULL),
('ITF17', 'Participated in a National level workshop on \"Cryptography algorithms on banking\" organized\r\nby JNTU K, India from 12-Apr-2011 to 13-Apr-2011.', NULL, NULL),
('ITF17', 'Attended a National level Short Course on \"FDP on Requirements Management by TCS\"\r\norganized by JNTUK, India from 23-Apr-2011.', NULL, NULL),
('ITF13', 'Attended a National level Short Course on \"3G Mobile Networks\" organized by Kongu College\r\nof Engineering, India from 07-Oct-2002 to 30-Oct-2002.\r\n', NULL, NULL),
('ITF13', 'Attended a National level Short Course on \"Modern Teaching Competencies for Faculty\r\nMembers\" organized by Anna University, India from 21-Apr-2003 to 23-Apr-2003.', NULL, NULL),
('ITF13', 'Attended a National level Short Course on \"Instructional Design and Delivery\" organized by\r\nTechnical Teachers Training Institute, Chennai, India from 31-May-2005 to 05-Jun-2005.', NULL, NULL),
('ITF13', 'Participated in a National level workshop on \"Gateway to Research\" organized by Noorul Islam\r\nCollege of Engineering, India from 09-Dec-2005 to 10-Dec-2005.', NULL, NULL),
('ITF13', 'Participated in a National level workshop on \"Matlab and its Applications\" organized by SSN\r\nCollege of Engineering, India from 07-May-2007 to 11-May-2007.\r\n', NULL, NULL),
('ITF13', 'Attended a National level Short Course on \"Digital Signal Processing\" organized by Anna\r\nUniversity, India from 04-Jun-2007 to 16-Jun-2007.', NULL, NULL),
('ITF13', 'Attended a National level Short Course on \"PHP Programming\" organized by Anna University,\r\nIndia from 10-Dec-2007 to 14-Dec-2007.\r\n', NULL, NULL),
('ITF13', 'Attended a National level Short Course on \"Digital Signal Processing\" organized by Anna\r\nUniversity, India from 15-Jun-2009 to 21-Jun-2009.\r\n', NULL, NULL),
('ITF13', 'Participated in a International level workshop on \"Content Based Image Retrieval and Image\r\nFusion\" organized by Anna University, India from 07-Aug-2009 to 09-Aug-2009.\r\n', NULL, NULL),
('ITF13', 'Participated in a International level workshop on \"Data Mining for Web Intelligence\" organized\r\nby Anna University, India from 20-Jan-2011 to 21-Jan-2011.', NULL, NULL),
('ITF09', 'Participated in a National level conference on \"Recent Advances in Computer Networks\" organized by Karunya University, India from 17-Mar-2007 to 17-Mar-2007.', NULL, NULL),
('ITF09', 'Participated in a National level workshop on \"Free and Open Source Software\" organized by IBM & Alpha College of Engineering, India from 12-Dec-2007 to 13-Mar-2007.', NULL, NULL),
('ITF09', 'Attended a International level seminar on \"Delearn to Relearn - innovative Teaching Methods\" organized by LIBA & Knowledge Xchange, India from 19-Jul-2008 to 19-Jul-2008.', NULL, NULL),
('ITF09', 'Participated in a National level workshop on \"Wired and wireless Network Simulation tool\" organized by St.Joseph\'s College of Engineering, India from 12-Aug-2008 to 12-Aug-2008.', NULL, NULL),
('ITF09', 'Participated in a National level workshop on \"Security & Storage management in tivoli\" organized by St.Joseph\'s College of Engineering, India from 12-Aug-2008 to 12-Aug-2008.', NULL, NULL),
('ITF09', 'Participated in a International level conference on \"ICAC 2009\" organized by It dept, MIT, India from 13-Dec-2009 to 15-Dec-2009', NULL, NULL),
('ITF09', 'Attended a National level Short Course on \"Internet Programming\" organized by Anna University, India from 07-Jun-2010 to 11-Jun-2010.', NULL, NULL),
('ITF09', 'Participated in a National level workshop on \"Mission 10X Faculty Empowerment programme\" organized by Dept of IT, MIT, India from 21-Jun-2010 to 25-Jun-2010', NULL, NULL),
('ITF09', 'Participated in a National level workshop on \"Mission 10X Faculty Empowerment programme - Advanced level\" organized by Dept of IT, MIT, India from 15-Nov-2010 to 16-Nov-2010.', NULL, NULL),
('ITF09', 'Participated in a National level workshop on \"National Workshop on Biomedical Signal and Image Processing\" organized by Dept of ECE & Centre for Medical Electronics, CEG, India from 23-Nov-2010 to 24-Nov-2010.', NULL, NULL),
('ITF09', 'Attended a National level Short Course on \"Principles of Compiler Design\" organized by Anna University, India from 06-Dec-2010 to 12-Dec-2010.', NULL, NULL),
('ITF09', 'Participated in a International level workshop on \"Intl Workshop on Data Mining for Web Intelligence\" organized by It dept, MIT, India from 20-Jan-2011 to 21-Jan-2011.', NULL, NULL),
('ITF09', 'Participated in a International level conference on \"ICRTIT - 2011\" organized by IT Dept, MIT, India from 03-Jun-2011 to 05-Jun-2011.', NULL, NULL),
('ITF09', 'Participated in a National level workshop on \"Workshop on Simulation of Advanced Networks Using NS-2\" organized by It dept, MIT, India from 02-Dec-2011 to 03-Dec-2011.', NULL, NULL),
('ITF09', 'Participated in a International level workshop on \"Intl Workshop on Recent Developments in Neural Networks\" organized by IT Dept, MIT, India from 03-Oct-2012 to 05-Oct-2012.', NULL, NULL),
('ITF09', 'Participated in a National level workshop on \"Author Workshop\" organized by Edanz, Springer & Dept of IST, CEG, India from 29-Jan-2013 to 29-Jan-2013.', NULL, NULL),
('ITF09', 'Attended a National level Short Course on \"Research Methodology, Techniques of Writing research Articles & Thesis Preparation\" organized by IT Dept, MIT, India from 02-Mar-2013 to 02-Mar-2013.', NULL, NULL),
('ITF09', 'Attended a National level seminar on \"Mobile and Pervasive Computing\" organized by MIT, India from 06-Mar-2013 to 07-Mar-2013', NULL, NULL),
('ITF09', 'Attended a National level Short Course on \"Quality Management System\" organized by MIT Chromepet, India from 12-Mar-2013 to 12-Mar-2013.', NULL, NULL),
('ITF09', 'Participated in a National level workshop on \"Computational Intelligence for Big Data\" organized by MIT, India from 07-Feb-2014 to 08-Feb-2014.', NULL, NULL),
('ITF09', 'Participated in a National level workshop on \"Cyber Security\" organized by IIT Bombay, India from 10-Jul-2014 to 20-Jul-2014.', NULL, NULL),
('ITF09', 'Participated in a National level workshop on \"Big Data Analytics\" organized by MIT, India from 21-Nov-2014 to 22-Nov-2014.', NULL, NULL),
('ITF09', 'Participated in a International level workshop on \"Introduction to Design of Algorithms\" organized by IIT Kharagpur, India from 27-Apr-2015 to 30-May-2015.', NULL, NULL),
('ITF09', 'Participated in a National level workshop on \"Java Programming\" organized by MIT, India from 28-Aug-2015 to 30-Aug-2015.', NULL, NULL),
('ITF09', 'Coordinator, National level conference on \"Role of Women for India Ahead\" from 02-Apr-2007 to 03-Apr-2007.', NULL, NULL),
('ITF09', 'Organizing Secretary, National level workshop on \"Free and Open Source Software\" from 12-Dec-2007 to 13-Dec-2007.', NULL, NULL),
('ITF09', 'Coordinator, International level workshop on \"Mission 10 X - Ist level\" from 21-Jun-2010 to 25-Jun-2010.', NULL, NULL),
('ITF09', 'Coordinator, National level workshop on \"Mission 10X - Advanced Level\" from 15-Nov-2010 to 16-Nov-2010.', NULL, NULL),
('ITF09', 'Coordinator, National level workshop on \"Workshop on Soft Computing\" from 21-Mar-2012 to 22-Mar-2013.', NULL, NULL),
('ITF09', 'Coordinator, National level Short Course on \"FDP on CS6303- Computer Architecture\" from 24-Jun-2014 to 30-Jun-2014.', NULL, NULL),
('ITF09', 'Publication Chair, International level conference on \"ICRTIT 2016\" from 08-Apr-2016 to 09-Apr-2016.', NULL, NULL),
('ITF26', 'Participated in Workshop on Application development, deployment and testing in Cloud by Department of Computer Science and Engineering, CEG, Anna University.', 'March 21st to 23rd 2016.', 'ATTENDED'),
('ITF26', 'Participated in International Workshop on Network Security & Challenges organized by Department of Electronics Engineering in association with AU-KBC Research Centre, MIT, Anna University.', 'August 17th to 18th 2015', 'ATTENDED'),
('ITF26', 'Participated in Workshop on Big Data and Visualization Tools organized by Department of Information Technology, MIT, Anna University.', 'June 11th to 13th 2015', 'ATTENDED'),
('ITF26', 'Participated in Workshop on Video Analytics using Graphics Processing Unit organized by Department of Electronics Engineering in association with AU-KBC Research Centre, MIT, Anna University.', 'March 26th to 28th 2015', 'ATTENDED'),
('ITF26', 'Participated in Workshop on Machine Learning in Computer Vision organized by AU-KBC Research Centre in association with Department of Electronics Engineering, MIT, Anna University.', 'January 29th and 30th 2015', 'ATTENDED'),
('ITF28', 'Attended workshops in Internet of Things , Soft computing and Applications', NULL, NULL),
('ITF31', 'one day workshop on \"Intellectual Property Rights-2019 (IPR-2019)\" at AC Tech Campus, Anna University, Chennai.', '27th September 2019 ', 'Attended'),
('ITF31', 'Attended two days workshop on \"Hands-on Training on Artificial Neural Network Using MATLAB\" at School of Electrical Engineering, Vellore Institute of Technology, Chennai.', '3rd August and 4th August ', NULL),
('ITF31', 'Attended one day workshop on \"Global Azure Bootcamp\" at Tech Mahindra in association with MICROSOFT INDIA', '27th April 2019', NULL),
('ITF31', 'Attended two days IET Chennai Local Network sponsored Workshop on \"Machine Learning in Computer Vision using Python\" at SRM Institute of Science and Technology.', '27-28 March 2019 ', NULL),
('ITF31', 'Attended a one-day workshop on \"Machine Learning in Industry 4.0\" at the Department of Manufacturing Engineering, CEG Campus, Anna University', '2nd March 2019', NULL),
('ITF31', 'Attended one day workshop on \"Transforming India with Deep Learning\", organized by NVIDIA Developer Connect, NVIDIA', '9th October 2018', NULL),
('ITF31', 'Attended three days Workshop on \"Image Processing, Computer Vision and Machine Learning\" organized by the Department of Electronics Engineering at Madras Institute of Technology, Anna University', '3rd - 5th May 2018', NULL),
('ITF31', 'Attended one day workshop on \"How to Do a Good Ph.D.\" organized by Centre for Aerospace Research at Madras Institute of Technology, Anna University.', '3rd March ', NULL),
('ITF31', 'Attended one day workshop on \"URKUND (Plagiarism Detection Tool)\" at Pondicherry University, Organized by Ananda Rangapillai Library, Pondicherry University in Collaboration with INFLIBNET Centre, Gujarat', '28th October 2015', NULL),
('ITF31', 'Attended two days CSI sponsored Workshop on \"Image processing using MATLAB\" at Manakula Vinayagar Institute of Technology, Puducherry.\r\n', '23rd and 24th February 2015', NULL),
('ITF31', 'Attended five days national workshop on \"Advanced Trends in Optimization Methods & their Applications (ATOMA-2014)\"  at Pondicherry University, Puducherry.', '8th September to 12th September 2014', NULL),
('ITF31', 'Attended national workshop on \"Image Processing Techniques using MATLAB\" at Kongu Engineering College, Erode.', '5th and 6th September 2014 ', NULL),
('ITF31', 'Attended five days national workshop on \"Research Trends in Digital Image Processing NWRTDIP 2014\" at Pondicherry University, Puducherry.', '18th August to 22nd August 2014 ', NULL),
('ITF31', 'Attended two days workshop on \"Big Data & Open Cloud\" at Pondicherry University, Puducherry.', '3rd April and 4th April 2014', NULL),
('ITF31', 'Attended a one-day national level workshop on \"Mobile Applications Development Using Android: A Practical Approach (WMADA 2014)\" at Pondicherry University, Puducherry.', '15th March 2014', NULL),
('ITF31', 'Attended \"Author Workshop\" jointly organized by Springer and Ananda Rangapillai Library at Pondicherry University, Puducherry.\r\n', '6th February 2014', NULL),
('ITF30', 'Genetic Algorithm and Particle Swarm Optimization : Hands on Training Using MATLAB, Anna University, Regional Office, Coimbatore', '2012', NULL),
('ITF30', 'International Workshop on Recent Developments in Neural Networks, Madras Institute of Technology, Anna University, Chennai', '2012', NULL),
('ITF30', 'National Workshop on Fuzzy Systems and Soft Computing in Industrial Applications - NWFS 2012, PSG College of Technology, Coimbatore', '2012', NULL),
('ITF30', 'Recent Trends and Research Challenges in Wireless Networks, PSG College of Technology, Coimbatore', '2012', NULL),
('ITF30', 'National Level Workshop on Simulation of Wireless Network Standards and Protocols Using NS-2 Tool, Kongu Engineering College, Erode', '2012', NULL),
('ITF30', 'Android for Dummies, PSG College of Technology, Coimbatore', '2012', NULL),
('ITF30', 'International Workshop on Ambient Intelligence for Next Generation Intelligent Systems, R.V.S. College of Engineering and Technology, Coimbatore', '2012', NULL),
('ITF30', 'Microsoft DreamSpark Yatra, Mahendra Engineering College, Namakkal', '2010', NULL),
('ITF29', 'Two Days Workshop on \"Virtual Reality & Augmented Reality\", by IIT Madras & Kewaunee Labway India Pvt.Ltd, Bangalore', '3-4 September 2019', NULL),
('ITF29', 'ACM	Women	Chapter	Sponsored	Three	Days	Workshop	on “Heartfulness” by Heartfulness Institute Madurai', '2018', NULL),
('ITF29', 'One Day Workshop on \"Virtual Reality Applications in Cognitive Science\", by Kewaunee Labway India Pvt.Ltd, Bangalore', '28-09-2017', NULL),
('ITF29', 'One Day Workshop on \"User Interface and Experience\", in Thiagarajar College of Engineering, Madurai ', '31-07-2017', NULL),
('ITF29', 'ACM Sponsored One day Inter-department Contest on \"Modern tool usage to solve complex Engineering problems\", Department of Information Technology, Thiagararajar College of Engineering, Madurai', '24-08-2016', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Main`
--
ALTER TABLE `Main`
  ADD PRIMARY KEY (`FID`);

--
-- Indexes for table `student_record`
--
ALTER TABLE `student_record`
  ADD PRIMARY KEY (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
