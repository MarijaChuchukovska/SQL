-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.4.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for avtosalon
CREATE DATABASE IF NOT EXISTS `avtosalon` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `avtosalon`;

-- Dumping structure for table avtosalon.marki
CREATE TABLE IF NOT EXISTS `marki` (
  `marki_id` int(3) NOT NULL,
  `marki_name` varchar(25) NOT NULL,
  `country` varchar(40) NOT NULL,
  `eu` tinyint(1) NOT NULL,
  PRIMARY KEY (`marki_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table avtosalon.marki: ~0 rows (approximately)

-- Dumping structure for table avtosalon.modeli
CREATE TABLE IF NOT EXISTS `modeli` (
  `modeli_id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `modeli_name` varchar(50) NOT NULL,
  `color` varchar(25) NOT NULL,
  `price` mediumint(10) NOT NULL,
  `marki_id` int(3) NOT NULL,
  PRIMARY KEY (`modeli_id`),
  KEY `marki_id` (`marki_id`),
  CONSTRAINT `modeli_ibfk_1` FOREIGN KEY (`marki_id`) REFERENCES `marki` (`marki_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table avtosalon.modeli: ~0 rows (approximately)


-- Dumping database structure for chuchukovska
CREATE DATABASE IF NOT EXISTS `chuchukovska` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `chuchukovska`;

-- Dumping structure for table chuchukovska.marki
CREATE TABLE IF NOT EXISTS `marki` (
  `marki_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `marki_name` varchar(25) NOT NULL,
  `country` varchar(40) NOT NULL,
  `eu` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`marki_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table chuchukovska.marki: ~36 rows (approximately)
INSERT INTO `marki` (`marki_id`, `marki_name`, `country`, `eu`) VALUES
	(2, 'BMW', 'D', 1),
	(3, 'BMW', 'JP', 0),
	(4, 'AUDI', 'D', 1),
	(5, 'TOYOTA', 'JAP', 0),
	(6, 'AUDI', 'D', 1),
	(7, 'TOYOTA', 'JAP', 0),
	(8, 'SKODA', 'CZ', 0),
	(9, 'AUDI', 'D', 1),
	(10, 'TOYOTA', 'JAP', 0),
	(11, 'AUDI', 'D', 1),
	(12, 'TOYOTA', 'JAP', 0),
	(13, 'AUDI', 'D', 1),
	(14, 'AUDI', 'D', 1),
	(15, 'TOYOTA', 'JAP', 0),
	(16, 'AUDI', 'D', 1),
	(17, 'TOYOTA', 'JAP', 0),
	(18, 'skoda ', 'CZ', 1),
	(19, 'Ferrari', 'IT', 1),
	(20, 'Ford', 'USA', 0),
	(21, 'AUDI', 'D', 1),
	(22, 'Bugatti', 'FR', 1),
	(23, 'JEEP', 'USA', 0),
	(24, 'Land Rover', 'UK', 0),
	(25, 'Bently', 'UK', 0),
	(26, 'Toyota', 'JP', 0),
	(27, 'Volvo', 'SW', 1),
	(28, 'Skoda', 'CZ', 1),
	(29, 'Toyota', 'JP', 0),
	(30, 'Volvo', 'SW', 1),
	(31, 'Skoda', 'CZ', 1),
	(32, 'Ford', 'USA', 0),
	(33, 'Fiat', 'IT', 1),
	(34, 'AUDI', 'FR', 1),
	(36, 'Audi', 'FR', 1),
	(38, 'Audi', 'FR', 1),
	(41, 'Audi', 'FR', 1);

-- Dumping structure for table chuchukovska.modeli
CREATE TABLE IF NOT EXISTS `modeli` (
  `modeli_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `modeli_name` varchar(50) NOT NULL,
  `price` mediumint(10) unsigned NOT NULL,
  `color` varchar(25) NOT NULL,
  `marki_id` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`modeli_id`),
  KEY `FK_modeli_marki` (`marki_id`),
  CONSTRAINT `FK_modeli_marki` FOREIGN KEY (`marki_id`) REFERENCES `marki` (`marki_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table chuchukovska.modeli: ~16 rows (approximately)
INSERT INTO `modeli` (`modeli_id`, `modeli_name`, `price`, `color`, `marki_id`) VALUES
	(1, 'A4', 2400, '#000000', 9),
	(2, 'A4', 2800, '#100000', 9),
	(3, 'A4', 2400, '#b00000', 9),
	(4, 'A4', 2800, '#000001', 2),
	(5, 'A4', 3400, '#a00000', 2),
	(6, 'A4', 3800, '#00000', 2),
	(7, '', 4200, '#000000', 2),
	(8, 'X5', 5000, '#000000', 2),
	(9, 'X5', 5300, '#100000', 2),
	(10, 'X5M', 4800, '#000000', 2),
	(11, 'ACORD', 3500, '#000000', 2),
	(12, 'Fiesta', 3900, '#000000', 32),
	(13, 'RangeRover', 6500, '#100000', 2),
	(14, 'A7', 4400, '#000000', 2),
	(15, 'Focus', 3300, '#100000', 2),
	(17, 'A5', 4500, 'red', 9);

-- Dumping structure for table chuchukovska.obuki
CREATE TABLE IF NOT EXISTS `obuki` (
  `obuki_id` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`obuki_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table chuchukovska.obuki: ~3 rows (approximately)
INSERT INTO `obuki` (`obuki_id`, `title`, `description`) VALUES
	(1, 'ST', 'Noob'),
	(2, 'Front-End', 'Noob'),
	(3, 'Back-End', 'Noob');

-- Dumping structure for table chuchukovska.studenti
CREATE TABLE IF NOT EXISTS `studenti` (
  `Studenti_id` int(10) unsigned NOT NULL,
  `First_name` varchar(50) NOT NULL,
  `Last_name` varchar(50) NOT NULL,
  `obuki_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Studenti_id`),
  KEY `FK_studenti_obuki` (`obuki_id`),
  CONSTRAINT `FK_studenti_obuki` FOREIGN KEY (`obuki_id`) REFERENCES `obuki` (`obuki_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table chuchukovska.studenti: ~1 rows (approximately)
INSERT INTO `studenti` (`Studenti_id`, `First_name`, `Last_name`, `obuki_id`) VALUES
	(1, 'marija', 'Chuchukovska', 1);

-- Dumping structure for table chuchukovska.vraboteni
CREATE TABLE IF NOT EXISTS `vraboteni` (
  `vr_id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `ime` varchar(25) NOT NULL,
  `prezime` varchar(35) NOT NULL,
  `godini` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`vr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table chuchukovska.vraboteni: ~0 rows (approximately)

-- Dumping structure for procedure chuchukovska._counrty_desc
DELIMITER //
CREATE PROCEDURE `_counrty_desc`()
BEGIN
SELECT * FROM marki 
ORDER BY marki_id DESC;
END//
DELIMITER ;

-- Dumping structure for procedure chuchukovska._count_groupby_fabriki
DELIMITER //
CREATE PROCEDURE `_count_groupby_fabriki`(
	IN `Limit3` INT
)
BEGIN
SELECT country, COUNT(marki_id) AS Br_na_fabriki
FROM marki
GROUP BY country
ORDER BY br_na_fabriki DESC,country ASC
LIMIT LIMIT3;
END//
DELIMITER ;

-- Dumping structure for procedure chuchukovska._delete_marki
DELIMITER //
CREATE PROCEDURE `_delete_marki`(
	IN `marki_id_param` TINYINT(3)
)
BEGIN
DELETE FROM marki
WHERE marki_id=marki_id_param;
END//
DELIMITER ;

-- Dumping structure for procedure chuchukovska._insert_marki
DELIMITER //
CREATE PROCEDURE `_insert_marki`(
	IN `marki_name_param1` VARCHAR(25),
	IN `country_param2` VARCHAR(35),
	IN `eu_param3` TINYINT(1)
)
BEGIN
INSERT INTO marki (marki_name,country,eu)
VALUES (marki_name_param1,country_param2,eu_param3);
END//
DELIMITER ;

-- Dumping structure for procedure chuchukovska._insert_modeli
DELIMITER //
CREATE PROCEDURE `_insert_modeli`(
	IN `modeli_name_param1` VARCHAR(50),
	IN `price_param2` INT,
	IN `color_param3` VARCHAR(50)
)
BEGIN
INSERT into modeli (modeli_name,price,color)
values (modeli_name_param1,price_param2,color_param3);
END//
DELIMITER ;

-- Dumping structure for procedure chuchukovska._marki_desc
DELIMITER //
CREATE PROCEDURE `_marki_desc`()
BEGIN
SELECT*
FROM marki 
ORDER BY marki_name DESC;
END//
DELIMITER ;

-- Dumping structure for procedure chuchukovska._select_marki
DELIMITER //
CREATE PROCEDURE `_select_marki`()
BEGIN
SELECT * FROM marki;
END//
DELIMITER ;

-- Dumping structure for procedure chuchukovska._select_marki_by_country
DELIMITER //
CREATE PROCEDURE `_select_marki_by_country`(
	IN `country_param` VARCHAR(50)
)
BEGIN
SELECT * FROM marki
WHERE country LIKE country_param;
END//
DELIMITER ;

-- Dumping structure for procedure chuchukovska._select_marki_by_eu
DELIMITER //
CREATE PROCEDURE `_select_marki_by_eu`(
	IN `country_param1` TINYINT(1),
	IN `country_param2` TINYINT(1)
)
BEGIN
SELECT * FROM marki
WHERE country=country_param1 OR country_param2 ;
END//
DELIMITER ;

-- Dumping structure for procedure chuchukovska._select_marki_by_name
DELIMITER //
CREATE PROCEDURE `_select_marki_by_name`()
BEGIN
Select * From marki
order by marki_name;
END//
DELIMITER ;

-- Dumping structure for procedure chuchukovska._select_modeli
DELIMITER //
CREATE PROCEDURE `_select_modeli`()
BEGIN
SELECT * from modeli ;
END//
DELIMITER ;


-- Dumping database structure for courses
CREATE DATABASE IF NOT EXISTS `courses` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `courses`;

-- Dumping structure for table courses.courses
CREATE TABLE IF NOT EXISTS `courses` (
  `course_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `course_name` varchar(20) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table courses.courses: ~5 rows (approximately)
INSERT INTO `courses` (`course_id`, `course_name`, `duration`, `price`) VALUES
	(1, 'SoftwareTester', '4months', '28000'),
	(2, 'JAVA', '5months', '37500'),
	(3, 'Pyton', '4months', '32000'),
	(4, 'DataScience', '5months', '40000'),
	(5, 'PHP', '5months', '30000');

-- Dumping structure for table courses.students
CREATE TABLE IF NOT EXISTS `students` (
  `student_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `city` varchar(10) NOT NULL,
  `course_id` int(3) unsigned NOT NULL,
  PRIMARY KEY (`student_id`),
  KEY `FK_students_courses` (`course_id`),
  CONSTRAINT `FK_students_courses` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table courses.students: ~16 rows (approximately)
INSERT INTO `students` (`student_id`, `first_name`, `last_name`, `city`, `course_id`) VALUES
	(1, 'Marija', 'Chuchukovska', 'Bitola', 1),
	(2, 'Aleksandar', 'Krstevski', 'Ohrid', 1),
	(3, 'Maja', 'Joshevska', 'Kicevo', 5),
	(4, 'Ivan', 'Nikolovski', 'Prilep', 4),
	(5, 'Bojan', 'Petkovski', 'Kicevo', 2),
	(6, 'Angela', 'Bozinovska', 'Ohrid', 2),
	(7, 'Jovna', 'Boshevska', 'Kicevo', 3),
	(8, 'Ivana', 'Stepanovska', 'Ohrid', 4),
	(9, 'Nikola', 'Stojanovski', 'Prilep', 1),
	(10, 'Borche', 'Hristovski', 'Bitola', 5),
	(11, 'Oliver', 'Petrovski', 'Bitola', 2),
	(12, 'Aneta', 'Dimovska', 'Bitola', 3),
	(13, 'Stefan', 'Stefanovski', 'Ohrid', 3),
	(14, 'Irena', 'Pavlovska', 'Prilep', 4),
	(15, 'Dejan', 'Dimovski', 'Bitola', 5),
	(16, 'Zlatko', 'Vasilevski', 'Kavadarci', 3);

-- Dumping structure for procedure courses._delete_courses
DELIMITER //
CREATE PROCEDURE `_delete_courses`(
	IN `course_id_param` INT
)
BEGIN
DELETE FROM courses
WHERE course_id=course_id_param;
END//
DELIMITER ;

-- Dumping structure for procedure courses._delete_students
DELIMITER //
CREATE PROCEDURE `_delete_students`(
	IN `student_id_param` INT
)
BEGIN
DELETE FROM students
WHERE student_id=student_id_param;
END//
DELIMITER ;

-- Dumping structure for procedure courses._insert_courses
DELIMITER //
CREATE PROCEDURE `_insert_courses`(
	IN `course_name_param1` VARCHAR(20),
	IN `duration_param2` VARCHAR(20),
	IN `price_param3` VARCHAR(20)
)
BEGIN
INSERT INTO courses (course_name,duration,price)
VALUES (course_name_param1,duration_param2,price_param3);
END//
DELIMITER ;

-- Dumping structure for procedure courses._insert_students
DELIMITER //
CREATE PROCEDURE `_insert_students`(
	IN `first_name_param1` VARCHAR(20),
	IN `last_name_param2` VARCHAR(20),
	IN `city_param3` VARCHAR(10),
	IN `course_id_param4` INT
)
BEGIN
INSERT INTO students (first_name,last_name,city,course_id)
VALUE (first_name_param1,last_name_param2,city_param3,course_id_param4);
END//
DELIMITER ;

-- Dumping structure for procedure courses._select_courses
DELIMITER //
CREATE PROCEDURE `_select_courses`()
BEGIN
SELECT * FROM courses;
END//
DELIMITER ;

-- Dumping structure for procedure courses._select_students
DELIMITER //
CREATE PROCEDURE `_select_students`()
BEGIN
SELECT * FROM students;
END//
DELIMITER ;

-- Dumping structure for procedure courses._students
DELIMITER //
CREATE PROCEDURE `_students`()
BEGIN
SELECT * FROM students
INNER JOIN courses
ON students.course_id=courses.course_id;
END//
DELIMITER ;

-- Dumping structure for procedure courses._update_courses
DELIMITER //
CREATE PROCEDURE `_update_courses`(
	IN `price_param1` VARCHAR(10),
	IN `course_id_param2` INT
)
BEGIN
UPDATE courses
SET price=price_param1
WHERE course_id=course_id_param2;
END//
DELIMITER ;

-- Dumping structure for procedure courses._update_students
DELIMITER //
CREATE PROCEDURE `_update_students`(
	IN `city_param1` VARCHAR(10),
	IN `student_id_param2` INT(3)
)
BEGIN
UPDATE students
SET city=city_param1
WHERE student_id=student_id_param2;
END//
DELIMITER ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
