

CREATE TABLE weeks (
  WeekNumber INT PRIMARY KEY
);
INSERT INTO weeks  (WeekNumber)
VALUES (10);
INSERT INTO weeks (WeekNumber)
VALUES (11);
INSERT INTO weeks (WeekNumber)
VALUES (12);
INSERT INTO weeks (WeekNumber)
VALUES (13);
INSERT INTO weeks (WeekNumber)
VALUES (14); 


 


CREATE TABLE teachers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    gender CHAR(1),
    age INT,
    password VARCHAR(20) );
INSERT INTO teachers (id, name, gender, age,password)
VALUES (1, 'Ahmed Amr', 'M', 35,'ahmedamr123');
INSERT INTO teachers (id, name, gender, age,password)
VALUES (2, 'Sarah Ahmed', 'F', 40,'sarahhh');
INSERT INTO teachers (id, name, gender, age,password)
VALUES (3, 'Mohamed Ramy', 'M', 45,'mo1970');
INSERT INTO teachers (id, name, gender, age,password)
VALUES (4, 'Amany Magdy', 'F', 38,'amanyy2');
INSERT INTO teachers (id, name, gender, age,password)
VALUES (5, 'Akram Mounir', 'M', 42,'akroom');

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender CHAR(1)
); 
INSERT INTO Students (StudentID, Name, Age, Gender)
VALUES (1, 'Omar Diab', 16, 'M');
INSERT INTO Students (StudentID, Name, Age, Gender)
VALUES (2, 'Eman Maged', 16, 'F');
INSERT INTO Students (StudentID, Name, Age, Gender)
VALUES (3, 'Ahmed Emad', 16, 'M');
INSERT INTO Students (StudentID, Name, Age, Gender)
VALUES (4, 'Jana Ayman', 16, 'F');
INSERT INTO Students (StudentID, Name, Age, Gender)
VALUES (5, 'Omar Hossam', 16, 'M');

 
CREATE TABLE courses (
    TeacherId INT,
    CourseName VARCHAR(50),
    CourseId INT,
    PRIMARY KEY (CourseId),
    FOREIGN KEY (TeacherId) REFERENCES Teachers(id) ON DELETE CASCADE
);
INSERT INTO courses (TeacherId, Coursename, CourseId)
VALUES (1, 'Mathematics', 101);
INSERT INTO courses (TeacherId, CourseName, CourseId)
VALUES (2, 'Physics', 102);
INSERT INTO courses (TeacherId,  CourseName, CourseID)
VALUES (3, 'Chemistry', 103);
INSERT INTO courses (TeacherId,  CourseName, CourseId)
VALUES (4, 'English', 104);
INSERT INTO courses (TeacherId, CourseName, CourseId)
VALUES (5, 'History', 105);

CREATE TABLE attendances (
    StudentId INT,
    CourseId INT,
    WeekNumber INT,
    status VARCHAR(10),
    comments VARCHAR(100),
    rate INT,
 FOREIGN KEY (StudentId) REFERENCES Students(StudentID)  ON DELETE CASCADE,
 FOREIGN KEY (CourseId) REFERENCES Courses(CourseId)  ON DELETE CASCADE,
 FOREIGN KEY (WeekNumber) REFERENCES Weeks(WeekNumber)  ON DELETE CASCADE
);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(1, 101, 10, 'Present', 'Good engagement', 4);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(1, 101, 12, 'Present', 'Good engagement', 5);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(1, 101, 11, 'Absent',NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(1, 101, 13, 'Present', 'Bad engagement', 2);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES 
(1, 102, 10, 'Present', 'Bad engagement', 2);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(1, 102, 11, 'Present', 'Good engagement', 5);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(1, 102, 13, 'Absent',NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(1, 102, 12, 'Present', 'Bad engagement', 3);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(1, 103, 10, 'Present', 'Good engagement', 4);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(1, 103, 11, 'Present', 'Good engagement', 5);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(1, 103, 12, 'Absent', NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(1, 103, 13, 'Present', 'Bad engagement', 2);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(1, 104, 12, 'Present', 'Bad engagement', 3);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(1, 104, 11, 'Present', 'Good engagement', 5); 
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(1, 104, 10, 'Absent', NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(1, 104, 13, 'Present', 'Good engagement', 4);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(1, 105, 10, 'Present', 'Bad engagement', 2);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(1, 105, 11, 'Present', 'Bad engagement', 3);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(1, 105, 12, 'Absent', NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(1, 105, 13, 'Present', 'Good engagement', 4);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(2, 101, 10, 'Absent', NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(2, 101, 11, 'Present', 'Good engagement', 3);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(2, 101, 12, 'Present', 'Bad engagement', 2); 
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(2, 101, 13, 'Present', 'Bad engagement', 1);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(2, 102, 10, 'Present', 'Good engagement', 4);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(2, 102, 11, 'Present', 'Good engagement', 5);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(2, 102, 12, 'Absent', NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(2, 102, 13, 'Present', 'Bad engagement', 2);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(2, 103, 10, 'Present', 'Bad engagement', 2);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(2, 103, 11, 'Present', 'Good engagement', 5);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(2, 103, 12, 'Absent', NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(2, 103, 13, 'Present', 'Bad engagement', 1); 
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(2, 104, 10, 'Present', 'Good engagement', 4);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(2, 104, 12, 'Present', 'Good engagement', 5);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(2, 104, 11, 'Absent', NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(2, 104, 13, 'Present', 'Bad engagement', 1);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(2, 105, 12, 'Present', 'Good engagement', 4);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(2, 105, 11, 'Present', 'Bad engagement', 2);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(2, 105, 10, 'Absent', NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(2, 105, 13, 'Present', 'Good engagement', 4);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(3, 101, 10, 'Present', 'Good engagement', 4); 
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(3, 101, 11, 'Present', 'Bad engagement', 2);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(3, 101, 13, 'Absent', NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(3, 101, 12, 'Present', 'Good engagement', 4);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(3, 102, 12, 'Present', 'Bad engagement', 2);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(3, 102, 11, 'Present', 'Bad engagement', 1);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(3, 102, 10, 'Absent', NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(3, 102, 13, 'Present', 'Good engagement', 4);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(3, 103, 10, 'Present', 'Bad engagement', 2);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(3, 103, 11, 'Present', 'Good engagement', 5); 
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(3, 103, 13, 'Absent', NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(3, 103, 12, 'Present', 'Bad engagement', 2);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(3, 104, 10, 'Present', 'Good engagement', 4);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(3, 104, 11, 'Present', 'Good engagement', 5);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(3, 104, 12, 'Absent',NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(3, 104, 13, 'Present', 'Bad engagement', 2);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(3, 105, 10, 'Present', 'Good engagement', 4);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(3, 105, 11, 'Present', 'Bad engagement', 3);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(3, 105, 12, 'Absent', NULL, NULL); 
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(3, 105, 13, 'Present', 'Good engagement', 3);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(4, 101, 10, 'Absent', NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(4, 101, 11, 'Present', 'Good engagement', 4);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(4, 101, 12, 'Present', 'Bad engagement', 2);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(4, 101, 13, 'Present', 'Good engagement', 4);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(4, 102, 10, 'Present', 'Good engagement', 4);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(4, 102, 11, 'Present', 'Good engagement', 5);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(4, 102, 12, 'Absent',NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(4, 102, 13, 'Present', 'Bad engagement', 2); 
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(4, 103, 10, 'Present', 'Bad engagement', 1);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(4, 103, 12, 'Present', 'Bad engagement', 2);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(4, 103, 11, 'Absent', NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(4, 103, 13, 'Present', 'Good engagement', 4);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(4, 104, 10, 'Present', 'Bad engagement', 2);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(4, 104, 11, 'Present', 'Good engagement', 5);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(4, 104, 12, 'Absent',NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(4, 104, 13, 'Present', 'Good engagement', 4);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(4, 105, 12, 'Present', 'Bad engagement', 3); 
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(4, 105, 11, 'Present', 'Bad engagement', 1);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(4, 105, 10, 'Absent', NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(4, 105, 13, 'Present', 'Bad engagement', 1);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(5, 101, 10, 'Present', 'Good engagement', 4);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(5, 101, 11, 'Present', 'Good engagement', 5);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(5, 101, 12, 'Absent', NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(5, 101, 13, 'Present', 'Bad engagement', 2);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(5, 102, 10, 'Present', 'Bad engagement', 2);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(5, 102, 11, 'Present', 'Bad engagement', 1); 
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(5, 102, 12, 'Absent',NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(5, 102, 13, 'Present', 'Good engagement', 4);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(5, 103, 10, 'Present', 'Bad engagement', 2);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(5, 103, 12, 'Present', 'Good engagement', 4);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(5, 103, 11, 'Absent',NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(5, 103, 13, 'Present', 'Good engagement', 5);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(5, 104, 10, 'Present', 'Bad engagement', 2);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(5, 104, 11, 'Present', 'Bad engagement', 1);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(5, 104, 13, 'Absent', NULL, NULL); 
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(5, 104, 12, 'Present', 'Good engagement', 4);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(5, 105, 10, 'Present', 'Good engagement', 5);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(5, 105, 11, 'Present', 'Good engagement', 5);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(5, 105, 12, 'Absent', NULL, NULL);
INSERT INTO Attendances (StudentId, CourseId, WeekNumber, Status, Comments, Rate)
VALUES
(5, 105, 13, 'Present', 'Bad engagement', 2);

CREATE TABLE Admins (
    AdminID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender CHAR(1),
    Password VARChAR(20)
); 
INSERT INTO Admins (AdminID, Name, Age, Gender, Password)
VALUES (2, 'Ahmed Omar', 30, 'M', 'ahmedomar90');
INSERT INTO Admins (AdminID, Name, Age, Gender, Password)
VALUES (1, 'Ahmed Zaki', 40, 'M','ahmedziko');
 


create or replace procedure getStudentNames
(CID out sys_refcursor)
as
begin
open CID for
select NAME 
from students;
end getStudentNames;
