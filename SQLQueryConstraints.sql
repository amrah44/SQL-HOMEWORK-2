	--DML query

	CREATE DATABASE Courses;
	USE Course;

	--DDL query

	CREATE TABLE Teachers (
	 Id int IDENTITY PRIMARY KEY,
	 [Name] nvarchar(50) NOT NULL,
	 Surname nvarchar(50) DEFAULT('XXX'),
	 Age int CHECK(Age>0) NOT NULL,
	 Email nvarchar(20) UNIQUE NOT NULL,
	 Salary DECIMAL (10,2)
	);

	DROP TABLE Teachers

	SELECT * FROM Teachers;

	INSERT INTO Teachers VALUES(
	'Ceyhun',
	'Hacili', 
	35, 
	'ceyhun@example.com', 
	5000.00
	);

	INSERT INTO Teachers VALUES(
	'Ruslan', 
	'Gozelzade', 
	28, 
	'rusik@mail.ru', 
	3000.00
	);

	INSERT INTO Teachers VALUES(
	'Nahid', 
	'Ibrahim', 
	30, 
	'nahid@gmail.com', 
	2800.00
	);

	INSERT INTO Teachers VALUES(
	'Elekber', 
	'Humbetov', 
	40, 
	'eliko@bk.ru',
	2200.00
	);

	INSERT INTO Teachers VALUES(
	'Elshen', 
	'Bagirov', 
	38, 
	'Lshen@gmail.com', 
	7000.00
	);

	INSERT INTO Teachers VALUES(
	'Rugeyye',
	'Nagiyeva',
	25,
	'rugush@mail.ru',
	3700.00
	);

	INSERT INTO Teachers VALUES(
	'Fuad',
	'Ahmadov',
	30,
	'ahmadov@example.com'
	,1750.00
	);

	SELECT * FROM Teachers
	WHERE Age > (SELECT AVG(Age) FROM Teachers);

	SELECT * FROM Teachers
	WHERE Salary BETWEEN 1000 AND 3000;

	SELECT [Name],Surname FROM Teachers
	WHERE Email LIKE '%mail.ru';

	SELECT * FROM Teachers
	WHERE [Name] LIKE 'C%';

