--loadEmpTables.sql
--Name: Marissa Gonçalves
--Date: October 25, 2018


INSERT INTO position VALUES (1, 'President');
INSERT INTO position VALUES (2, 'Manager');
INSERT INTO position VALUES (3, 'Programmer');
INSERT INTO position VALUES (4, 'Accountant');
INSERT INTO position VALUES (5, 'Salesman');

INSERT INTO emplevel VALUES (1, 1, 25000);
INSERT INTO emplevel VALUES (2, 25001, 50000);
INSERT INTO emplevel VALUES (3, 50001, 100000);
INSERT INTO emplevel VALUES (4, 100001, 500000);

INSERT INTO qualification VALUES (1, 'Doctorate');
INSERT INTO qualification VALUES (2, 'Masters');
INSERT INTO qualification VALUES (3, 'Bachelors');
INSERT INTO qualification VALUES (4, 'Associates');
INSERT INTO qualification VALUES (5, 'High School');

INSERT INTO dept VALUES (10, 'Finance', 'Charlotte', 123);
INSERT INTO dept VALUES (20, 'InfoSys', 'New York', 543);
INSERT INTO dept VALUES (30, 'Sales', 'Woodbridge', 135);
INSERT INTO dept VALUES (40, 'Marketing', 'Los Angeles', 246);

INSERT INTO employee VALUES (111, 'Smith', 'John', 1, NULL, 
	TO_DATE ('04/15/1960', 'mm/dd/yyyy'), 265000, 35000, 10, 1);
INSERT INTO employee VALUES (246, 'Houston', 'Larry', 2, 111, 
	TO_DATE ('05/19/1967', 'mm/dd/yyyy'), 150000, 10000, 40, 2);
INSERT INTO employee VALUES (123, 'Roberts', 'Sandi', 2, 111, 
	TO_DATE ('12/02/1991', 'mm/dd/yyyy'), 75000, NULL, 10, 2);
INSERT INTO employee VALUES (433, 'McCall', 'Alex', 3, 543, 
	TO_DATE ('05/10/1997', 'mm/dd/yyyy'), 66500, NULL, 20, 4);
INSERT INTO employee VALUES (543, 'Dev', 'Derek', 2, 111, 
	TO_DATE ('03/15/1995', 'mm/dd/yyyy'), 80000, 20000, 20, 1);
INSERT INTO employee VALUES (200, 'Shaw', 'Jinku', 5, 135, 
	TO_DATE ('01/03/00', 'mm/dd/yy'), 24500, 3000, 30, NULL);
INSERT INTO employee VALUES (135, 'Garner', 'Stanley', 2, 111, 
	TO_DATE ('02/29/1996', 'mm/dd/yyyy'), 45000, 5000, 30, 5);
INSERT INTO employee VALUES (222, 'Chen', 'Sunny', 4, 123, 
	TO_DATE ('08/15/1999', 'mm/dd/yyyy'), 35000, NULL, 10, 3);

INSERT INTO dependent VALUES (543, 1, TO_DATE ('09/28/1958', 'mm/dd/yyyy'),
					'Spouse');
INSERT INTO dependent VALUES (543, 2, TO_DATE ('10/14/1988', 'mm/dd/yyyy'),
					'Son');
INSERT INTO dependent VALUES (200, 1, TO_DATE ('06/10/1976', 'mm/dd/yyyy'),
					'Spouse');
INSERT INTO dependent VALUES (222, 1, TO_DATE ('02/04/1975', 'mm/dd/yyyy'),
					'Spouse');
INSERT INTO dependent VALUES (222, 2, TO_DATE ('08/23/1997', 'mm/dd/yyyy'),
					'Son');
INSERT INTO dependent VALUES (222, 3, TO_DATE ('07/10/1999', 'mm/dd/yyyy'),
					'Daughter');
INSERT INTO dependent VALUES (111, 1, TO_DATE ('12/12/1945', 'mm/dd/yyyy'),
					'Spouse');
					
					
ALTER TABLE dept
ADD CONSTRAINT dept_employeeid_fk FOREIGN KEY(EmployeeId)
	REFERENCES employee(EmployeeId);

ALTER TABLE employee
ADD CONSTRAINT employee_supervisor_fk FOREIGN KEY(Supervisor)
	REFERENCES employee(EmployeeId);