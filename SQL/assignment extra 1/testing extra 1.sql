create database extra_assignments1;
use extra_assignments1;
create table Trainee(
trainee_id int not null auto_increment,
full_name nvarchar(30),
birth_date date,
gender varchar(10),
ET_IQ int,
ET_Gmath int,
ET_English int,
training_class date,
evaluation_notes nvarchar(50),
primary key (trainee_id)
);

#table VTI 
create table VTI_Account(
student_id int not null auto_increment,
Full_name nvarchar(30),
birth_date date,
email_adress nvarchar(50),
class nvarchar(20),
primary key (student_id)
);