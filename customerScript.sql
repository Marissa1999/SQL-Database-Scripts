-- Customer Script


/*****   CUSTOMER DROP  *******************************************************/
drop table customer cascade constraints;

/*****   CUSTOMER DATA  *******************************************************/

CREATE TABLE CUSTOMER(
	CustomerID		Number(10),			
	LastName		Varchar2(20)			NOT NULL,
	FirstName		Varchar2(20)			NOT NULL,
	Phone			Varchar2(12)			DEFAULT NULL,
	Email			Varchar2(20)			DEFAULT NULL,
	CONSTRAINT		CUSTOMER_CustomerID_PK		PRIMARY KEY(CustomerID)
	);


/*****   CUSTOMER DATA  *******************************************************/

INSERT INTO CUSTOMER VALUES(
	1,'Stanley', 'Elizabeth','555-236-7789', 'ES@somewhere.com');
INSERT INTO CUSTOMER VALUES(
	2,'Price', 'Fred', '555-236-0091', 'FP@somewhere.com');
INSERT INTO CUSTOMER VALUES(
	3,'Becky', 'Linda', '555-236-0392', 'LB@somewhere.com');
INSERT INTO CUSTOMER VALUES(
	4,'Birch', 'Pamela', '555-236-4493', 'PB@somewhere.com');
INSERT INTO CUSTOMER VALUES(
	5,'Romez', 'Ricardo', '555-236-3334', 'RR@somewhere.com');
INSERT INTO CUSTOMER VALUES(
	6,'Jackson', 'Samantha', '555-236-1095', 'SJ@somewhere.com');



