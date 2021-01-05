--createEmpTables.sql
--Name: Marissa Gonçalves
--Date: October 25, 2018


CREATE TABLE emplevel 
	(LevelNo	NUMBER (1),
 	LowSalary	NUMBER (6),
	HighSalary	NUMBER (6),
	CONSTRAINT emplevel_levelno_pk PRIMARY KEY (LevelNo));  

CREATE TABLE position
	(PositionId	NUMBER (1),
	PosDesc	VARCHAR2 (10),
	CONSTRAINT position_positionid_pk PRIMARY KEY (PositionId));

CREATE TABLE qualification
	(QualId	NUMBER (1),
	QualDesc	VARCHAR2 (11),
	CONSTRAINT qualification_qualid_pk PRIMARY KEY (QualId));

CREATE TABLE dept
	(DeptId	NUMBER (2),
	DeptName	VARCHAR2 (12) NOT NULL,
	Location	VARCHAR2 (15),
	EmployeeId	NUMBER (3),
	CONSTRAINT dept_deptid_pk PRIMARY KEY (DeptId));

CREATE TABLE employee 
	(EmployeeId    NUMBER (3),
      	Lname		VARCHAR2 (15) CONSTRAINT employee_lname_nn NOT NULL,
	Fname 		VARCHAR2 (15) CONSTRAINT employee_fname_nn NOT NULL, 
	PositionId 	NUMBER (1), 
	Supervisor	NUMBER (3),
      	HireDate  	DATE,
	Salary		NUMBER (6),
      	Commission	NUMBER (5),
      	DeptId		NUMBER (2) NOT NULL,
	QualId		NUMBER (1),
	CONSTRAINT employee_employeeid_pk 
		PRIMARY KEY (EmployeeId),
	CONSTRAINT employee_positionid_fk FOREIGN KEY (PositionId)
		REFERENCES position (PositionId),
	CONSTRAINT employee_deptid_fk FOREIGN KEY (DeptId)
		REFERENCES dept (DeptId),
	CONSTRAINT employee_qualid_fk FOREIGN KEY (QualId)
		REFERENCES qualification (QualId));

CREATE TABLE dependent 	
	(EmployeeId    	NUMBER (3),
      	DependentId	NUMBER (1),
	DepDOB	DATE, 
	Relation	VARCHAR2 (8),
	CONSTRAINT dependent_empiddepid_pk PRIMARY KEY (EmployeeId, DependentId),
	CONSTRAINT dependent_employeeid_fk FOREIGN KEY (EmployeeId)
		REFERENCES employee (EmployeeId));