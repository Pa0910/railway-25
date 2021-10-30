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
insert into Department (Department_Name) values ('Phòng thiết kê');
insert into Department (Department_Name) values ('Phòng thi công');
insert into Department (Department_Name) values ('Phòng đầu tư');
insert into Department (Department_Name) values ('Phòng hành chính');
insert into Department (Department_Name) values ('Phòng kế toán');
insert into Department (Department_Name) values ('Phòng kiểm soát nội bộ');
insert into Department (Department_Name) values ('Phòng tài vụ');
insert into Department (Department_Name) values ('Phòng kĩ thuật');
insert into Department (Department_Name) values ('Phòng QLTT');
insert into Department (Department_Name) values ('Phòng kế hoạch');
insert into Department (Department_Name) values ('Phòng nhân sự');
insert into Department (Department_Name) values ('Văn phòng');
insert into Department (Department_Name) values ('Giám đốc');

        #Insert Position
insert into Position (Position_Name) values ('Giám đốc');
insert into Position (Position_Name) values ('Trưởng phòng');
insert into Position (Position_Name) values ('Nhân viên');
insert into Position (Position_Name) values ('Kế toán');
insert into Position (Position_Name) values ('Thủ kho');
insert into Position (Position_Name) values ('Thủ quỹ');
insert into Position (Position_Name) values ('Thư kí');
insert into Position (Position_Name) values ('lễ tân');
# Select*from Position;
         
		#Insert Account
	insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('niwanogen@gmail.com', 'gen176', 'Niwanogen', '1');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('Pa@gmail.com', 'Pa16', 'Nguyến Phương Anh', '2');
	insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('Vuthao@gmail.com', 'VuThao25', 'Vũ Thị Thảo', '3');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('Thuhue@gmail.com', 'Hue25', 'Trần Thu Huệ', '4');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('Phihung@gmail.com', 'Hung25', 'Trần Phi Hùng', '5');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('AnhNgoc@gmail.com', 'ngoc25', 'Lê Ánh Ngọc', '6');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('Ducthanh@gmail.com', 'Đt25', 'Phạm Đức Thanh', '7');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('Transon@gmail.com', 'Tson25', 'Trần Đức Sơn', '8');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('Huynhphuoc@gmail.com', 'HP25', 'Phan Huỳnh Phước', '3');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('manhtu@gmail.com', 'Mt25', 'Hà Mạnh Tú', '4');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('congson@gmail.com', 'CS25', 'Phạm Công Sơn', '5');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('ngocthe@gmail.com', 'the25', 'Đào Văn Thể', '6');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('Xuanthai@gmail.com', 'XT25', 'Trịnh Xuân Thái', '7');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('Kimdung@gmail.com', 'KD25', 'Phạm Hoàng Kim Dung', '8');
    insert into `Account` (Email_adress, Use_name, Full_name,Position_ID ) values ('hoangcuong@gmail.com', 'HC25', 'Hoàng Văn Cường', '2');

    
#select*from  `Account` ;
    
         #insert Group
         
         insert into `Group`(Group_Name, Creator_ID) values ('Kinh doanh giỏi', '1');
         insert into `Group`(Group_Name, Creator_ID) values ('Trai xinh gái đẹp', '2');
          insert into `Group`(Group_Name, Creator_ID) values ('Giỏi kiếm tiền', '3');
          insert into `Group`(Group_Name, Creator_ID) values ('Reviews', '4');
         insert into `Group`(Group_Name, Creator_ID) values ('Thích khám phá', '5');
          insert into `Group`(Group_Name, Creator_ID) values ('Ưa mạo hiểm', '6');
	    insert into `Group`(Group_Name, Creator_ID) values ('Không chấp nhận rủi ro', '7');
	    insert into `Group`(Group_Name, Creator_ID) values ('Cùng trải nghiệm', '8');
	  insert into `Group`(Group_Name, Creator_ID) values ('Đi làm để cho vui', '9');
      insert into `Group`(Group_Name, Creator_ID) values ('Đi làm để cho vui', '10');
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
            insert into `Type_Question`(Type_Name) values ('Dễ');
            insert into `Type_Question`(Type_Name) values ('Khó');
            insert into `Type_Question`(Type_Name) values ('Trung bình');
            
	#delete from Type_Question;
        #    select*from `Type_Question`;
           
           #insert Category_Question
           insert into Category_Question (Category_Name) values ('sôi nổi'); 
           insert into Category_Question (Category_Name) values ('rùng rợn'); 
           insert into Category_Question (Category_Name) values ('âm u'); 
           insert into Category_Question (Category_Name) values ('vui tươi'); 
           insert into Category_Question (Category_Name) values ('nghiêm túc'); 
           # select*from Category_Question;
            
            
		#Insert Question
	insert into Question(Content, Creator_ID) values ('Bạn có tham gia lễ hội Halloween lần này không', 2);
           insert into Question(Content, Creator_ID) values ('Nếu có bạn sẽ mặc trang phục gì', 5);
           insert into Question(Content, Creator_ID) values ('Bạn sẽ đi cùng với ai', 2);
           insert into Question(Content, Creator_ID) values ('Bạn có thể tham gia hóa trang không', 3);
           insert into Question(Content, Creator_ID) values ('Bạn có tham gia tiệc rượu không',1);
           insert into Question(Content, Creator_ID) values ('Bạn có SỢ MA không', 3);
           
		#select*from Question;
        
        # Insert Answer
        Insert into  Answer( Content, Question_ID) values ('Tôi rất muốn được đi đưa đu đi', 2);
        Insert into  Answer( Content, Question_ID) values ('Có thể tôi sẽ không mặc gì', 3);
        Insert into  Answer( Content, Question_ID) values ('Tôi muốn đi cùng đứa tôi ghét nhất', 4);
        Insert into  Answer( Content, Question_ID) values ('Tôi xấu mặc định rồi nên không cần hóa trang', 5);
        Insert into  Answer( Content, Question_ID) values ('Nếu free thì tôi sẽ nhiệt tình', 6);
        Insert into  Answer( Content, Question_ID) values ('Ma sợ tôi thì đúng hơn', 7);
       # select*from Answer;
       
       #Insert Exam
       Insert into Exam(Code_Exam, title_exam, categoryID, Creator_ID) values ('1', 'Quẩy', 1, 2);
	   Insert into Exam(Code_Exam, title_exam, categoryID, Creator_ID) values ('2', 'Sợ hãi', 2, 3);
       Insert into Exam(Code_Exam, title_exam, categoryID, Creator_ID) values ('3', 'Kinh khủng', 3, 4);
	   Insert into Exam(Code_Exam, title_exam, categoryID, Creator_ID) values ('4', 'Thích màu hồng', 4, 5);
	   Insert into Exam(Code_Exam, title_exam, categoryID, Creator_ID) values ('5', 'Vô cảm', 5, 6);
	   Insert into Exam(Code_Exam, title_exam, categoryID, Creator_ID) values ('6', 'Chơi hết mình', 1, 7);
      # select*from Exam;

        