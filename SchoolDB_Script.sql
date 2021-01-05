-- SchoolDB_Script.sql


drop table faculty cascade constraints;
drop table student cascade constraints;
drop table course cascade constraints;
drop table enrollment cascade constraints;


create table faculty
(f_id    number(1),
 f_last  varchar2(15),
 f_first varchar2(15),
 constraint faculty_f_id_pk primary key (f_id)
);

create table student
(s_id    number(1),
 s_last  varchar2(15),
 s_first varchar2(15),
 s_class varchar2(2),
 f_id    number(1),
 constraint student_s_id_pk primary key (s_id),
 constraint student_f_id_fk foreign key (f_id) references faculty (f_id)
);

create table course
(course_no    varchar2(7),
 course_name  varchar2(25),
 credits      number(1),
 max_enrl     number(3),
 constraint course_course_no_pk primary key (course_no)
);

create table enrollment
(s_id         number(1),
 course_no    varchar2(7),
 grade        varchar2(2),
 constraint enrollment_s_id_course_no_pk primary key (s_id, course_no),
 constraint enrollment_s_id_fk foreign key (s_id) references student (s_id),
 constraint enrollment_course_no_fk foreign key (course_no) references course (course_no)
);

insert into faculty values (1, 'Robertson', 'Myra');
insert into faculty values (2, 'Smith', 'Neal');
insert into faculty values (3, 'Arlec', 'Lisa');
insert into faculty values (4, 'Fillipo', 'Paul');
insert into faculty values (5, 'Denver', 'Paul');

insert into student values (1, 'Graham', 'Bill', 'JR', 4);
insert into student values (2, 'Sanchez', 'Jim', 'EX', 3);
insert into student values (3, 'White', 'Peter', 'EX', 3);
insert into student values (4, 'Phelp', 'David', 'JR', 1);
insert into student values (5, 'Lewis', 'Sheila', 'SR', 2);
insert into student values (6, 'James', 'Thomas', 'JR', 1);

insert into course values ('MIS 101', 'Intro. to Info. Systems', 3, 140);
insert into course values ('MIS 301', 'Systems Analysis', 3, 35);
insert into course values ('MIS 441', 'Database Management', 3, 12);
insert into course values ('CS 155', 'Programming in C++', 3, 90);
insert into course values ('MIS 451', 'Web-Based Systems', 3, 30);
insert into course values ('MIS 551', 'Advanced Web', 3, 30);
insert into course values ('MIS 651', 'Advanced Java', 3, 30);

insert into enrollment values (1, 'MIS 101', 'A+');
insert into enrollment values (5, 'MIS 301', 'B-');
insert into enrollment values (2, 'MIS 441', 'A-');
insert into enrollment values (3, 'CS 155', 'B-');
insert into enrollment values (5, 'MIS 451', 'A+');
insert into enrollment values (4, 'MIS 551', 'B+');
insert into enrollment values (6, 'MIS 651', 'C+');
insert into enrollment values (3, 'MIS 301', 'B-');
insert into enrollment values (4, 'MIS 441', 'A-');
insert into enrollment values (4, 'CS 155', 'B-');
insert into enrollment values (2, 'MIS 451', 'A+');
insert into enrollment values (6, 'MIS 551', 'B+');
insert into enrollment values (3, 'MIS 651', 'C+');


















