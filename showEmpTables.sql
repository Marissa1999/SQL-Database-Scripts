--showEmpTables.sql
--Name: Marissa Gonçalves
--Date: October 25, 2018



DESCRIBE emplevel;


DESCRIBE position;


DESCRIBE qualification;


DESCRIBE dept;


DESCRIBE employee;


DESCRIBE dependent;





SELECT *
FROM emplevel;



SELECT *
FROM position;




SELECT *
FROM qualification;



SELECT *
FROM dept;




SELECT *
FROM employee;



SELECT *
FROM dependent;





SELECT table_name, constraint_name, constraint_type 
FROM user_constraints
WHERE table_name = 'EMPLEVEL';


SELECT table_name, constraint_name, constraint_type 
FROM user_constraints
WHERE table_name = 'POSITION';


SELECT table_name, constraint_name, constraint_type 
FROM user_constraints
WHERE table_name = 'QUALIFICATION';


SELECT table_name, constraint_name, constraint_type 
FROM user_constraints
WHERE table_name = 'DEPT';


SELECT table_name, constraint_name, constraint_type 
FROM user_constraints
WHERE table_name = 'EMPLOYEE';


SELECT table_name, constraint_name, constraint_type 
FROM user_constraints
WHERE table_name = 'DEPENDENT';