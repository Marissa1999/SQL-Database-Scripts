--RegistrationDB_Script.sql


DROP TABLE faculty CASCADE CONSTRAINTS;
DROP TABLE student CASCADE CONSTRAINTS;
DROP TABLE course CASCADE CONSTRAINTS;
DROP TABLE enrollment CASCADE CONSTRAINTS;
DROP TABLE levelclass CASCADE CONSTRAINTS;
DROP TABLE Department CASCADE CONSTRAINTS;
DROP TABLE CategoryStudent CASCADE CONSTRAINTS;


CREATE TABLE Department
(DeptId	NUMBER (2),
DeptName	VARCHAR2 (20) NOT NULL,
Location	VARCHAR2 (15),
CONSTRAINT depart_deptid_pk PRIMARY KEY (DeptId));

CREATE TABLE faculty
(f_id NUMBER(5), 
f_last VARCHAR2(30),
f_first VARCHAR2(30),
CONSTRAINT faculty_f_id_pk PRIMARY KEY (f_id));

CREATE TABLE CategoryStudent
(Cat_Stud_ID NUMBER(2), 
Cat_Start_Date DATE,
Cat_End_Date DATE,
Cat_Stud_DESC VARCHAR2(20),
CONSTRAINT CategoryStudent_Cat_Stud_ID_pk PRIMARY KEY (Cat_Stud_ID));

CREATE TABLE student
(s_id NUMBER(5), 
s_last VARCHAR2(30),
s_first VARCHAR2(30),
s_class VARCHAR2(2),
f_id NUMBER(5),
CONSTRAINT student_s_id_pk PRIMARY KEY (s_id),
CONSTRAINT student_s_id_fk FOREIGN KEY (f_id) REFERENCES faculty(f_id));

CREATE TABLE COURSE
(course_no VARCHAR2(7),
course_name VARCHAR2(25),
credits NUMBER(2),
max_enrl NUMBER(4) CONSTRAINT course_maxenrl_nn NOT NULL,
CONSTRAINT course_course_id_pk PRIMARY KEY(course_no));

CREATE TABLE LEVELCLASS
(lc_type NUMBER(2),
lc_desc VARCHAR2(20),
lc_min NUMBER(3),
lc_max NUMBER(3),
CONSTRAINT levelclass_lc_type_pk PRIMARY KEY(lc_type));

CREATE TABLE ENROLLMENT
(s_id NUMBER(5),
course_no VARCHAR2(7),
grade CHAR(2),
CONSTRAINT enrollment_pk PRIMARY KEY (s_id, course_no),
CONSTRAINT enrollment_sid_fk FOREIGN KEY (s_id) REFERENCES student(s_id),
CONSTRAINT enrollment_csecid_fk FOREIGN KEY (course_no) REFERENCES course (course_no));


--- inserting records into Department
INSERT INTO Department VALUES
(10, 'Computer Science', 'Campus CS');

INSERT INTO Department VALUES
(20, 'Telecommunication', 'Campus TEL');

INSERT INTO Department VALUES
(30, 'Accounting', 'Campus AC');

INSERT INTO Department VALUES
(40, 'Math and Science', 'Campus MS');

INSERT INTO Department VALUES
(50, 'Liberal Arts', 'Campus LA');

--- inserting records into Faculty
INSERT INTO Faculty VALUES
(1, 'Robertson', 'Myra');

INSERT INTO Faculty VALUES
(2, 'Smith', 'Neal');

INSERT INTO Faculty VALUES
(3, 'Arlec', 'Lisa');

INSERT INTO Faculty VALUES
(4, 'Fillipo', 'Paul');

INSERT INTO Faculty VALUES
(5, 'Denver', 'Paul');

INSERT INTO Faculty VALUES
(6, 'Silcoff', 'Bob');

--- inserting records into CategoryStudent
INSERT INTO CATEGORYSTUDENT VALUES
(1, TO_DATE('01-01-1960', 'dd-mm-yyyy'), TO_DATE('31-12-1969', 'dd-mm-yyyy'),'Generation X1');

INSERT INTO CATEGORYSTUDENT VALUES
(2, TO_DATE('01-01-1970', 'dd-mm-yyyy'), TO_DATE('31-12-1979', 'dd-mm-yyyy'),'Generation X');

INSERT INTO CATEGORYSTUDENT VALUES
(3, TO_DATE('01-01-1980', 'dd-mm-yyyy'), TO_DATE('31-12-1989', 'dd-mm-yyyy'),'Generation Y');


--- inserting records into Student
INSERT INTO STUDENT VALUES
(1, 'Graham', 'Bill','JR',4);

INSERT INTO STUDENT VALUES
(2, 'Sanchez', 'Jim','EX',3);

INSERT INTO STUDENT VALUES
(3, 'White', 'Peter','EX',3);

INSERT INTO STUDENT  VALUES
(4, 'Phelp', 'David','JR',1);

INSERT INTO STUDENT  VALUES
(5, 'Lewis', 'Sheila','SR',2);

INSERT INTO STUDENT  VALUES
(6, 'James', 'Thomas','JR',1);

INSERT INTO STUDENT  VALUES
(7, 'Evanov', 'Catherine','JR',6);



--- inserting records into COURSE
INSERT INTO course VALUES
('MIS 101', 'Intro. to Info. Systems', 3, 140);

INSERT INTO course VALUES
('MIS 301', 'Systems Analysis', 3, 35);

INSERT INTO course VALUES
('MIS 441', 'Database Management', 3, 12);

INSERT INTO course VALUES
('CS 155', 'Programming in C++', 3, 90);

INSERT INTO course VALUES
('MIS 451', 'Web-Based Systems', 3, 30);

INSERT INTO course VALUES
('MIS 551', 'Advanced Web', 3, 30);

INSERT INTO course VALUES
('MIS 651', 'Advanced Java', 3, 30);

--- inserting records into ENROLLMENT
INSERT INTO enrollment VALUES
(1, 'MIS 101', 'A+');

INSERT INTO enrollment VALUES
(5,'MIS 301', 'B-');

INSERT INTO enrollment VALUES
(2,'MIS 441', 'A-');

INSERT INTO enrollment VALUES
(3,'CS 155', 'B-');

INSERT INTO enrollment VALUES
(5,'MIS 451', 'A+');

INSERT INTO enrollment VALUES
(4,'MIS 551', 'B+');

INSERT INTO enrollment VALUES
(6,'MIS 651', 'C+');

INSERT INTO enrollment VALUES
(3,'MIS 301', 'B-');

INSERT INTO enrollment VALUES
(4,'MIS 441', 'A-');

INSERT INTO enrollment VALUES
(4,'CS 155', 'B-');

INSERT INTO enrollment VALUES
(2,'MIS 451', 'A+');

INSERT INTO enrollment VALUES
(6,'MIS 551', 'B+');

INSERT INTO enrollment VALUES
(3,'MIS 651', 'C+');

-- inserting records into LEVELCLASS
INSERT INTO levelclass VALUES
(1, 'Small Class', 1, 12);

INSERT INTO levelclass VALUES
(2, 'Medium Class', 13, 30);

INSERT INTO levelclass VALUES
(3, 'Large Class', 31, 90);

INSERT INTO levelclass VALUES
(4, 'Extra Large Class', 91, 140);



ALTER TABLE faculty 
ADD Birthday DATE;

ALTER TABLE faculty 
ADD soc_ins CHAR(11);

UPDATE faculty SET birthday=TO_DATE('30-07-1940', 'dd-mm-yyyy'), soc_ins= '123-456-789' where f_id=1;
UPDATE faculty SET birthday=TO_DATE('12-05-1950', 'dd-mm-yyyy'), soc_ins= '321-456-789' where f_id=2;
UPDATE faculty SET birthday=TO_DATE('24-03-1941', 'dd-mm-yyyy'), soc_ins= '123-554-789' where f_id=3;
UPDATE faculty SET birthday=TO_DATE('11-02-1971', 'dd-mm-yyyy'), soc_ins= '123-456-987' where f_id=4;
UPDATE faculty SET birthday=TO_DATE('09-10-1980', 'dd-mm-yyyy'), soc_ins= '123-654-987' where f_id=5;



ALTER TABLE student
ADD Birthday DATE;

ALTER TABLE student
ADD soc_ins CHAR(11);

UPDATE student SET birthday=TO_DATE('30-07-1980', 'dd-mm-yyyy'), soc_ins= '456-123-789' where s_id=1;
UPDATE student SET birthday=TO_DATE('12-05-1981', 'dd-mm-yyyy'), soc_ins= '654-123-789' where s_id=2;
UPDATE student SET birthday=TO_DATE('24-03-1987', 'dd-mm-yyyy'), soc_ins= '456-321-789' where s_id=3;
UPDATE student SET birthday=TO_DATE('11-02-1988', 'dd-mm-yyyy'), soc_ins= '456-123-987' where s_id=4;
UPDATE student SET birthday=TO_DATE('09-10-1970', 'dd-mm-yyyy'), soc_ins= '456-321-987' where s_id=5;
UPDATE student SET birthday=TO_DATE('07-12-1960', 'dd-mm-yyyy'), soc_ins= '654-321-987' where s_id=6;


ALTER TABLE course 
ADD prereq VARCHAR2(7);

UPDATE course SET prereq='MIS 651' where course_no='MIS 301';
UPDATE course SET prereq='MIS 301' where course_no='MIS 441';
UPDATE course SET prereq='MIS 101' where course_no='CS 155';
UPDATE course SET prereq='MIS 101' where course_no='MIS 451';
UPDATE course SET prereq='MIS 451' where course_no='MIS 551';
UPDATE course SET prereq='MIS 101' where course_no='MIS 651';

ALTER TABLE faculty 
ADD DeptId	NUMBER (2) ;

ALTER TABLE faculty ADD CONSTRAINTS faculty_DeptId_pk FOREIGN KEY (DeptId) REFERENCES Department(DeptId);


UPDATE faculty SET DeptId=10 where f_id=1;
UPDATE faculty SET DeptId=20 where f_id=2;
UPDATE faculty SET DeptId=30 where f_id=3;
UPDATE faculty SET DeptId=10 where f_id=4;
UPDATE faculty SET DeptId=40 where f_id=5;


COMMIT;
