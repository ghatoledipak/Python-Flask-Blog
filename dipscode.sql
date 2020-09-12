-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2020 at 09:16 AM
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
-- Database: `dipscode`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `srno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `date` date DEFAULT current_timestamp(),
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`srno`, `name`, `email`, `phone_no`, `date`, `msg`) VALUES
(1, 'dipak', '@gmail.com', '123456789', '2020-09-10', 'asasasas'),
(2, 'ghtole dipsd', 'ghatoledipak', '7721026326', '2020-09-10', 'vfgfgfgf'),
(3, 'priya ghatole', 'priya@gmail.con', '1212121212', '2020-09-10', 'hii dips here now its done!!!'),
(4, 'dash', 'dashsingh1717@gmail.com', '3434343434', '2020-09-10', 'nice to meet you sir!'),
(5, 'dash', 'dashsingh1717@gmail.com', '3434343434', '2020-09-10', 'fvvfvvf'),
(6, 'dash', 'dashsingh1717@gmail.com', '3434343434', '2020-09-10', 'nice to meet you!!'),
(7, 'kishor aher ', 'aherkishor1011@gmail.com', '4545454545', '2020-09-12', 'you are fooled by Dips !!!!');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `srno` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(25) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`srno`, `title`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'What is Data Science ?', 'first-post', 'Data science is an inter-disciplinary field that uses scientific methods, processes, algorithms and systems to extract knowledge and insights from many structural and unstructured data.[1][2] Data science is related to data mining, machine learning and big data.\r\n\r\nData science is a \"concept to unify statistics, data analysis and their related methods\" in order to \"understand and analyze actual phenomena\" with data.[3] It uses techniques and theories drawn from many fields within the context of mathematics, statistics, computer science, domain knowledge and information science. Turing award winner Jim Gray imagined data science as a \"fourth paradigm\" of science (empirical, theoretical, computational and now data-driven) and asserted that \"everything about science is changing because of the impact of information technology\" and the data deluge.[4][5]', 'post-bg.jpg', '0000-00-00'),
(2, 'What is Machine Learning ?', 'mc-learning', 'Machine learning (ML) is the study of computer algorithms that improve automatically through experience.[1][2] It is seen as a subset of artificial intelligence. Machine learning algorithms build a mathematical model based on sample data, known as \"training data\", in order to make predictions or decisions without being explicitly programmed to do so.[3] Machine learning algorithms are used in a wide variety of applications, such as email filtering and computer vision, where it is difficult or infeasible to develop conventional algorithms to perform the needed tasks.\r\n\r\nMachine learning is closely related to computational statistics, which focuses on making predictions using computers. The study of mathematical optimization delivers methods, theory and application domains to the field of machine learning. Data mining is a related field of study, focusing on exploratory data analysis through unsupervised learning.[5][6] In its application across business problems, machine learning is also referred to as predictive analytics.', 'machine.jpg', '0000-00-00'),
(3, 'Why you should use python?', 'why-py', 'According to the latest TIOBE Programming Community Index, Python is one of the top 10 popular programming languages of 2017. Python is a general purpose and high level programming language. You can use Python for developing desktop GUI applications, websites and web applications. Also, Python, as a high level programming language, allows you to focus on core functionality of the application by taking care of common programming tasks. The simple syntax rules of the programming language further makes it easier for you to keep the code base readable and application maintainable. There are also a number of reasons why you should prefer Python to other programming languages.\r\n7 Reasons Why You Must Consider Writing Software Applications in Python\r\n1) Readable and Maintainable Code\r\nWhile writing a software application, you must focus on the quality of its source code to simplify maintenance and updates. The syntax rules of Python allow you to express concepts without writing additional code. At the same time, Python, unlike other programming languages, emphasizes on code readability, and allows you to use English keywords instead of punctuations. Hence, you can use Python to build custom applications without writing additional code. The readable and clean code base will help you to maintain and update the software without putting extra time and effort.\r\n2) Multiple Programming Paradigms\r\nLike other modern programming languages, Python also supports several programming paradigm. It supports object oriented and structured programming fully. Also, its language features support various concepts in functional and aspect-oriented programming. At the same time, Python also features a dynamic type system and automatic memory management. The programming paradigms and language features help you to use Python for developing large and complex software applications.\r\n3) Compatible with Major Platforms and Systems\r\nAt present, Python is supports many operating systems. You can even use Python interpreters to run the code on specific platforms and tools. Also, Python is an interpreted programming language. It allows you to you to run the same code on multiple platforms without recompilation. Hence, you are not required to recompile the code after making any alteration. You can run the modified application code without recompiling and check the impact of changes made to the code immediately. The feature makes it easier for you to make changes to the code without increasing development time.\r\n4) Robust Standard Library\r\nIts large and robust standard library makes Python score over other programming languages. The standard library allows you to choose from a wide range of modules according to your precise needs. Each module further enables you to add functionality to the Python application without writing additional code. For instance, while writing a web application in Python, you can use specific modules to implement web services, perform string operations, manage operating system interface or work with internet protocols. You can even gather information about various modules by browsing through the Python Standard Library documentation.\r\n5) Many Open Source Frameworks and Tools\r\nAs an open source programming language, Python helps you to curtail software development cost significantly. You can even use several open source Python frameworks, libraries and development tools to curtail development time without increasing development cost. You even have option to choose from a wide range of open source Python frameworks and development tools according to your precise needs. For instance, you can simplify and speedup web application development by using robust Python web frameworks like Django, Flask, Pyramid, Bottle and Cherrypy. Likewise, you can accelerate desktop GUI application development using Python GUI frameworks and toolkits like PyQT, PyJs, PyGUI, Kivy, PyGTK and WxPython.\r\n6) Simplify Complex Software Development\r\nPython is a general purpose programming language. Hence, you can use the programming language for developing both desktop and web applications. Also, you can use Python for developing complex scientific and numeric applications. Python is designed with features to facilitate data analysis and visualization. You can take advantage of the data analysis features of Python to create custom big data solutions without putting extra time and effort. At the same time, the data visualization libraries and APIs provided by Python help you to visualize and present data in a more appealing and effective way. Many Python developers even use Python to accomplish artificial intelligence (AI) and natural language processing tasks.\r\n7) Adopt Test Driven Development\r\nYou can use Python to create prototype of the software application rapidly. Also, you can build the software application directly from the prototype simply by refactoring the Python code. Python even makes it easier for you to perform coding and testing simultaneously by adopting test driven development (TDD) approach. You can easily write the required tests before writing code and use the tests to assess the application code continuously. The tests can also be used for checking if the application meets predefined requirements based on its source code.\r\nHowever, Python, like other programming languages, has its own shortcomings. It lacks some of the built-in features provided by other modern programming language. Hence, you have to use Python libraries, modules, and frameworks to accelerate custom software development. Also, several studies have shown that Python is slower than several widely used programming languages including Java and C++. You have to speed up the Python application by making changes to the application code or using custom runtime. But you can always use Python to speed up software development and simplify software maintenance.', 'python.jpeg', '0000-00-00'),
(4, 'The Most Important Languages To Learn In 2020 !', 'lang-slug', 'The Most Important Languages To Learn In 2020\r\n1. Mandarin Chinese\r\n \r\n\r\nWith over one billion Mandarin Chinese speakers in the world, of course it tops the list of most important languages to learn in 2020.\r\n\r\n \r\n\r\nMost speakers are located within China, however, so is it still one of the most important languages to learn? The answer is yes — with China emerging as a global power, it becomes increasingly more important for businesses to have team members that know Chinese.\r\n\r\n \r\n\r\n \r\n\r\n2. Spanish\r\n \r\n\r\nSpanish has a large number of native speakers, and a large number of overall speakers as well. Most Spanish speaking countries are located in South and Central America, which are extremely popular travel destinations in recent years. For this reason, you will find many across the world who speak Spanish. In addition, due to the large number of Spanish speakers in the US, if you live, work, or travel in the United States, Spanish is the one to learn!\r\n\r\n \r\n\r\n \r\n\r\n3. German\r\n \r\n\r\nGermany is the most widely spoken language throughout Europe, as Germany remains Europe’s most dominant economy. For this reason, if you do business or plan to do business in Europe, German is one of the most important languages to learn. It’s a funny language to learn, with endings tacked on to words to give them specific meanings. But it is also a surprisingly easy language to learn.\r\n\r\n \r\n\r\n \r\n\r\n4. French\r\n \r\n\r\nFrench, also called the language of love, was actually the international, diplomatic language for centuries. Only recently, historically speaking, with the rise of the United States as a global power, did English prevail as the language of diplomacy. France is still quite the economic powerhouse, and a popular travel destination, so French is definitely a language to learn!\r\n\r\n \r\n\r\n \r\n\r\n', 'lang.jpg', '0000-00-00'),
(5, 'What is Block Chain ?', 'wh-block-c', 'Blockchain, sometimes referred to as Distributed Ledger Technology (DLT), makes the history of any digital asset unalterable and transparent through the use of decentralization and cryptographic hashing.  \r\n\r\nA simple analogy for understanding blockchain technology is a Google Doc. When we create a document and share it with a group of people, the document is distributed instead of copied or transferred. This creates a decentralized distribution chain that gives everyone access to the document at the same time. No one is locked out awaiting changes from another party, while all modifications to the doc are being recorded in real-time, making changes completely transparent.\r\n\r\nOf course, blockchain is more complicated than a Google Doc, but the analogy is apt because it illustrates three critical ideas of the technology:', 'blockchain.jpg', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`srno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
