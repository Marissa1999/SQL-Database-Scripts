-- School Script
-- September, 2018


DROP TABLE faculty CASCADE CONSTRAINTS;
DROP TABLE student CASCADE CONSTRAINTS;
DROP TABLE course CASCADE CONSTRAINTS;
DROP TABLE enrollment CASCADE CONSTRAINTS;


CREATE TABLE faculty
(f_id NUMBER(5), 
f_last VARCHAR2(30),
f_first VARCHAR2(30),
CONSTRAINT faculty_f_id_pk PRIMARY KEY (f_id));

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

CREATE TABLE ENROLLMENT
(s_id NUMBER(5),
course_no VARCHAR2(7),
grade CHAR(2),
CONSTRAINT enrollment_pk PRIMARY KEY (s_id, course_no),
CONSTRAINT enrollment_sid_fk FOREIGN KEY (s_id) REFERENCES student(s_id),
CONSTRAINT enrollment_csecid_fk FOREIGN KEY (course_no) REFERENCES course (course_no));

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

ALTER TABLE faculty 
ADD Birthday DATE;

UPDATE faculty SET birthday= to_date('30-jul-1940', 'dd-mon-yyyy') where f_id=1;
UPDATE faculty SET birthday= to_date('12-may-1950', 'dd-mon-yyyy') where f_id=2;
UPDATE faculty SET birthday= to_date('24-mar-1941', 'dd-mon-yyyy') where f_id=3;
UPDATE faculty SET birthday= to_date('11-feb-1971', 'dd-mon-yyyy') where f_id=4;
UPDATE faculty SET birthday= to_date('09-oct-1980', 'dd-mon-yyyy') where f_id=5;
UPDATE faculty SET birthday= to_date('07-dec-1960', 'dd-mon-yyyy') where f_id=6;

ALTER TABLE student
ADD Birthday DATE;

UPDATE student SET birthday= to_date('30-jul-1980', 'dd-mon-yyyy') where s_id=1;
UPDATE student SET birthday= to_date('12-may-1981', 'dd-mon-yyyy') where s_id=2;
UPDATE student SET birthday= to_date('24-mar-1987', 'dd-mon-yyyy') where s_id=3;
UPDATE student SET birthday= to_date('11-feb-1988', 'dd-mon-yyyy') where s_id=4;
UPDATE student SET birthday= to_date('09-oct-1970', 'dd-mon-yyyy') where s_id=5;
UPDATE student SET birthday= to_date('07-dec-1960', 'dd-mon-yyyy') where s_id=6;

COMMIT;
