CREATE TABLE `Employee` (
	`employee_id` INT(10) NOT NULL AUTO_INCREMENT,
	`employee_name` VARCHAR(10) NOT NULL,
	`department` VARCHAR(5) NOT NULL,
	`supervisor_id` INT(10) NOT NULL,
	`role_id` VARCHAR(3) NOT NULL,
	PRIMARY KEY (`employee_id`)
);

CREATE TABLE `Leave` (
	`employee_id` INT(10) NOT NULL,
	`leave_type` VARCHAR(8) NOT NULL,
	`leaves_available` INT(4) NOT NULL,
	`leave_taken` INT(4) NOT NULL
);

CREATE TABLE `Leave_Req_Details` (
	`request_id` INT NOT NULL AUTO_INCREMENT,
	`employee_id` INT NOT NULL,
	`leave_type` VARCHAR(255) NOT NULL,
	`leave_start_date` DATETIME NOT NULL,
	`leave_end_date` DATETIME NOT NULL,
	`supervisor_id` INT NOT NULL,
	`status` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`request_id`)
);

CREATE TABLE `Role` (
	`role_id` VARCHAR(255) NOT NULL,
	`role` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`role_id`)
);

CREATE TABLE `Leave_Type` (
	`role_id` VARCHAR(255) NOT NULL,
	`leave_type` VARCHAR(255) NOT NULL,
	`leave_count` INT NOT NULL
);

ALTER TABLE `Employee` ADD CONSTRAINT `Employee_fk0` FOREIGN KEY (`supervisor_id`) REFERENCES `Employee`(`employee_id`);

ALTER TABLE `Employee` ADD CONSTRAINT `Employee_fk1` FOREIGN KEY (`role_id`) REFERENCES `Role`(`role_id`);

ALTER TABLE `Leave` ADD CONSTRAINT `Leave_fk0` FOREIGN KEY (`employee_id`) REFERENCES `Employee`(`employee_id`);

ALTER TABLE `Leave_Req_Details` ADD CONSTRAINT `Leave_Req_Details_fk0` FOREIGN KEY (`employee_id`) REFERENCES `Employee`(`employee_id`);

ALTER TABLE `Leave_Type` ADD CONSTRAINT `Leave_Type_fk0` FOREIGN KEY (`role_id`) REFERENCES `Role`(`role_id`);

insert into Employee values (123539,'Ram','ENG',11,'SE')
insert into Employee values (739488,'Syam','ENG',11,'SSE')
insert into Employee values (765433,'Reenu','FSADM',114,'TL')
insert into Employee values (523539,'Vijay','MFG',11,'SSE')

insert into Role values ('SE','Systems Engineer')
insert into Role values ('PM','Project Manager')
insert into Role values ('TL','Technology Lead')

insert into Leave_Type values ('SE','Medical',4)
insert into Leave_Type values ('SE','Earned',10)
insert into Leave_Type values ('PM','Medical',10)
insert into Leave_Type values ('SE','Earned',15)
insert into Leave_Type values ('TL','Medical',6)
insert into Leave_Type values ('TL','Earned',12)

