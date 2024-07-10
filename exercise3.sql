create database university;
use university;
drop table student;
create table student (name varchar(30),student_number int primary key,class int,major varchar(10));
create table course(course_name varchar(30),course_number varchar(20)primary key,credit_hours int,department varchar(10));
create table section(section_identifier int primary key,course_number varchar(20),semester varchar(10),year int,instructor varchar(30),foreign key(course_number)references course(course_number));
create table grade_report(student_number int,section_identifier int,grade varchar(10),foreign key(section_identifier)references section(section_identifier),foreign key(student_number)references student(student_number),primary key(student_number,section_identifier));
create table prerequisite(course_number varchar(20),prerequisite_number varchar(20),foreign key(course_number)references course(course_number),foreign key(prerequisite_number)references course(course_number),primary key(course_number,prerequisite_number));

-- insert values to student table
insert into student VALUES('Smith',17, 1, 'CS');
insert into student VALUES('Brown',8, 2, 'CS');

-- insert values to course table
insert into course values('Intro to computer science','CS1310',4,'CS');
insert into course values('Data structures','CS3320',4,'CS');
insert into course values('Discrete Mathemeatics','MATH2410',3,'MATH');
insert into course values('Database','CS3380',3,'CS');

-- insert into values to section table
insert into section values(85,'MATH2410','Fall','07','King');
insert into section values(92,'CS1310','Fall','07','Anderson');
insert into section values(102,'CS3320','Spring','08','Knuth');
insert into section values(112,'MATH2410','Fall','08','Chang');
insert into section values(119,'CS1310','Fall','08','Anderson');
insert into section values(135,'CS3380','Fall','08','Stone');

-- insert into values to grade_report table
insert into grade_report values(17,112,'B');
insert into grade_report values(17,119,'C');
insert into grade_report values(8,85,'A');
insert into grade_report values(8,92,'A');
insert into grade_report values(8,102,'B');
insert into grade_report values(8,135,'A');

-- insert into values to prerequisite table
insert into prerequisite values('CS3380','CS3320');
insert into prerequisite values('CS3380','MATH2410');
insert into prerequisite values('CS3380','CS1310');

-- retreive the list of all courses and grades of smith
select course_name,grade from grade_report inner join  student on grade_report.student_number=student.student_number inner join section on grade_report.section_identifier=section.section_identifier inner join course on section.course_number=course.course_number where student.name='Smith';

-- list the names of student who took the section of database course offerd in fall 2008 and their grade in that section
select name,grade from grade_report inner join student on grade_report.student_number=student.student_number inner join section on grade_report.section_identifier=section.section_identifier inner join course on section.course_number=course.course_number where course.course_name='Database' and section.semester='Fall' and section.year=08;

-- list the prerequisite of the 'database' course
select course_name from course where course_number in (select prerequisite_number from prerequisite join course on prerequisite.course_number=course.course_number where prerequisite.course_number=(select course_number from course where course_name='Database'));

-- create a view to retrive the names of all senior students majoring in cs

create view seniors as select * from student where major='CS';
select name from seniors;

-- retreive names of all courses taught by proffessor king in 2007 and 2008
select course_name,year from section inner join course on section.course_number=course.course_number where section.instructor='King';

-- for each section taught by professsor king retreive the course number .semester,year and number of students who tool the section
select section.course_number,section.semester,section.year,count(grade_report.student_number) from section inner join grade_report on section.section_identifier=grade_report.section_identifier where section.instructor='King' group by grade_report.section_identifier;

-- retreive the name and transcript of each student of class=2 majoring in cs. A transcript includes course name course number credit hours semester year and grade for each course completed by the student
select s.name,c.course_name,se.course_number,se.semester,se.year,g.grade from section se inner join course c on se.course_number=c.course_number inner join grade_report g on se.section_identifier=g.section_identifier inner join student s on g.student_number=s.student_number where s.class=2 and s.major='CS';

-- write sql update statement to following 
-- a. insert new student <'Jhon',25,1,'Math'>
-- b.change the class of student 'Smith' to 2
-- c. insert new course <'Knowledge Engineering','CS4390',3,'CS'>
-- d. delete the record for the student whose name is smith and whose student number is 17

insert into student values('Jhon',25,1,'Math');
update student set class=2 where student_number=17;
insert into course values('Knowledge Engineering','CS4390',3,'CS');
delete from student where student_number=17;