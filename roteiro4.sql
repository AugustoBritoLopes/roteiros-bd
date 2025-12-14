--questão 1
SELECT * FROM department;

     dname      | dnumber |  mgrssn   | mgrstartdate
----------------+---------+-----------+--------------
 Research       |       5 | 333445555 | 1978-05-22
 Administration |       4 | 987654321 | 1985-01-01
 Headquarters   |       1 | 888665555 | 1971-06-19
 Software       |       6 | 111111100 | 1999-05-15
 Hardware       |       7 | 444444400 | 1998-05-15
 Sales          |       8 | 555555500 | 1997-01-01
(6 rows)

-- questão 2

SELECT * FROM dependent;

   essn    | dependent_name | sex |   bdate    | relationship
-----------+----------------+-----+------------+--------------
 333445555 | Alice          | F   | 1976-04-05 | Daughter
 333445555 | Theodore       | M   | 1973-10-25 | Son
 333445555 | Joy            | F   | 2048-05-03 | Spouse
 987654321 | Abner          | M   | 2032-02-29 | Spouse
 123456789 | Michael        | M   | 1978-01-01 | Son
 123456789 | Alice          | F   | 1978-12-31 | Daughter
 123456789 | Elizabeth      | F   | 2057-05-05 | Spouse
 444444400 | Johnny         | M   | 1997-04-04 | Son
 444444400 | Tommy          | M   | 1999-06-07 | Son
 444444401 | Chris          | M   | 1969-04-19 | Spouse
 444444402 | Sam            | M   | 1964-02-14 | Spouse
(11 rows)

--questão 3

SELECT * FROM dept_locations;

 dnumber |  dlocation
---------+-------------
       1 | Houston
       4 | Stafford
       5 | Bellaire
       5 | Sugarland
       5 | Houston
       6 | Atlanta
       6 | Sacramento
       7 | Milwaukee
       8 | Chicago
       8 | Dallas
       8 | Philadephia
       8 | Seattle
       8 | Miami
(13 rows)

--questão 4

SELECT * FROM employee;

  fname   | minit |  lname  |    ssn    |   bdate    |             address              | sex |  salary  | superssn  | dno
----------+-------+---------+-----------+------------+----------------------------------+-----+----------+-----------+-----
 James    | E     | Borg    | 888665555 | 2027-11-10 | 450 Stone, Houston, TX           | M   | 55000.00 |           |   1
 Franklin | T     | Wong    | 333445555 | 2045-12-08 | 638 Voss, Houston, TX            | M   | 40000.00 | 888665555 |   5
 Jennifer | S     | Wallace | 987654321 | 2031-06-20 | 291 Berry, Bellaire, TX          | F   | 43000.00 | 888665555 |   4
 Jared    | D     | James   | 111111100 | 1966-10-10 | 123 Peachtree, Atlanta, GA       | M   | 85000.00 |           |   6
 Alex     | D     | Freed   | 444444400 | 1950-10-09 | 4333 Pillsbury, Milwaukee, WI    | M   | 89000.00 |           |   7
 John     | C     | James   | 555555500 | 1975-06-30 | 7676 Bloomington, Sacramento, CA | M   | 81000.00 |           |   6
 John     | B     | Smith   | 123456789 | 2055-01-09 | 731 Fondren, Houston, TX         | M   | 30000.00 | 333445555 |   5
 Alicia   | J     | Zelaya  | 999887777 | 2058-07-19 | 3321 Castle, Spring, TX          | F   | 25000.00 | 987654321 |   4
 Ramesh   | K     | Narayan | 666884444 | 2052-09-15 | 971 Fire Oak, Humble, TX         | M   | 38000.00 | 333445555 |   5
 Joyce    | A     | English | 453453453 | 2062-07-31 | 5631 Rice Oak, Houston, TX       | F   | 25000.00 | 333445555 |   5
 Ahmad    | V     | Jabbar  | 987987987 | 2059-03-29 | 980 Dallas, Houston, TX          | M   | 25000.00 | 987654321 |   4
 Jon      | C     | Jones   | 111111101 | 1967-11-14 | 111 Allgood, Atlanta, GA         | M   | 45000.00 | 111111100 |   6
 Justin   |       | Mark    | 111111102 | 1966-01-12 | 2342 May, Atlanta, GA            | M   | 40000.00 | 111111100 |   6
 Brad     | C     | Knight  | 111111103 | 1968-02-13 | 176 Main St., Atlanta, GA        | M   | 44000.00 | 111111100 |   6
 Evan     | E     | Wallis  | 222222200 | 1958-01-16 | 134 Pelham, Milwaukee, WI        | M   | 92000.00 |           |   7
 Josh     | U     | Zell    | 222222201 | 1954-05-22 | 266 McGrady, Milwaukee, WI       | M   | 56000.00 | 222222200 |   7
 Andy     | C     | Vile    | 222222202 | 1944-06-21 | 1967 Jordan, Milwaukee, WI       | M   | 53000.00 | 222222200 |   7
 Tom      | G     | Brand   | 222222203 | 1966-12-16 | 112 Third St, Milwaukee, WI      | M   | 62500.00 | 222222200 |   7
 Jenny    | F     | Vos     | 222222204 | 1967-11-11 | 263 Mayberry, Milwaukee, WI      | F   | 61000.00 | 222222201 |   7
 Chris    | A     | Carter  | 222222205 | 1960-03-21 | 565 Jordan, Milwaukee, WI        | F   | 43000.00 | 222222201 |   7
 Kim      | C     | Grace   | 333333300 | 1970-10-23 | 6677 Mills Ave, Sacramento, CA   | F   | 79000.00 |           |   6
 Jeff     | H     | Chase   | 333333301 | 1970-01-07 | 145 Bradbury, Sacramento, CA     | M   | 44000.00 | 333333300 |   6
 Bonnie   | S     | Bays    | 444444401 | 1956-06-19 | 111 Hollow, Milwaukee, WI        | F   | 70000.00 | 444444400 |   7
 Alec     | C     | Best    | 444444402 | 1966-06-18 | 233 Solid, Milwaukee, WI         | M   | 60000.00 | 444444400 |   7
 Sam      | S     | Snedden | 444444403 | 1977-07-31 | 987 Windy St, Milwaukee, WI      | M   | 48000.00 | 444444400 |   7
 Nandita  | K     | Ball    | 555555501 | 1969-04-16 | 222 Howard, Sacramento, CA       | M   | 62000.00 | 555555500 |   6
 Bob      | B     | Bender  | 666666600 | 1968-04-17 | 8794 Garfield, Chicago, IL       | M   | 96000.00 |           |   8
 Jill     | J     | Jarvis  | 666666601 | 1966-01-14 | 6234 Lincoln, Chicago, IL        | F   | 36000.00 | 666666600 |   8
 Kate     | W     | King    | 666666602 | 1966-04-16 | 1976 Boone Trace, Chicago, IL    | F   | 44000.00 | 666666600 |   8
 Lyle     | G     | Leslie  | 666666603 | 1963-06-09 | 417 Hancock Ave, Chicago, IL     | M   | 41000.00 | 666666601 |   8
 Billie   | J     | King    | 666666604 | 1960-01-01 | 556 Washington, Chicago, IL      | F   | 38000.00 | 666666603 |   8
 Jon      | A     | Kramer  | 666666605 | 1964-08-22 | 1988 Windy Creek, Seattle, WA    | M   | 41500.00 | 666666603 |   8
 Ray      | H     | King    | 666666606 | 1949-08-16 | 213 Delk Road, Seattle, WA       | M   | 44500.00 | 666666604 |   8
 Gerald   | D     | Small   | 666666607 | 1962-05-15 | 122 Ball Street, Dallas, TX      | M   | 29000.00 | 666666602 |   8
 Arnold   | A     | Head    | 666666608 | 1967-05-19 | 233 Spring St, Dallas, TX        | M   | 33000.00 | 666666602 |   8
 Helga    | C     | Pataki  | 666666609 | 1969-03-11 | 101 Holyoke St, Dallas, TX       | F   | 32000.00 | 666666602 |   8
 Naveen   | B     | Drew    | 666666610 | 1970-05-23 | 198 Elm St, Philadelphia, PA     | M   | 34000.00 | 666666607 |   8
 Carl     | E     | Reedy   | 666666611 | 1977-06-21 | 213 Ball St, Philadelphia, PA    | M   | 32000.00 | 666666610 |   8
 Sammy    | G     | Hall    | 666666612 | 1970-01-11 | 433 Main Street, Miami, FL       | M   | 37000.00 | 666666611 |   8

--questao 5

augustodbl_db=> SELECT * FROM project;
      pname       | pnumber |  plocation   | dnum
------------------+---------+--------------+------
 ProductX         |       1 | Bellaire     |    5
 ProductY         |       2 | Sugarland    |    5
 ProductZ         |       3 | Houston      |    5
 Computerization  |      10 | Stafford     |    4
 Reorganization   |      20 | Houston      |    1
 Newbenefits      |      30 | Stafford     |    4
 OperatingSystems |      61 | Jacksonville |    6
 DatabaseSystems  |      62 | Birmingham   |    6
 Middleware       |      63 | Jackson      |    6
 InkjetPrinters   |      91 | Phoenix      |    7
 LaserPrinters    |      92 | LasVegas     |    7
(11 rows)

-- questao 6

SELECT * FROM works_on;

   essn    | pno | hours
-----------+-----+-------
 123456789 |   1 |  32.5
 123456789 |   2 |   7.5
 666884444 |   3 |  40.0
 453453453 |   1 |  20.0
 453453453 |   2 |  20.0
 333445555 |   2 |  10.0
 333445555 |   3 |  10.0
 333445555 |  10 |  10.0
 333445555 |  20 |  10.0
 999887777 |  30 |  30.0
 999887777 |  10 |  10.0
 987987987 |  10 |  35.0
 987987987 |  30 |   5.0
 987654321 |  30 |  20.0
 987654321 |  20 |  15.0
 888665555 |  20 |
 111111100 |  61 |  40.0
 111111101 |  61 |  40.0
 111111102 |  61 |  40.0
 111111103 |  61 |  40.0
 222222200 |  62 |  40.0
 222222201 |  62 |  48.0
 222222202 |  62 |  40.0
 222222203 |  62 |  40.0
 222222204 |  62 |  40.0
 222222205 |  62 |  40.0
 333333300 |  63 |  40.0
 333333301 |  63 |  46.0
 444444400 |  91 |  40.0
 444444401 |  91 |  40.0
 444444402 |  91 |  40.0
 444444403 |  91 |  40.0
 555555500 |  92 |  40.0
 555555501 |  92 |  44.0
 666666601 |  91 |  40.0
 666666603 |  91 |  40.0
 666666604 |  91 |  40.0
 666666605 |  92 |  40.0
 666666606 |  91 |  40.0
 666666607 |  61 |  40.0
 666666608 |  62 |  40.0
 666666609 |  63 |  40.0
 666666610 |  61 |  40.0
 666666611 |  61 |  40.0
 666666612 |  61 |  40.0
 666666613 |  61 |  30.0
 666666613 |  62 |  10.0
 666666613 |  63 |  10.0
(48 rows)

--questão 7

SELECT e.fname, e.lname
FROM employee e
WHERE e.sex = 'M';

  fname   |  lname
----------+---------
 James    | Borg
 Franklin | Wong
 Jared    | James
 Alex     | Freed
 John     | James
 John     | Smith
 Ramesh   | Narayan
 Ahmad    | Jabbar
 Jon      | Jones
 Justin   | Mark
 Brad     | Knight
 Evan     | Wallis
 Josh     | Zell
 Andy     | Vile
 Tom      | Brand
 Jeff     | Chase
 Alec     | Best
 Sam      | Snedden
 Nandita  | Ball
 Bob      | Bender
 Lyle     | Leslie
 Jon      | Kramer
 Ray      | King
 Gerald   | Small
 Arnold   | Head
 Naveen   | Drew
 Carl     | Reedy
 Sammy    | Hall
 Red      | Bacher
(29 rows)

-- questão 8

SELECT e.fname
FROM employee e
WHERE e.sex = 'M' AND superssn IS NULL;

 fname
-------
 James
 Jared
 Alex
 John
 Evan
 Bob
(6 rows)

-- questão 9

SELECT e.fname, s.fname
FROM employee e, employee s
WHERE e.superssn = s.ssn;

  fname   |  fname
----------+----------
 Franklin | James
 Jennifer | James
 John     | Franklin
 Alicia   | Jennifer
 Ramesh   | Franklin
 Joyce    | Franklin
 Ahmad    | Jennifer
 Jon      | Jared
 Justin   | Jared
 Brad     | Jared
 Josh     | Evan
 Andy     | Evan
 Tom      | Evan
 Jenny    | Josh
 Chris    | Josh
 Jeff     | Kim
 Bonnie   | Alex
 Alec     | Alex
 Sam      | Alex
 Nandita  | John
 Jill     | Bob
 Kate     | Bob
 Lyle     | Jill
 Billie   | Lyle
 Jon      | Lyle
 Ray      | Billie
 Gerald   | Kate
 Arnold   | Kate
 Helga    | Kate
 Naveen   | Gerald
 Carl     | Naveen
 Sammy    | Carl
 Red      | Sammy

-- questão 10

SELECT e.fname
FROM employee e, employee s
WHERE e.superssn = s.ssn AND s.fname = 'Franklin';

 fname
--------
 John
 Ramesh
 Joyce
(3 rows)

-- questão 11

SELECT d.dname, l.dlocation
FROM department d, dept_locations l
WHERE d.dnumber = l.dnumber;

     dname      |  dlocation
----------------+-------------
 Headquarters   | Houston
 Administration | Stafford
 Research       | Bellaire
 Research       | Sugarland
 Research       | Houston
 Software       | Atlanta
 Software       | Sacramento
 Hardware       | Milwaukee
 Sales          | Chicago
 Sales          | Dallas
 Sales          | Philadephia
 Sales          | Seattle
 Sales          | Miami
(13 rows)

-- questão 12

SELECT d.dname
FROM department d, dept_locations l
WHERE d.dnumber = l.dnumber AND l.dlocation LIKE 'S%';

     dname
----------------
 Research
 Administration
 Software
 Sales
(4 rows)

-- questão 13

SELECT e.fname, d.dependent_name
FROM employee e, dependent d
WHERE e.ssn = d.essn;

  fname   | dependent_name
----------+----------------
 Franklin | Alice
 Franklin | Theodore
 Franklin | Joy
 Jennifer | Abner
 John     | Michael
 John     | Alice
 John     | Elizabeth
 Alex     | Johnny
 Alex     | Tommy
 Bonnie   | Chris
 Alec     | Sam
(11 rows)

-- questão 14

SELECT e.fname || ' ' || e.lname AS full_name, e.salary
FROM employee e
WHERE e.salary > 50000;

  full_name   |  salary
--------------+----------
 James Borg   | 55000.00
 Jared James  | 85000.00
 Alex Freed   | 89000.00
 John James   | 81000.00
 Evan Wallis  | 92000.00
 Josh Zell    | 56000.00
 Andy Vile    | 53000.00
 Tom Brand    | 62500.00
 Jenny Vos    | 61000.00
 Kim Grace    | 79000.00
 Bonnie Bays  | 70000.00
 Alec Best    | 60000.00
 Nandita Ball | 62000.00
 Bob Bender   | 96000.00

-- questão 15

SELECT p.pname, d.dname
FROM department d, project p
WHERE p.dnum = d.dnumber;

      pname       |     dname
------------------+----------------
 ProductX         | Research
 ProductY         | Research
 ProductZ         | Research
 Computerization  | Administration
 Reorganization   | Headquarters
 Newbenefits      | Administration
 OperatingSystems | Software
 DatabaseSystems  | Software
 Middleware       | Software
 InkjetPrinters   | Hardware
 LaserPrinters    | Hardware

-- questão 16

SELECT p.pname, e.fname
FROM project p, employee e, department d
WHERE p.dnum = d.dnumber AND d.mgrssn = e.ssn AND p.pnumber > 30;

      pname       | fname
------------------+-------
 OperatingSystems | Jared
 DatabaseSystems  | Jared
 Middleware       | Jared
 InkjetPrinters   | Alex
 LaserPrinters    | Alex
(5 rows)

-- questão 17

SELECT p.pname, e.fname
FROM project p, employee e, works_on w
WHERE w.essn = e.ssn AND w.pno = p.pnumber;

      pname       |  fname
------------------+----------
 ProductX         | John
 ProductY         | John
 ProductZ         | Ramesh
 ProductX         | Joyce
 ProductY         | Joyce
 ProductY         | Franklin
 ProductZ         | Franklin
 Computerization  | Franklin
 Reorganization   | Franklin
 Newbenefits      | Alicia
 Computerization  | Alicia
 Computerization  | Ahmad
 Newbenefits      | Ahmad
 Newbenefits      | Jennifer
 Reorganization   | Jennifer
 Reorganization   | James
 OperatingSystems | Jared
 OperatingSystems | Jon
 OperatingSystems | Justin
 OperatingSystems | Brad
 DatabaseSystems  | Evan
 DatabaseSystems  | Josh
 DatabaseSystems  | Andy
 DatabaseSystems  | Tom
 DatabaseSystems  | Jenny
 DatabaseSystems  | Chris
 Middleware       | Kim
 Middleware       | Jeff
 InkjetPrinters   | Alex
 InkjetPrinters   | Bonnie
 InkjetPrinters   | Alec
 InkjetPrinters   | Sam
 LaserPrinters    | John
 LaserPrinters    | Nandita
 InkjetPrinters   | Jill
 InkjetPrinters   | Lyle
 InkjetPrinters   | Billie
 LaserPrinters    | Jon
 InkjetPrinters   | Ray
 OperatingSystems | Gerald
 DatabaseSystems  | Arnold
 Middleware       | Helga
 OperatingSystems | Naveen
 OperatingSystems | Carl
 OperatingSystems | Sammy
 OperatingSystems | Red
 DatabaseSystems  | Red
 Middleware       | Red
(48 rows)

-- questão 18

SELECT e.fname, d.dependent_name, d.relationship
FROM works_on w, dependent d, employee e
WHERE w.pno = 91 AND w.essn = e.ssn AND d.essn = e.ssn;

 fname  | dependent_name | relationship
--------+----------------+--------------
 Alex   | Johnny         | Son
 Alex   | Tommy          | Son
 Bonnie | Chris          | Spouse
 Alec   | Sam            | Spouse
(4 rows)