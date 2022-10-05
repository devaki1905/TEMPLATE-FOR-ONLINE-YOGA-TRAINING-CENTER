

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



-- Database: `wdm`

-- Table structure for table `class`
--

CREATE TABLE `class` (
  `classid` varchar(11) NOT NULL,
  `classname` varchar(40) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `class` (`classid`, `classname`, `description`) VALUES
('Gentle', 'Gentle Hatha Yoga', 'Intended for beginners and anyone wishing a grounded foundation in the practice of yoga, this 60 minute class of poses and slow movement focuses on asana (proper alignment and posture), pranayama (breath work), and guided meditation to foster your mind and body connection.'),
('Restorative', 'Restorative Yoga', 'This 90 minute class features very slow movement and long poses that are supported by a chair or wall. This calming, restorative experience is suitable for students of any level of experience. This practice can be a perfect way to help rehabilitate and injury.'),
('Vinyasa', 'Vinyasa Yoga', 'Although designed for intermediate to advance students, beginners are welcome to this 60 minute class that focuses on breath-synchronized movement - you will inhale and exhale as you flow energetically though yoga poses.');


--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`classid`);
COMMIT;

