DROP DATABASE if exists testing_systems;
CREATE DATABASE Testing_system_bai2;
USE Testing_system_bai2;
#table departmen
CREATE TABLE Department(
Department_ID tinyint not null primary key auto_increment,
Department_Name nvarchar(50)

);


#table position
CREATE TABLE Position (
Position_ID tinyint not null primary key auto_increment,
Position_Name nvarchar(30)
);
#table Account
CREATE TABLE `Account`(
Account_ID int not null primary key auto_increment,
Email_adress nvarchar(50),
Use_name nvarchar(30),
Full_name nvarchar(30),
Department_ID tinyint,
Position_ID tinyint not null,
Create_date date
);
#table group
CREATE TABLE `Group`(
Group_ID tinyint not null primary key auto_increment,
Group_Name nvarchar(30),
Creator_ID tinyint,
Create_Date date
);

#table groupaccount
CREATE TABLE `Group_Account`(
Group_ID tinyint not null primary key,
Account_ID int not null,
Join_date date,
CONSTRAINT lien_ket1 FOREIGN KEY(Group_ID)REFERENCES `Group`(Group_ID)
);


#table typeQuestion
CREATE TABLE `Type_Question`(
Type_ID tinyint primary key auto_increment not null,
Type_Name char(50)
);

#table CategoryQuestion
CREATE TABLE Category_Question(
Category_ID tinyint not null primary key auto_increment,
Category_Name varchar(40)
);

#table Question 
CREATE TABLE Question(
Question_ID tinyint primary key auto_increment,
Content nvarchar(150),
Type_ID tinyint,
Creator_ID tinyint,
Create_Date date,
FOREIGN KEY (Type_ID)REFERENCES Type_Question(Type_ID)
);

#table Answer
CREATE TABLE Answer(
Answer_ID tinyint primary key not null auto_increment,
Content nvarchar (50),
Question_ID tinyint (50),
Iscorrect enum ('Yes''No'),
FOREIGN KEY (Question_ID)REFERENCES Question(Question_ID)
);

#table Exam
CREATE TABLE Exam(
Exam_ID tinyint not null primary key auto_increment,
Code_Exam tinyint,
title_exam nvarchar(100),
categoryID int not null,
Duration time,
Creator_id tinyint,
Create_date datetime
);

#table exam question
CREATE TABLE Exam_Question(
Exam_ID tinyint primary key,
Question_id tinyint,
FOREIGN KEY(Exam_ID)REFERENCES Exam(Exam_ID)
);


ALTER TABLE Group_Account  ADD CONSTRAINT LK_Account FOREIGN KEY (Account_ID) REFERENCES `Account` (Accoun_ID);
ALTER TABLE  `Account`   ADD CONSTRAINT   LK_2       FOREIGN KEY (Department_ID) REFERENCES Department (Department_ID);
ALTER TABLE  `Account`   ADD CONSTRAINT  LK_3        FOREIGN KEY (Position_ID)  REFERENCES  Position (Position_ID)  ;
