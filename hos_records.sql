CREATE DATABASE IF NOT EXISTS `hospital_records`;

USE `hospital_records`;

/*Table structure for table `doctors` */

DROP TABLE IF EXISTS `doctors`;

CREATE TABLE `doctors` (
  `Doctor_ID` varchar(50),
  `Doctor_Name` varchar(50) NOT NULL,
  `Experience` int(5) NOT NULL,
  `Speciality` varchar(10) NOT NULL,
  PRIMARY KEY (`Doctor_ID`));

/*Data for the table `doctors` */

insert  into `doctors`(`Doctor_ID`, `Doctor_Name`, `Experience`, `Speciality`) values 
('A002', 'John Cantwell', 13, 'Dietician'),
('A01','Sean Murphy', 5, 'Surgeon'),
('A03', 'Favour Queen', 7, 'Dentist');


/*Table structure for table `patients` */

DROP TABLE IF EXISTS `patients`;

CREATE TABLE `patients` (
  `Patient_ID` varchar(11) NOT NULL,
  `Patient_Name` varchar(50) NOT NULL,
  `Height` int(50) NOT NULL,
  `Weight` int(50) NOT NULL,
  `Sex` varchar(50) NOT NULL,
  `Doctor_ID` varchar(50) NOT NULL,
  PRIMARY KEY (`Patient_ID`),
  FOREIGN KEY (`Doctor_ID`) REFERENCES `doctors`(`Doctor_ID`));

/*Data for the table `patients` */

insert  into `patients`(`Patient_ID`, `Patient_Name`, `Height`, `Weight`, `Sex`, `Doctor_ID`) values 
('B01','Richard Rodrot', 160, 67, 'Male', 'A01'),
('B02', 'Wayne Gakuo', 174, 77, 'Male', 'A01' ),
('B03', 'Lydia Barret', 150, 57, 'Female', 'A002' ),
('B04', 'Hellena Chopman', 156, 69, 'Female', 'A03'),
('B05', 'Elijah Abudulahi', 146, 74, 'Male', 'A002'),
('B06', 'Diana Kingship', 166, 78, 'Female', 'A03');

-- BACKUP DATABASE trials
-- TO DISK = '/home/david08/Music/';
