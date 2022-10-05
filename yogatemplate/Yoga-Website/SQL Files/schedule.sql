
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wdm`
--

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `timeid` varchar(11) NOT NULL,
  `classid` varchar(11) NOT NULL,
  `daysid` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`timeid`, `classid`, `daysid`) VALUES
('1', 'Gentle', 'weekday'),
('2', 'Vinyasa', 'weekday'),
('6', 'Restorative', 'weekday'),
('7', 'Gentle', 'weekday'),
('2', 'Gentle', 'weekend'),
('3', 'Vinyasa', 'weekend'),
('4', 'Gentle', 'weekend'),
('5', 'Vinyasa', 'weekend'),
('6', 'Restorative', 'weekend');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD KEY `timeid` (`timeid`),
  ADD KEY `classid` (`classid`),
  ADD KEY `daysid` (`daysid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`timeid`) REFERENCES `time` (`timeid`),
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`classid`) REFERENCES `class` (`classid`),
  ADD CONSTRAINT `schedule_ibfk_3` FOREIGN KEY (`daysid`) REFERENCES `days` (`daysid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
