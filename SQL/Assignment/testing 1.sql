create database testing_systems;
use testing_systems;
#table departmen
create table department(
Departmen_id int not null auto_increment,
Departmen_Name nvarchar(100),
primary key (Departmen_id)
);

#table position
create table Position (
Position_id int not null auto_increment,
Position_Name nvarchar(30),
primary key (Position_id)
);
#table Account
create table Accoun(
Accoun_id int not null auto_increment,
Email_adress nvarchar(50),
Use_name nvarchar(30),
full_name nvarchar(30),
department_id int not null,
position_id int not null,
create_date timestamp,
primary key (Accoun_id)


);

#table group
create table grp(
group_id int not null auto_increment,
group_name nvarchar(30),
creator_id int,
create_date timestamp,
primary key (group_id)
);

#table groupaccount
create table grpacc(
group_id int not null, 
accountID int not null,
join_date timestamp,
primary key (group_id)


);



#table typeQuestion
create table typeQ(
Type_id int not null auto_increment,
type_name nvarchar(150),
primary key (Type_id)
);

#table CategoryQuestion
create table CateQ(
category_id int not null auto_increment,
category_name varchar(40),
 primary key (category_id)
);

#table Question 
create table Question(
question_id int not null auto_increment,
content nvarchar(150),
questionID int,
iscorrect varchar(5),
primary key (question_id)
);

#table Answer
create table answer(
answer_id int not null auto_increment,
content nvarchar (300),
question_id nvarchar (150),
iscorrect varchar (5),
primary key (answer_id)
);

#table Exam
create table exam(
exam_id int not null auto_increment,
code_exam int,
title_exam nvarchar(100),
categoryID int not null,
duration timestamp,
creator_id int not null,
create_date date,
primary key (exam_id)
);

#table exam question
create table examQ(
exam_id int,
question_id int,
primary key (exam_id)
);