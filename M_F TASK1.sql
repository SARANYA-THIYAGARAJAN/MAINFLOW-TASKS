create database studentmanagement;
create table Students(StudentID int  auto_increment  primary key,Name VARCHAR(50),Gender VARCHAR(1),Age INT,Grade VARCHAR(10),
MathScore INT,ScienceScore INT, EnglishScore INT);
INSERT INTO Students (NAME,GENDER,AGE,GRADE,MATHSCORE,SCIENCESCORE,ENGLISHSCORE)VALUES('ALEX','M',16,'A',65,70,80),('BALA','M',18,'C',75,80,60),('CATHRINE','F',16,'B',50,68,72),
('DIANA','F',18,'A',80,42,60),('ETHER','F',15,'C',67,73,99),('BABU','M',14,'D',55,47,39),('VISHNU','M',17,'B',65,70,80),
('ANBU','M',17,'B',73,77,91),('SARAH','F',17,'A',89,91,95),('SAN','M',17,'D',51,48,51);
# TASK 1.  Display all students and their details to get an overview of the data.
SELECT * FROM STUDENTS;
# TASK 2. Calculate the average scores for each subject to understand subject-wise performance
SELECT AVG(MATHSCORE)AS AVG_MATHSCORE,
AVG(SCIENCESCORE)AS AVG_SCIENCESCORE,
AVG(ENGLISHSCORE)AS AVG_ENGLISHSCORE FROM STUDENTS;
#TASK 3.Find the student(s) with the highest total score across all subjects to identify the top performer.
SELECT NAME,(MATHSCORE+SCIENCESCORE+ENGLISHSCORE)AS TOTAL_MARKS FROM students order by TOTAL_MARKS DESC LIMIT 1;
#TASK 4. Count the number of students in each grade to observe grade distributions.
select grade,count(grade) as students_count from students group by grade;
#TASK 5. Find the average score for male and female students to compare performance by gender.
SELECT GENDER, avg(mathscore),avg(sciencescore),avg(englishscore) from students group by gender;
#TASK 6.dentify students whose Math score is above 80 to highlight high achievers in Math.
select name,mathscore from students where mathscore>80;
#TASK 7. Update the grade of a student with a specific Student ID to reflect changes or corrections.
update students set grade="C" WHERE STUDENTID=3;
SELECT * FROM STUDENTS WHERE STUDENTID=3;
