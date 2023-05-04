CREATE DATABASE TurboAz;
USE TurboAz;

CREATE TABLE Elan (
Id int PRIMARY KEY,
Marka nvarchar(50),
ModelID int REFERENCES  Models(Id),
[Ban Type] int REFERENCES  BanTypes(Id),
Yurush nvarchar(50),
[Yursh Novu] int REFERENCES  KmOrMIs(Id),
[Color] int REFERENCES  Colors(Id),
Price int,
[Price Currency] int REFERENCES  Prices(Id),
[Avtomobil Owners] int REFERENCES  AvtoOwners(Id),
[Fuel Type] int REFERENCES  FuelTypes(Id),
[Transmitters] int REFERENCES  Transmitters(Id),
[GearBoxs] int REFERENCES  GearBoxs(Id),
[Year] int REFERENCES  Years(Id),
[Engine Capacity] int REFERENCES  Engines(Id),
[Engine Power] int,
[For Which Market] int REFERENCES  ForWhichMarkets(Id),
Damaged bit,
Colored bit,
[For details and damaged] bit,
[NumberOfSeats] int REFERENCES  NumberOfSeats(Id),
Kredit bit,
Barter bit,
[VinCode] nvarchar(50),
[More Information] nvarchar(300),
[AutoTechizat] int REFERENCES  AutoTechizat(Id),
Image nvarchar(50),
Contacts int REFERENCES  Contacts(Id)
);

INSERT INTO Elan VALUES (
1,2,7,3,35000,1,6,47500,2,1,5,2,2,2,5,184,2,'False','False','False',5,'False','True','2HNYD2H30DH50804S','Yenidir',1,'./Photo',1
)

CREATE TABLE Marka (
Id int PRIMARY KEY,
[Name] nvarchar(50)
);

INSERT INTO Marka VALUES (1,'BMW');
INSERT INTO Marka VALUES (2,'Mercedes');
INSERT INTO Marka VALUES (3,'Honda');
INSERT INTO Marka VALUES (4,'Kia');
INSERT INTO Marka VALUES (5,'Chevrolet');
      
SELECT * FROM Marka;

CREATE TABLE Models (
Id int PRIMARY KEY,
[Name] nvarchar(50),
MarkaId int References Marka(Id)
);

INSERT INTO Models VALUES (1,'740i',1);
INSERT INTO Models VALUES (2,'XM',1);
INSERT INTO Models VALUES (3,'M35',1);
INSERT INTO Models VALUES (4,'X7',1);
INSERT INTO Models VALUES (5,'8Series',1);
INSERT INTO Models VALUES (6,'AMG',2);
INSERT INTO Models VALUES (7,'C-Class Coupe',2);;
INSERT INTO Models VALUES (8,'G-Class',2);
INSERT INTO Models VALUES (9,'ML 63 Amg',2);
INSERT INTO Models VALUES (10,'S 600',2);
INSERT INTO Models VALUES (11,'A 35 Amg',2);
INSERT INTO Models VALUES (12,'G 55 Brabus',2);
INSERT INTO Models VALUES (13,'Accord',3);
INSERT INTO Models VALUES (14,'Insight',3);
INSERT INTO Models VALUES (15,'Civic',3);
INSERT INTO Models VALUES (16,'Optima',4);
INSERT INTO Models VALUES (17,'Sorento',4);
INSERT INTO Models VALUES (18,'Rio',4);
INSERT INTO Models VALUES (19,'Cruze',5);
INSERT INTO Models VALUES (20,'Malibu',5);
INSERT INTO Models VALUES (21,'Trax',5);
      
SELECT * FROM Models;

CREATE TABLE BanTypes (
Id int PRIMARY KEY,
[Name] nvarchar(20)
);
      
INSERT INTO BanTypes VALUES (1,'Sedan');
INSERT INTO BanTypes VALUES (2,'Kabriolet');
INSERT INTO BanTypes VALUES (3,'Cupe');
INSERT INTO BanTypes VALUES (4,'Universal');
      
SELECT * FROM BanTypes;

CREATE TABLE KmOrMIs (
Id int PRIMARY KEY,
[Name] nvarchar(20)
);
      
INSERT INTO KmOrMIs VALUES (1,'KM');
INSERT INTO KmOrMIs VALUES (2,'MI');
      
SELECT * FROM KmOrMIs;

CREATE TABLE Colors (
Id int PRIMARY KEY,
[Name] nvarchar(20)
);
      
INSERT INTO Colors VALUES (1,'Red');
INSERT INTO Colors VALUES (2,'Blue');
INSERT INTO Colors VALUES (3,'Black');
INSERT INTO Colors VALUES (4,'White');
INSERT INTO Colors VALUES (5,'Grey');
INSERT INTO Colors VALUES (6,'Brown');
      
      
SELECT * FROM Colors;

CREATE TABLE Prices (
Id int PRIMARY KEY,
[Name] nvarchar(20)
);
      
INSERT INTO Prices VALUES (1,'AZN');
INSERT INTO  Prices VALUES (2,'USD');
INSERT INTO Prices VALUES (3,'EUR');
      
SELECT * FROM Prices;

CREATE TABLE AvtoOwners (
Id int PRIMARY KEY,
[Name] nvarchar(20)
);
      
INSERT INTO AvtoOwners VALUES (1,'First Owner');
INSERT INTO AvtoOwners VALUES (2,'Second Owner');
INSERT INTO AvtoOwners VALUES (3,'Third Owner');
INSERT INTO AvtoOwners VALUES (4,'Four Owner ');
INSERT INTO AvtoOwners VALUES (5,'I didnt have a car');
      
SELECT * FROM AvtoOwners;

CREATE TABLE FuelTypes (
Id int PRIMARY KEY,
[Name] nvarchar(20)
);

INSERT INTO FuelTypes VALUES (1,'Petrol');
INSERT INTO FuelTypes VALUES (2,'Diesel');
INSERT INTO FuelTypes VALUES (3,'Gas');
INSERT INTO FuelTypes VALUES (4,'Electric');
INSERT INTO FuelTypes VALUES (5,'Hybrid') ;
      
SELECT * FROM FuelTypes;

CREATE TABLE Transmitters (
Id int PRIMARY KEY,
[Name] nvarchar(20)
);
      
INSERT INTO Transmitters VALUES (1,'Front');
INSERT INTO Transmitters VALUES (2,'Black');
INSERT INTO Transmitters VALUES (3,'Full');
      
SELECT * FROM Transmitters;

CREATE TABLE GearBoxs (
Id int PRIMARY KEY,
[Name] nvarchar(20)
)
      
INSERT INTO GearBoxs VALUES (1,'Manual')
INSERT INTO GearBoxs VALUES (2,'Auto')
      
SELECT * FROM GearBoxs

CREATE TABLE Years (
Id int PRIMARY KEY,
[Name] nvarchar(20)
)
      
INSERT INTO Years VALUES (1,'2018')
INSERT INTO Years VALUES (2,'2021')
INSERT INTO Years VALUES (3,'2022')
INSERT INTO Years VALUES (4,'2020')
INSERT INTO Years VALUES (5,'2023')
INSERT INTO Years VALUES (6,'2015')
      
SELECT * FROM Years

CREATE TABLE Engines (
Id int PRIMARY KEY,
[Name] nvarchar(20)
)
      
INSERT INTO Engines VALUES (1,'2600')
INSERT INTO Engines VALUES (2,'3200')
INSERT INTO Engines VALUES (3,'2400')
INSERT INTO Engines VALUES (4,'3700')
INSERT INTO Engines VALUES (5,'1800')
INSERT INTO Engines VALUES (6,'2400')
INSERT INTO Engines VALUES (7,'2100')
INSERT INTO Engines VALUES (8,'4300')
INSERT INTO Engines VALUES (9,'6500')
      
SELECT * FROM Engines

CREATE TABLE ForWhichMarkets (
Id int PRIMARY KEY,
[Name] nvarchar(20)
)
      
INSERT INTO ForWhichMarkets VALUES (1,'Amerika')
INSERT INTO ForWhichMarkets VALUES (2,'Avropa')
INSERT INTO ForWhichMarkets VALUES (3,'Diger')
INSERT INTO ForWhichMarkets VALUES (4,'Dubay')
INSERT INTO ForWhichMarkets VALUES (5,'Koreya')
INSERT INTO ForWhichMarkets VALUES (6,'Resmi Diller')
INSERT INTO ForWhichMarkets VALUES (7,'Rusiya')
INSERT INTO ForWhichMarkets VALUES (8,'Yaponiyaa')
      
SELECT * FROM ForWhichMarkets

CREATE TABLE NumberOfSeats (
Id int PRIMARY KEY,
[Name] nvarchar(30)
)
        
INSERT INTO NumberOfSeats VALUES (1,'1')
INSERT INTO NumberOfSeats VALUES (2,'2')
INSERT INTO NumberOfSeats VALUES (3,'3')
INSERT INTO NumberOfSeats VALUES (4,'4')
INSERT INTO NumberOfSeats VALUES (5,'5')
INSERT INTO NumberOfSeats VALUES (6,'6')
INSERT INTO NumberOfSeats VALUES (7,'7')
INSERT INTO NumberOfSeats VALUES (8,'8+')
INSERT INTO NumberOfSeats VALUES (9,'Dont be mentioned')
      
SELECT * FROM NumberOfSeats

CREATE TABLE AutoTechizat (
Id int PRIMARY KEY,
[ABS] bit,
[Arxa görüntü kamerasi] bit,
[Deri salon] bit,
Lyuk bit,
Kondisioner bit,
[Ksenon lampalar] bit,
[Merkezi qapanma] bit,
[Oturacaqlarin isidilmesi] bit,
[Oturacaqlarin ventiliyasiyasi] bit,
[Park radari] bit,
[Yüngül lehimli diskler] bit,
[Yağiş sensoru] bit,
[Yan perdeler] bit
)
      
INSERT INTO AutoTechizat VALUES (1,'True','False','True','True','True','False','True','False','False','False','True','True','True')
      
INSERT INTO AutoTechizat VALUES (2,'True','False','False','False','True','False','True','False','False','False','True','True','False') 
      
INSERT INTO AutoTechizat VALUES (3,'False','False','False','True','True','False','True','False','False','False','False','False','True')
      
INSERT INTO AutoTechizat VALUES (4,'False','False','False','False','False','False','True','False','False','False','False','False','True')
      
SELECT * FROM AutoTechizat

CREATE TABLE Contacts (
Id int PRIMARY KEY,
[Name] nvarchar(20),
CityId int FOREIGN KEY REFERENCES Cities(Id),
Email nvarchar(50),
Phone_number nvarchar(50)
)
      
INSERT INTO Contacts VALUES(
1,
'Amrah',
12,
'rehmanov114@gmail.com',
'0552841284'
)
        
INSERT INTO Contacts VALUES(
2,
'Heyder',
2,
'rehmanov114@gmail.com',
'0773841284'
)
      
INSERT INTO Contacts VALUES(
3,
'Yusif',
3,
'yusiko.huseynli@gmail.com',
'0559760007'
)
      
INSERT INTO Contacts VALUES(
4,
'Elchin',
4,
'rehmanov114@gmail.com',
'0552841284'
)
      
INSERT INTO Contacts VALUES(
5,
'Vaqif',
5,
'rehmanov114@gmail.com',
'0519776379'
)
      
SELECT * FROM Contacts

CREATE TABLE Cities (
Id int PRIMARY KEY,
[Name] nvarchar(50)
)
        
INSERT INTO Cities VALUES (1,'Astara')
INSERT INTO Cities VALUES (2,'Aghdash')
INSERT INTO Cities VALUES (3,'Aghsu')
INSERT INTO Cities VALUES (4,'Baki')
INSERT INTO Cities VALUES (5,'Balaken')
INSERT INTO Cities VALUES (6,'Bilesuvar')
INSERT INTO Cities VALUES (7,'Berde')
INSERT INTO Cities VALUES (8,'Celilabad')
INSERT INTO Cities VALUES (9,'Dashkesen')
INSERT INTO Cities VALUES (10,'Fizuli')
INSERT INTO Cities VALUES (11,'Lenkaran')
INSERT INTO Cities VALUES (12,'Masalli')
      
SELECT * FROM Cities

SELECT * FROM Elan

SELECT 
Elan.Id,
Models.Name as ModelName,
BanTypes.Name as BanNovu,
KmOrMIs.Name as YurushNovu,
Colors.Name as ColorName,
Prices.Name as Prices,
AvtoOwners.Name,
FuelTypes.Name as FuelType,
Transmitters.Name as Transmitters,
GearBoxs.Name,
Years.Name as il,
Engines.Name as EngineCapacity,
Damaged,
Colored,
[For details and damaged],
NumberOfSeats.Name as Seats,
Kredit,
Barter,
AutoTechizat.[ABS],
AutoTechizat.[Arxa görüntü kamerasi],
AutoTechizat.[Deri salon],
AutoTechizat.Lyuk ,
AutoTechizat.Kondisioner,
AutoTechizat.[Ksenon lampalar],
AutoTechizat.[Merkezi qapanma],
AutoTechizat.[Oturacaqlarin isidilmesi],
AutoTechizat.[Oturacaqlarin ventiliyasiyasi],
AutoTechizat.[Park radari],
AutoTechizat.[Yağiş sensoru],
AutoTechizat.[Yan perdeler],
AutoTechizat.[Yüngül lehimli diskler],
Contacts.Name as ContactName,
Contacts.Email as ContactEmail,
Contacts.Phone_number as ContactPhone FROM
Elan
inner join Models on Elan.ModelId=Models.Id
inner join BanTypes on Elan.[Ban Type]=BanTypes.Id
inner join KmOrMIs on Elan.[Yursh Novu]=KmOrMIs.Id
inner join Colors on Elan.[Color]=Colors.Id
inner join Prices on Elan.[Price Currency]=Prices.Id
inner join AvtoOwners on Elan.[Avtomobil Owners]=AvtoOwners.Id
inner join FuelTypes on Elan.[Fuel Type]=FuelTypes.Id
inner join Transmitters on Elan.[Transmitters]=Transmitters.Id
inner join GearBoxs on Elan.[GearBoxs]=GearBoxs.Id
inner join Years on Elan.[Year]=Years.Id
inner join Engines on Elan.[Engine Capacity]=Engines.Id
inner join ForWhichMarkets on Elan.[For Which Market]=ForWhichMarkets.Id
inner join NumberOfSeats on Elan.[NumberOfSeats]=NumberOfSeats.Id
inner join AutoTechizat on Elan.[AutoTechizat]=AutoTechizat.Id
inner join Contacts on Elan.Contacts=Contacts.Id

