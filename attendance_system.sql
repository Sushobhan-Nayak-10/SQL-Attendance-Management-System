/*Table structure for table `attend1` */

DROP TABLE IF EXISTS `attend1`;

CREATE TABLE `attend1` (
  `date` varchar(30) DEFAULT NULL,
  `faculty_id` varchar(30) DEFAULT NULL,
  `batch_id` varchar(30) DEFAULT NULL,
  `student_id` varchar(30) DEFAULT NULL,
  `student_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `attend1` */

/*Table structure for table `batch` */

DROP TABLE IF EXISTS `batch`;

CREATE TABLE `batch` (
  `batch_id` varchar(30) NOT NULL,
  `subject` varchar(30) DEFAULT NULL,
  `days` varchar(30) DEFAULT NULL,
  `faculty_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `batch` */

insert into `batch` (`batch_id`,`subject`,`days`,`faculty_id`) values ('101','Core java','25','001');
insert into `batch` (`batch_id`,`subject`,`days`,`faculty_id`) values ('102','Advance Java','35','002');
insert into `batch` (`batch_id`,`subject`,`days`,`faculty_id`) values ('103','PHP','40','003');

/*Table structure for table `faculty` */

DROP TABLE IF EXISTS `faculty`;

CREATE TABLE `faculty` (
  `faculty_id` varchar(30) NOT NULL,
  `ffname` varchar(30) DEFAULT NULL,
  `flname` varchar(30) DEFAULT NULL,
  `userid` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `contact` varchar(30) DEFAULT NULL,
  `salary` varchar(30) DEFAULT NULL,
  `opened` varchar(30) DEFAULT 'not_opened',
  PRIMARY KEY (`faculty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `faculty` */

insert into `faculty` (`faculty_id`,`ffname`,`flname`,`userid`,`password`,`contact`,`salary`,`opened`) values ('001','Ankit','Mehra','ankit001','ankit','9900998729','25000','not_opened');
insert into `faculty` (`faculty_id`,`ffname`,`flname`,`userid`,`password`,`contact`,`salary`,`opened`) values ('002','Sonu','Nigam','sonu002','sonu','9900878987','30000','not_opened');
insert into `faculty` (`faculty_id`,`ffname`,`flname`,`userid`,`password`,`contact`,`salary`,`opened`) values ('003','Katrina','Kaif','katrina003','katrina','9425022909','25000','not_opened');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `student_id` varchar(30) NOT NULL,
  `sfname` varchar(30) DEFAULT NULL,
  `slname` varchar(30) DEFAULT NULL,
  `userid` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `contact` varchar(30) DEFAULT NULL,
  `batchid` varchar(30) DEFAULT NULL,
  `opened` varchar(30) DEFAULT 'not_opened',
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert into `student` (`student_id`,`sfname`,`slname`,`userid`,`pass`,`gender`,`contact`,`batchid`,`opened`) values ('001','Kaushal','Arora','kaushal001','1234','male','9988776655','101','not_opened');
insert into `student` (`student_id`,`sfname`,`slname`,`userid`,`pass`,`gender`,`contact`,`batchid`,`opened`) values ('002','Rajeev','Singh','rajeev002','rajeev','male','9900998877','101','not_opened');
insert into `student` (`student_id`,`sfname`,`slname`,`userid`,`pass`,`gender`,`contact`,`batchid`,`opened`) values ('003','Pooja','Agrawal','pooja003','pooja','female','9008899009','101','not_opened');
insert into `student` (`student_id`,`sfname`,`slname`,`userid`,`pass`,`gender`,`contact`,`batchid`,`opened`) values ('004','Akshay','Kumar','akshay004','akshay','male','9425099800','102','not_opened');
insert into `student` (`student_id`,`sfname`,`slname`,`userid`,`pass`,`gender`,`contact`,`batchid`,`opened`) values ('005','Ranbir','Kapoor','ranbir005','ranbir','male','9425077229','101','not_opened');
insert into `student` (`student_id`,`sfname`,`slname`,`userid`,`pass`,`gender`,`contact`,`batchid`,`opened`) values ('006','Yogita','Mehra','yogita108','yogita','female','9425099089','103','not_opened');

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `subject_id` varchar(30) NOT NULL,
  `subject_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `subject` */

insert into `subject` (`subject_id`,`subject_name`) values ('201','Core java');
insert into `subject` (`subject_id`,`subject_name`) values ('202','Advance Java');
insert into `subject` (`subject_id`,`subject_name`) values ('203','PHP');