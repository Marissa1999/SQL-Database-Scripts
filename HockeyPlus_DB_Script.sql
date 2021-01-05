-- HockeyPlus_DB_Script.sql



DROP TABLE PlayerPlus CASCADE CONSTRAINTS;

CREATE TABLE PlayerPlus (
  Name VARCHAR2(30) PRIMARY KEY,
  Position CHAR(1),
  Birthdate DATE,
  Birthplace VARCHAR2(30),
  Seasons CHAR(9),
  GamesPlayed NUMBER(4),
  Goals NUMBER(4),
  Assists NUMBER(4),
  Points NUMBER(4),
  Penalty NUMBER(4),
  Years NUMBER(2)
);

INSERT INTO PlayerPlus VALUES ('Bob Smith','R',TO_DATE('03/02/1960', 'MM/DD/YYYY'),'Calgary, ALTA','1986-1990',90,21,23,44,92,4);
INSERT INTO PlayerPlus VALUES ('Joseph Kaita','G',TO_DATE('11/18/1964', 'MM/DD/YYYY'),'Ottawa, ONT','1988-1990',55,1,1,2,4,2);
INSERT INTO PlayerPlus VALUES ('Paul Edouard','D',TO_DATE('11/22/1980', 'MM/DD/YYYY'),'North Bay, ONT','2002-2008',22,2,2,4,6,6);
INSERT INTO PlayerPlus VALUES ('Daniel Guerard','R',TO_DATE('04/07/1974', 'MM/DD/YYYY'),'Montreal, PQ','1994-1995',2,0,0,0,0,1);
INSERT INTO PlayerPlus VALUES ('Stephane Guerard','D',TO_DATE('04/12/1968', 'MM/DD/YYYY'),'Ste.Elizabeth, PQ','1987-1990',34,0,0,0,40,2);
INSERT INTO PlayerPlus VALUES ('Bill Guerin','R',TO_DATE('11/09/1970', 'MM/DD/YYYY'),'Wilbraham, MA','1991-2009',1185,408,403,811,1585,17);
INSERT INTO PlayerPlus VALUES ('Jocelyn Guevremont','D',TO_DATE('03/01/1951', 'MM/DD/YYYY'),'Montreal, PQ','1971-1980',571,84,223,307,319,9);
INSERT INTO PlayerPlus VALUES ('Daniel Brindon','D',TO_DATE('09/16/1930', 'MM/DD/YYYY'),'Ottawa, ONT','1950-1956',142,9,11,20,117,6);
INSERT INTO PlayerPlus VALUES ('Steve Oredo','L',TO_DATE('10/22/1931', 'MM/DD/YYYY'),'Calgary, ALTA','1951-1958',319,57,121,178,216,7);

