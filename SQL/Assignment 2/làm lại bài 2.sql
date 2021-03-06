CREATE DATABASE Testing_system_assignment2; 
USE Testing_system_assignment2; 

  

  

              #table departmen 

CREATE TABLE Department( 
Department_ID tinyint primary key auto_increment not null, 
Department_Name nvarchar(50) 
); 

  

  

#table position 

CREATE TABLE Position ( 
Position_ID tinyint not null primary key auto_increment, 
Position_Name nvarchar(30) 
); 

#table Account 

CREATE TABLE `Account`( 
Account_ID int not null primary key auto_increment unique, 
Email_adress nvarchar(50) unique, 
Use_name nvarchar(30), 
Full_name nvarchar(30), 
Department_ID tinyint, 
Position_ID tinyint not null, 
Create_date date, 

CONSTRAINT   LK_2       FOREIGN KEY (Department_ID) REFERENCES Department (Department_ID), 
CONSTRAINT  LK_3        FOREIGN KEY (Position_ID)  REFERENCES  Position (Position_ID) 

); 

#table group 

CREATE TABLE `Group`( 

Group_ID tinyint not null primary key auto_increment, 
Group_Name nvarchar(30), 
Creator_ID tinyint unique, 
Create_Date date 

); 

  

#table groupaccount 

CREATE TABLE `Group_Account`( 

Group_ID tinyint not null primary key, 
Account_ID int not null, 
Join_date date, 

CONSTRAINT lien_ket1 FOREIGN KEY(Group_ID)REFERENCES `Group`(Group_ID), 
CONSTRAINT LK_Account FOREIGN KEY (Account_ID) REFERENCES `Account` (Account_ID) 

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
Creator_ID tinyint not null, 
Create_Date date,

CONSTRAINT type_id FOREIGN KEY(Type_ID)REFERENCES Type_Question(Type_ID), 
CONSTRAINT Creator_id FOREIGN KEY(Creator_ID )REFERENCES `Group` (Creator_ID ) 
); 

  

#table Answer 

CREATE TABLE Answer( 
Answer_ID tinyint primary key not null auto_increment, 
Content nvarchar (50), 
Question_ID tinyint (50), 
Iscorrect enum ('Yes''No'), 

CONSTRAINT question_id FOREIGN KEY (Question_ID) REFERENCES  Question(Question_ID) 

); 

  

#table Exam 

CREATE TABLE Exam( 
Exam_ID tinyint not null primary key auto_increment, 
Code_Exam tinyint, 
title_exam nvarchar(100), 
categoryID int not null, 
Duration time, 
Creator_ID tinyint not null, 
Create_date datetime, 

CONSTRAINT creator FOREIGN KEY (Creator_ID) REFERENCES  `Group`(Creator_ID) 

); 

  

#table exam question 

CREATE TABLE Exam_Question( 
Exam_ID tinyint primary key, 
Question_id tinyint, 

FOREIGN KEY(Exam_ID)REFERENCES Exam(Exam_ID) 

); 


                    #insert Department
insert into Department (Department_Name) values ('Sale');
insert into Department (Department_Name) values ('Maketing');
insert into Department (Department_Name) values ('Ph??ng thi???t k??');
insert into Department (Department_Name) values ('Ph??ng thi c??ng');
insert into Department (Department_Name) values ('Ph??ng ?????u t??');
insert into Department (Department_Name) values ('Ph??ng h??nh ch??nh');
insert into Department (Department_Name) values ('Ph??ng k??? to??n');
insert into Department (Department_Name) values ('Ph??ng ki???m so??t n???i b???');
insert into Department (Department_Name) values ('Ph??ng t??i v???');
insert into Department (Department_Name) values ('Ph??ng k?? thu???t');
insert into Department (Department_Name) values ('Ph??ng QLTT');
insert into Department (Department_Name) values ('Ph??ng k??? ho???ch');
insert into Department (Department_Name) values ('Ph??ng nh??n s???');
insert into Department (Department_Name) values ('V??n ph??ng');
insert into Department (Department_Name) values ('Gi??m ?????c');

        #Insert Position
insert into Position (Position_Name) values ('Gi??m ?????c');
insert into Position (Position_Name) values ('Tr?????ng ph??ng');
insert into Position (Position_Name) values ('Nh??n vi??n');
insert into Position (Position_Name) values ('K??? to??n');
insert into Position (Position_Name) values ('Th??? kho');
insert into Position (Position_Name) values ('Th??? qu???');
insert into Position (Position_Name) values ('Th?? k??');
insert into Position (Position_Name) values ('l??? t??n');
# Select*from Position;
         
		#Insert Account
	insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('niwanogen@gmail.com', 'gen176', 'Niwanogen', '1');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('Pa@gmail.com', 'Pa16', 'Nguy???n Ph????ng Anh', '2');
	insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('Vuthao@gmail.com', 'VuThao25', 'V?? Th??? Th???o', '3');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('Thuhue@gmail.com', 'Hue25', 'Tr???n Thu Hu???', '4');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('Phihung@gmail.com', 'Hung25', 'Tr???n Phi H??ng', '5');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('AnhNgoc@gmail.com', 'ngoc25', 'L?? ??nh Ng???c', '6');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('Ducthanh@gmail.com', '??t25', 'Ph???m ?????c Thanh', '7');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('Transon@gmail.com', 'Tson25', 'Tr???n ?????c S??n', '8');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('Huynhphuoc@gmail.com', 'HP25', 'Phan Hu???nh Ph?????c', '3');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('manhtu@gmail.com', 'Mt25', 'H?? M???nh T??', '4');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('congson@gmail.com', 'CS25', 'Ph???m C??ng S??n', '5');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('ngocthe@gmail.com', 'the25', '????o V??n Th???', '6');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('Xuanthai@gmail.com', 'XT25', 'Tr???nh Xu??n Th??i', '7');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('Kimdung@gmail.com', 'KD25', 'Ph???m Ho??ng Kim Dung', '8');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('hoangcuong@gmail.com', 'HC25', 'Ho??ng V??n C?????ng', '2');

    
#select*from  `Account` ;
    
         #insert Group
         
         insert into `Group`(Group_Name, Creator_ID) values ('Kinh doanh gi???i', '1');
         insert into `Group`(Group_Name, Creator_ID) values ('Trai xinh g??i ?????p', '2');
          insert into `Group`(Group_Name, Creator_ID) values ('Gi???i ki???m ti???n', '3');
          insert into `Group`(Group_Name, Creator_ID) values ('Reviews', '4');
         insert into `Group`(Group_Name, Creator_ID) values ('Th??ch kh??m ph??', '5');
          insert into `Group`(Group_Name, Creator_ID) values ('??a m???o hi???m', '6');
	    insert into `Group`(Group_Name, Creator_ID) values ('Kh??ng ch???p nh???n r???i ro', '7');
	    insert into `Group`(Group_Name, Creator_ID) values ('C??ng tr???i nghi???m', '8');
	  insert into `Group`(Group_Name, Creator_ID) values ('??i l??m ????? cho vui', '9');
      insert into `Group`(Group_Name, Creator_ID) values ('??i l??m ????? cho vui', '10');
      # Select*from `Group`;
     # select*from `Account`;
     
                #insert Group Account
          insert into `Group_Account`(Group_ID, Account_ID, Join_date) values (2, 2, '2021-10-29');
          insert into `Group_Account`(Group_ID, Account_ID, Join_date) values (3, 3, '2021-10-29'); 
          insert into `Group_Account`(Group_ID, Account_ID, Join_date) values (4, 4, '2021-10-29'); 
         insert into `Group_Account`(Group_ID, Account_ID, Join_date) values (5, 5, '2021-10-29'); 
          insert into `Group_Account`(Group_ID, Account_ID, Join_date) values (6, 6, '2021-10-29'); 
          insert into `Group_Account`(Group_ID, Account_ID, Join_date) values (7, 7, '2021-10-29'); 
          insert into `Group_Account`(Group_ID, Account_ID, Join_date) values (8, 8, '2021-10-29'); 
          insert into `Group_Account`(Group_ID, Account_ID, Join_date) values (9, 9, '2021-10-29'); 
          insert into `Group_Account`(Group_ID, Account_ID, Join_date) values (10, 10, '2021-10-29'); 
        
        # select*from `Group_Account`;
        
            #insert type_question
            insert into `Type_Question`(Type_Name) values ('D???');
            insert into `Type_Question`(Type_Name) values ('Kh??');
            insert into `Type_Question`(Type_Name) values ('Trung b??nh');
            
	#delete from Type_Question;
        #    select*from `Type_Question`;
           
           #insert Category_Question
           insert into Category_Question (Category_Name) values ('s??i n???i'); 
           insert into Category_Question (Category_Name) values ('r??ng r???n'); 
           insert into Category_Question (Category_Name) values ('??m u'); 
           insert into Category_Question (Category_Name) values ('vui t????i'); 
           insert into Category_Question (Category_Name) values ('nghi??m t??c'); 
           # select*from Category_Question;
            
            
		#Insert Question
	insert into Question(Content, Creator_ID) values ('B???n c?? tham gia l??? h???i Halloween l???n n??y kh??ng', 2);
           insert into Question(Content, Creator_ID) values ('N???u c?? b???n s??? m???c trang ph???c g??', 5);
           insert into Question(Content, Creator_ID) values ('B???n s??? ??i c??ng v???i ai', 2);
           insert into Question(Content, Creator_ID) values ('B???n c?? th??? tham gia h??a trang kh??ng', 3);
           insert into Question(Content, Creator_ID) values ('B???n c?? tham gia ti???c r?????u kh??ng',1);
           insert into Question(Content, Creator_ID) values ('B???n c?? S??? MA kh??ng', 3);
           
		#select*from Question;
        
        # Insert Answer
        Insert into  Answer( Content, Question_ID) values ('T??i r???t mu???n ???????c ??i ????a ??u ??i', 2);
        Insert into  Answer( Content, Question_ID) values ('C?? th??? t??i s??? kh??ng m???c g??', 3);
        Insert into  Answer( Content, Question_ID) values ('T??i mu???n ??i c??ng ?????a t??i gh??t nh???t', 4);
        Insert into  Answer( Content, Question_ID) values ('T??i x???u m???c ?????nh r???i n??n kh??ng c???n h??a trang', 5);
        Insert into  Answer( Content, Question_ID) values ('N???u free th?? t??i s??? nhi???t t??nh', 6);
        Insert into  Answer( Content, Question_ID) values ('Ma s??? t??i th?? ????ng h??n', 7);
       # select*from Answer;
       
       #Insert Exam
       Insert into Exam(Code_Exam, title_exam, categoryID, Creator_ID) values ('1', 'Qu???y', 1, 2);
	   Insert into Exam(Code_Exam, title_exam, categoryID, Creator_ID) values ('2', 'S??? h??i', 2, 3);
       Insert into Exam(Code_Exam, title_exam, categoryID, Creator_ID) values ('3', 'Kinh kh???ng', 3, 4);
	   Insert into Exam(Code_Exam, title_exam, categoryID, Creator_ID) values ('4', 'Th??ch m??u h???ng', 4, 5);
	   Insert into Exam(Code_Exam, title_exam, categoryID, Creator_ID) values ('5', 'V?? c???m', 5, 6);
	   Insert into Exam(Code_Exam, title_exam, categoryID, Creator_ID) values ('6', 'Ch??i h???t m??nh', 1, 7);
      # select*from Exam;

        