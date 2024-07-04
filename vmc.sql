CREATE DATABASE vmc;
USE  vmc;


-- Department table
CREATE TABLE Department (
    DeptID VARCHAR(6) PRIMARY KEY,
    DeptName VARCHAR(80) NOT NULL
);

-- Inserting values into Department table
INSERT INTO Department
VALUES('D01','Mathematics'),('D02','Biology'),('D03','Chemistry'),('D04','Physics'),('D05','History'),('D06','English'),
('D07','Psychology'),('D08','Buisness'),('D09','Geography'),('D010','German studies'),('D011','Health Science'),('D012','Humanities'),
('D013','Dance'),('D014','Vetenary Medicine'),('D015','Pharmacy'),('D016','Philosphy'),('D017','Theology'),('D018',' Electricals'),
('D019','Politics'),('D020','Rehabilation'),('D021','Primary Care'),('D022','Astronomy'),('D023','Modern language'),('D024','Music'),
('D025','Law'),('D026','Life science'),('D027','Civil engineering'),('D028','Archaeology'),('D029','BioScience'),('D030','Arts');

-- faculty table 
CREATE TABLE faculty (
    faculty_member_ID  VARCHAR(6) PRIMARY KEY ,
    f_member_Name VARCHAR(50) NOT NULL,
    DeptID VARCHAR (6),
	FOREIGN KEY (DeptID) REFERENCES Department(DeptID));

--  Inserting values into faculty
INSERT INTO faculty
VALUES ('F01','Keith Ledger','D01'),('F02','Stanley Espinosa','D02'),('F03','Zyair Andrade','D03'),('F04','Larry Faulkner','D04'),('F05','Taylor Marshal','D05'),('F06','Tanner Solomon','D06'),
('F07','Hamza Gaines','D07'),('F08','Aya Dunn','D08'),('F09','Ansley Decker','D09'),('F010','Celine Leonard','D010'),('F011','Mylah Logan','D011'),('F012','Milo Duarte','D012'),
('F013','Alayna Pugh','D013'),('F014','Vicente Moore','D014'),('F015','Jaxton Chase','D015'),('F016','Westley Kramer','D016'),('F017','Kairo Aguilar','D017'),('F018','Aron Larson','D018'), 
('F019','Judson Yode','D019'),('F020','Ahmir Oliver','D020'),('F021','Camille Prince','D021'),('F022','Vicente Perez','D022'),('F023','Edgar Griffith','D023'),('F024','Mateo Novak','D024'),
('F025','Joy Page','D025'),('F026','Enoch Daniel','D026'),('F027','Joy Page','D027'),('F028','Georgia Ponce','D028'),('F029','Pablo Bryant','D029'),('F030','Parker Dodson','D030');


-- Vehicle table 
CREATE TABLE vehicle ( 
    vehicle_ID VARCHAR(6) PRIMARY KEY,
    vehicle_name VARCHAR(30) NOT NULL,
    status_of_vehicle VARCHAR(40) NOT NULL,
    mileage Float

    
);
        
--  Inserting values into vehicles     
INSERT INTO VEHICLE 
VALUES('V01','Car 1','Available',60.3),('V02','Medium van 1','Available',67.9),('V03','Mini van 1','In use',40.34),('V04','Bus 1','In maintenance',77.8),('V05','Bus 2','In use',52.34),('V06','Car 2','Available',92.12),
('V07','Car 3','In use',45.45),('V08','Jeep 1','In use',87.29),('V09','Mini van 2','In use',91.2),('V010','Mini van 3','Available',72.34),('V011','Bus 3','Available',100.23),('V012','Mini van 4','Available',92.1),
('V013','Medium van 3','Available',77.08),('V014','Car 4','In use',96.87),('V015','Bus 4','In use',77.34),('V016','Bus 5','Available',65.32),('V017','Mini van 5','In use',107.5),('V018','Mini van 6','Available',34.68),
('V019','Jeep 2','Available',67.89),('V020','Mini van 7','In use',32.76),('V021','Jeep 3','Available',44.09),('V022','Car 5','In maintenance',55.07),('V023','Car 6','Available',84.5),('V024','Bus 6','Available',57.87),
('V025','Medium van 4','maintenance',56.32),('V026','Mini van 8','In use',34.23),('V027','Medium van 2','Available',81.2),('V028','Car 7','In maintenance',110.34),('V029','Jeep 4','Available',46.22),('V030','Mini van 9','Available',78.10);

-- Reservation form table
CREATE TABLE Resrvtn_form (
				  ReservationID  VARCHAR (6) PRIMARY KEY ,
                  Date_of_booking DATE,
                  vehicle_ID VARCHAR (6),
                  faculty_member_ID VARCHAR (6),
                  destination VARCHAR(60) NOT NULL,
                  Check_IN_time DATETIME,
                  Check_OUT_time DATETIME,
				  FOREIGN KEY (faculty_member_ID ) REFERENCES faculty(faculty_member_ID ),
				  FOREIGN KEY (vehicle_ID) REFERENCES vehicle(vehicle_ID));


-- Inserting values in Reservation form table
INSERT INTO Resrvtn_form
VALUE('R01', '2023-01-25', 'V01', 'F01', 'Conference', '2023-01-25 08:00:00', '2023-01-25 12:00:00'),('R02', '2023-01-15', 'V02', 'F02', 'Workshop', '2023-01-03 09:00:00', '2023-01-03 13:00:00'),('R03', '2023-01-11', 'V03', 'F03', 'Seminar', '2023-01-25 10:00:00', '2023-01-25 14:00:00'),('R04', '2023-01-22', 'V04', 'F04', 'Conference', '2023-02-15 11:00:00', '2023-02-15 15:00:00'),('R05', '2023-02-07', 'V05', 'F05', 'Field Study', '2023-03-05 12:00:00', '2023-03-05 16:00:00'),('R06', '2023-02-05', 'V06', 'F06', 'Field Study', '2023-03-20 13:00:00', '2023-03-20 17:00:00'),
('R07', '2022-10-02', 'V07', 'F07', 'Field Study', '2023-01-25 06:00:00', '2023-01-25 08:00:00'),('R08', '2023-02-12', 'V08', 'F08', 'Conference', '2023-05-03 10:00:00', '2023-05-03 12:00:00'),('R09', '2023-04-13', 'V09', 'F09', 'Conference', '2024-04-10 13:00:00', '2024-04-10 18:00:00'),('R010', '2023-10-11', 'V010', 'F010', 'Workshop', '2024-02-05 19:30:00', '2024-02-05 22:45:00'),('R011', '2022-04-11', 'V011', 'F011', 'Conference', '2023-02-10 12:00:00', '2023-02-10 15:00:00'),('R012', '2023-08-01', 'V012', 'F012', 'Seminar', '2024-06-30 22:00:00', '2024-06-30 02:00:00'),
('R013', '2022-02-20', 'V013', 'F013', 'Workshop', NULL,NULL),('R014', '2022-02-16', 'V014', 'F014', 'Conference', '2023-07-30 21:00:00', '2023-07-30 01:00:00'),('R015', '2023-05-05', 'V015', 'F015', 'Seminar', '2023-08-10 22:00:00', '2023-08-10 02:00:00'),('R016', '2023-05-17', 'V016', 'F016', 'Research Trip', '2023-01-25 23:00:00', '2023-01-25 03:00:00'),('R017', '2023-05-18', 'V017', 'F017', 'Workshop', '2023-09-15 00:00:00', '2023-09-15 04:00:00'),('R018', '2023-06-07', 'V018', 'F018', 'Conference', '2023-09-30 01:00:00', '2023-09-30 05:00:00'),
('R019', '2022-12-19', 'V019', 'F019', 'Conference',NULL ,NULL),('R020', '2023-05-06', 'V020', 'F020', 'Conference', '2024-01-20 09:00:00', '2024-01-2 13:40:00'),('R021', '2023-07-13', 'V021', 'F021', 'Feild Study', '2023-12-05 16:20:00', '2023-12-05 18:30:00'),('R022', '2024-01-13', 'V022', 'F022', 'Feild Study', '2024-03-27 13:40:00', '2024-03-27 15:40:00'),('R023', '2023-03-03', 'V023', 'F023', 'Research Trip', '2023-05-17 12:50:00', '2023-05-17 15:35:00'),('R024', '2024-03-21', 'V024', 'F024', 'Workshop', '2024-05-07 06:10:00', '2024-05-07 10:10:00'),
('R025','2023-08-01', 'V025', 'F025', 'Field Study',NULL ,NULL),('R026', '2023-08-09', 'V026', 'F026', 'Conference', '2024-01-30 09:00:00', '2024-01-30 13:00:00'),('R027', '2023-08-16', 'V027', 'F027', 'Conference', '2024-02-10 10:00:00', '2024-02-10 14:00:00'),('R028', '2023-12-01', 'V028', 'F028', 'Research Trip', '2024-02-25 11:00:00', '2024-02-25 15:00:00'),('R029', '2023-12-03', 'V029', 'F029', 'Workshop', '2024-03-15 12:00:00', '2024-03-15 16:00:00'),('R030', '2023-12-21', 'V030', 'F030', 'Conference', '2024-03-30 13:00:00', '2024-03-30 17:00:00');


 -- Trip Completion form table

CREATE TABLE Trip_Cmpltn_form(
		  Trip_from_ID VARCHAR (6) PRIMARY KEY ,
		  ReservationID  VARCHAR (6),
          vehicle_ID VARCHAR (6),
          odmtr_start INT (10),
          odmtr_end INT (10),
          Maintenance MEDIUMTEXT,
          Fuel DECIMAL (10,2),
          Credit_Crd_no VARCHAR (15) ,
          FOREIGN KEY (ReservationID) REFERENCES Resrvtn_form(ReservationID),
		  FOREIGN KEY (vehicle_ID) REFERENCES vehicle(vehicle_ID));
          

-- Inserting data into Trip Completion form table
INSERT INTO Trip_Cmpltn_form
VALUES('T01','R01','V01', 10000, 10500,'Routine check',50.51, 1234567890),('T02','R02','V02',9000,9500,'Oil change',40.21,1020304050),('T03','R03','V03',12000,12500,'Brake replacement', 60.82, 9080706050),('T04','R04','V04',11000, 11500,'Transmission service', 55.31, 7890123456),('T05','R05','V05', 9500, 10000,'Tire rotation', 48.73, 2345678901),('T06','R06','V06', 8000, 8500, 'Coolant flush', 35.9, 9012345678),
('T07','R07','V07', 11500, 12000,'Air filter replacement', 42.61, 3456789012),('T08','R08','V08', 10500, 11000,'Spark plug change', 38.47, 6789012345),('T09','R09','V09', 10000, 10500,'Battery check', 51.28, 1234509876),('T010','R010','V010', 11000, 11500, 'Wheel alignment', 57.17, 8765432109),('T011','R011','V011', 9500, 10000,'Fuel system cleaning', 43.82, 4321098765),('T012','R012','V012', 8500, 9000,'Power steering fluid flush', 39.50, 1098765432),
('T013','R013','V013', 11500, 12000,'Power steering fluid flush', 39.50, 1098765432),('T014','R014','V014', 10500, 11000,'Radiator inspection', 52.77, 2109876543),('T015','R015','V015', 9000, 9500,'Exhaust system check', 37.68, 8765432109),('T016','R016','V016', 10000, 10500,'Cabin air filter replacement', 40.96, 9876543210),('T017','R017','V017', 12000, 12500,'Throttle body cleaning', 55.85, 1234567890),('T018','R018','V018', 11000, 11500,'Steering alignment', 49.41, 2345678901),
('T019','R019','V019', 9500, 10000,'Wiper blade replacement', 36.70, 9012345678),('T020','R020','V020', 8000, 8500,'Suspension inspection', 42.00, 3456789012),('T021','R021','V021', 11500, 12000,'Brake fluid flush', 53.64, 6789012345),('T022','R022','V022', 10500, 11000,'Cooling system check', 47.90, 1234509876),('T023','R023','V023', 10000, 10500,'Transmission fluid change', 44.22, 8765432109),('T024','R024','V024', 11000, 11500,'Fuel filter replacement', 50.12, 9876543210),
('T025','R025','V025', 9500, 10000,'Timing belt inspection', 38.51, 1234567890),('T026','R026','V026', 9000, 9500,'Power window check', 41.25, 2345678901),('T027','R027','V027', 12000, 12500, 'Exterior lights inspection', 48.68, 9012345678),('T028','R028','V028', 10500, 11000,'Air conditioning service', 54.31, 3456789012),('T029','R029','V029', 10000, 10500, 'Engine oil analysis', 45.76, 6789012345),('T030','R030','V030', 11500, 12000,'Steering fluid top-up', 39.85, 2109876543);

-- Receipt table
CREATE TABLE RECEIPT(
             Receipt_ID VARCHAR(6) PRIMARY KEY ,
			 Ttl_amt INT (25),
             faculty_member_ID  VARCHAR (6),
			 Trip_from_ID VARCHAR (6),
             Mileage_rate DECIMAL(7,2),
             FOREIGN KEY (Trip_from_ID) REFERENCES Trip_Cmpltn_form(Trip_from_ID),
		     FOREIGN KEY (faculty_member_ID ) REFERENCES faculty(faculty_member_ID ));
             
-- Inserting into Receipt table
INSERT INTO RECEIPT
VALUES('RD01', 500, 'F01', 'T01',200.06),('RD02', 700, 'F02', 'T02',93.76),('RD03', 600, 'F03', 'T03',87.23),('RD04', 800, 'F04', 'T04',120.32),('RD05', 550, 'F05', 'T05',102.62),('RD06', 900, 'F06', 'T06',200.42),
('RD07', 650, 'F07', 'T07',72.33),('RD08', 750, 'F08', 'T08',110.70),('RD09', 720, 'F09', 'T09',140.00),('RD10', 680, 'F010', 'T010',130.21),('RD11', 820, 'F011', 'T011',150.50),('RD12', 590, 'F012', 'T012',80.20),
('RD13', 870, 'F013', 'T013',135.60),('RD14', 640, 'F014', 'T014',107.00),('RD15', 770, 'F015', 'T015',92.10),('RD16', 690, 'F016', 'T016',100.35),('RD17', 730, 'F017', 'T017',81.90),('RD18', 580, 'F018', 'T018',110.47),
('RD19', 920, 'F019', 'T019',96.00),('RD20', 840, 'F020', 'T020',148.86),('RD21', 630, 'F021', 'T021',72.51),('RD22', 780, 'F022', 'T022',100.24),('RD23', 560, 'F023', 'T023',99.43),('RD24', 890, 'F024', 'T024',96.67),    
('RD25', 710, 'F025', 'T025',120.00),('RD26', 940, 'F026', 'T026',115.43),('RD27', 660, 'F027', 'T027',120.87),('RD28', 800, 'F028', 'T028',158.31),('RD29', 950, 'F029', 'T029',109.13),('RD30', 860, 'F030', 'T030',118.18);        


-- mechanic table
CREATE TABLE Mechanic(
          Mechanic_ID VARCHAR (6) PRIMARY KEY,
		  Mechanic_Name VARCHAR (30),
          authorization BIT);

-- Inserting into mechanic table
INSERT INTO Mechanic
VALUES('M01', 'John Doe', 1),('M02', 'Alice Smith', 0),('M03', 'Bob Johnson', 1),('M04', 'Eva Brown', 0),('M05', 'Charlie Davis', 1),('M06', 'Grace White', 0),
('M07', 'Frank Miller', 1),('M08', 'Olivia Wilson', 0),('M09', 'Daniel Taylor', 1),('M010', 'Sophia Hall', 0),('M011', 'Isaac Turner', 1),('M012', 'Hannah Clark', 0),
('M013', 'George Adams', 1),('M014', 'Emily Parker', 0),('M015', 'Michael Harris', 1),('M016', 'Lily Reed', 0),('M017', 'Matthew Brooks', 1),('M018', 'Ava Cooper', 0),('M019', 'Jacob Murphy', 1),
('M020', 'Emma Rogers', 0),('M021', 'William Coleman', 1),('M022', 'Grace Hayes', 0),('M023', 'James Richardson', 1),('M024', 'Chloe Bennett', 0),
('M025', 'Benjamin Foster', 1),('M026', 'Zoe Gray', 0),('M027', 'Christopher Wells', 1),('M028', 'Ella Howard', 0),('M029', 'Andrew Wood', 1),('M030', 'Avery Cox', 0);

          
-- Maintenace entry table
 CREATE TABLE Maintenance_Log_form (
          maintenanceLOG_id VARCHAR (6) PRIMARY KEY,
		  vehicle_ID varchar (6),
          type_of_maint TEXT,
		  entry_date DATE,
		  Service_date DATE,
          Mechanic_ID VARCHAR (6),
	      FOREIGN KEY (vehicle_ID) REFERENCES vehicle(vehicle_ID),
		  FOREIGN KEY (Mechanic_ID) REFERENCES Mechanic(Mechanic_ID));
          
-- Inserting data into Maintenace entry table

INSERT INTO Maintenance_Log_form
VALUES('ML01', 'V01', 'Regular Maintenance', '2023-01-02', '2023-01-03', 'M01'),('ML02', 'V02', 'Oil Change', '2023-01-04', '2023-01-05', 'M02'),('ML03', 'V03', 'Brake Repair', '2023-01-06', '2023-01-07', 'M03'),('ML04', 'V04', 'Tire Rotation', '2023-01-08', '2023-01-09', 'M04'),('ML05', 'V05', 'Transmission Service', '2023-01-10', '2023-01-11', 'M05'),('ML06', 'V06', 'Engine Diagnostic', '2023-01-12', '2023-01-13', 'M06'),
('ML07', 'V07', 'Air Filter Replacement', '2023-01-14', '2023-01-15', 'M07'),('ML08', 'V08', 'Coolant Flush', '2023-01-16', '2023-01-17', 'M08'),('ML09', 'V09', 'Battery Check', '2023-01-18', '2023-01-19', 'M09'),('ML10', 'V010', 'Wheel Alignment', '2023-01-20', '2023-01-21', 'M010'),('ML11', 'V011', 'Suspension Repair', '2023-01-22', '2023-01-23', 'M011'),('ML12', 'V012', 'Exhaust System Inspection', '2023-01-24', '2023-01-25', 'M012'),
('ML13', 'V013', 'Power Steering Fluid Flush', '2023-01-26', '2023-01-27', 'M013'),('ML14','V014','Tire Repair','2023-05-14','2023-05-15','M014'),('ML15', 'V015', 'Timing Belt Check', '2023-01-30', '2023-01-31', 'M015'),('ML16', 'V016', 'Radiator Inspection', '2023-02-01', '2023-02-02', 'M016'),('ML17', 'V017', 'Fuel System Cleaning', '2023-02-03', '2023-02-04', 'M017'),('ML18', 'V018', 'Ignition System Tune-up', '2023-02-05', '2023-02-06', 'M018'),
('ML19', 'V019', 'Throttle Body Cleaning', '2023-02-07', '2023-02-08', 'M019'),('ML20', 'V020', 'Cabin Air Filter Replacement', '2023-02-09', '2023-02-10', 'M020'),('ML21', 'V021', 'Wheel Bearing Inspection', '2023-02-11', '2023-02-12', 'M021'),('ML22', 'V022', 'Drive Belt Check', '2023-02-13', '2023-02-14', 'M022'),('ML23', 'V023', 'PCV Valve Replacement', '2023-02-15', '2023-02-16', 'M023'),('ML24', 'V024', 'Brake Fluid Flush', '2023-02-17', '2023-02-18', 'M024'),
('ML25', 'V025', 'Exterior Light Inspection', '2023-02-19', '2023-02-20', 'M025'),('ML26', 'V026', 'Steering Rack Inspection', '2023-02-21', '2023-02-22', 'M026'),('ML27', 'V027', 'Shocks and Struts Check', '2023-02-23', '2023-02-24', 'M027'),('ML28', 'V028', 'Alternator Test', '2023-02-25', '2023-02-26', 'M028'),('ML29', 'V029', 'Headlight Alignment', '2023-02-27', '2023-02-28', 'M029'),('ML30', 'V030', 'AC System Inspection', '2023-03-01', '2023-03-02', 'M030');


-- Maintenace Detail Form table
CREATE TABLE Maint_Detail_Form(
          maint_Dtl_ID VARCHAR (6) PRIMARY KEY,
          maintenanceLOG_id VARCHAR (6),
          PartsDept_managerID VARCHAR(6),
          maintnce_item VARCHAR (50),
          Parts_used VARCHAR (50),
		  Mechanic_ID VARCHAR (6),
          FOREIGN KEY (maintenanceLOG_id) REFERENCES Maintenance_Log_form(maintenanceLOG_id),
          FOREIGN KEY (Mechanic_ID) REFERENCES Mechanic(Mechanic_ID));

-- Entering data into Maintenace Detail Form table
INSERT INTO Maint_Detail_Form
VALUES('MD01', 'ML01', 'P01', 'Oil Filter Replacement', 'Oil Filter', 'M01'),('MD02', 'ML02', 'P02', 'Air Filter Replacement', 'Air Filter', 'M02'),('MD03', 'ML03', 'P03', 'Brake Pad Replacement', 'Brake Pad', 'M03'),('MD04', 'ML04', 'P04', 'Spark Plug Replacement', 'Spark Plug', 'M04'),('MD05', 'ML05', 'P05', 'Wheel Alignment', 'Alignment Kit', 'M05'),('MD06', 'ML06', 'P06', 'Battery Check', 'Battery Tester', 'M06'),
('MD07', 'ML07', 'P07', 'Coolant Flush', 'Coolant', 'M07'),('MD08', 'ML08', 'P08', 'Transmission Fluid Change', 'Transmission Fluid', 'M08'),('MD09', 'ML09', 'P09', 'Tire Rotation', 'Tire Rotation Kit', 'M09'),('MD10', 'ML10', 'P010', 'Engine Oil Change', 'Engine Oil', 'M010'),('MD11', 'ML11', 'P011', 'Timing Belt Replacement', 'Timing Belt', 'M011'),('MD12', 'ML12', 'P012', 'Air Conditioning Service', 'AC Refrigerant', 'M012'),
('MD13', 'ML13', 'P013', 'Radiator Flush', 'Radiator Flush Solution', 'M013'),('MD14', 'ML14', 'P014', 'Brake Fluid Change', 'Brake Fluid', 'M014'),('MD15', 'ML15', 'P015', 'Power Steering Fluid Change', 'Power Steering Fluid', 'M015'),('MD16', 'ML16', 'P016', 'Fuel Filter Replacement', 'Fuel Filter', 'M016'),('MD17', 'ML17', 'P017', 'Throttle Body Cleaning', 'Throttle Cleaner', 'M017'),('MD18', 'ML18', 'P018', 'Cabin Air Filter Replacement', 'Cabin Air Filter', 'M018'),
('MD19', 'ML19', 'P19', 'Exhaust System Inspection', 'Exhaust Pipe', 'M019'),('MD20', 'ML20', 'P020', 'Wheel Bearing Replacement', 'Wheel Bearing', 'M020'),('MD21', 'ML21', 'P021', 'Shocks and Struts Replacement', 'Shock Absorber', 'M021'),('MD22', 'ML22', 'P022', 'Ignition System Check', 'Ignition Coil', 'M022'),('MD23', 'ML23', 'P023', 'Drive Belt Inspection', 'Drive Belt', 'M023'),('MD24', 'ML24', 'P024', 'Steering Rack Inspection', 'Steering Rack', 'M024'),
('MD25', 'ML25', 'P025', 'AC Compressor Check', 'AC Compressor', 'M025'),('MD26', 'ML26', 'P026', 'Engine Diagnostic', 'Diagnostic Tool', 'M026'),('MD27', 'ML27', 'P027', 'Headlight Alignment', 'Headlight Alignment Kit', 'M027'),('MD28', 'ML28', 'P028', 'Suspension Inspection', 'Suspension Kit', 'M028'),('MD29', 'ML29', 'P029', 'Alternator Check', 'Alternator Tester', 'M029'),('MD30', 'ML30', 'P030', 'Fuel System Cleaning', 'Fuel System Cleaner', 'M030');


-- Parts Inventory table  
CREATE TABLE Parts_Invt(
           parts_InvtID varchar (6) PRIMARY KEY,
           part_name VARCHAR (40),
           part_qty INT (255),
           min_qty_onhand INT (255));
           
           
-- Inserting into Parts Inventory table 
INSERT INTO  Parts_Invt
VALUES('PD01', 'Oil Filter', 100, 20),('PD02', 'Air Filter', 80, 15),('PD03', 'Brake Pad', 50, 10),('PD04', 'Spark Plug', 120, 25),('PD05', 'Alignment Kit', 30, 5),('PD06', 'Battery Tester', 40, 8),
('PD07', 'Coolant', 60, 12),('PD08', 'Transmission Fluid', 90, 18),('PD09', 'Tire Rotation Kit', 25, 4),('PD10', 'Engine Oil', 150, 30),('PD11', 'Timing Belt', 15, 3),('PD12', 'AC Refrigerant', 20, 4),
('PD13', 'Radiator Flush Solution', 35, 7),('PD14', 'Brake Fluid', 55, 11),('PD15', 'Power Steering Fluid', 70, 14),('PD16', 'Fuel Filter', 45, 9),('PD17', 'Throttle Cleaner', 30, 6),('PD18', 'Cabin Air Filter', 40, 8),
('PD19', 'Exhaust Pipe', 25, 5),('PD20', 'Wheel Bearing', 20, 4),('PD21', 'Shock Absorber', 30, 6),('PD22', 'Ignition Coil', 25, 5),('PD23', 'Drive Belt', 18, 3),('PD24', 'Steering Rack', 22, 4),
('PD25', 'AC Compressor', 15, 3),('PD26', 'Diagnostic Tool', 10, 2),('PD27', 'Headlight Alignment Kit', 28, 5),('PD28', 'Suspension Kit', 32, 6),('PD29', 'Alternator Tester', 18, 3),('PD30', 'Fuel System Cleaner', 22, 4);
           

-- Parts Usage table         
CREATE TABLE Parts_Usage(
			 Parts_usageID VARCHAR (6) PRIMARY KEY,
			 parts_InvtID varchar (6),
             Mechanic_ID VARCHAR(6),
             maintenanceLOG_id VARCHAR (6),
			 FOREIGN KEY (parts_InvtID) REFERENCES Parts_Invt(parts_InvtID),
             FOREIGN KEY (maintenanceLOG_id) REFERENCES Maintenance_Log_form (maintenanceLOG_id),
             FOREIGN KEY (Mechanic_ID) REFERENCES Mechanic(Mechanic_ID));

-- Inserting data into Parts Usage table

INSERT INTO Parts_Usage
VALUES('PU01', 'PD01', 'M01', 'ML01'),('PU02', 'PD02', 'M02', 'ML02'),('PU03', 'PD03', 'M03', 'ML03'),('PU04', 'PD04', 'M04', 'ML04'),('PU05', 'PD05', 'M05', 'ML05'),('PU06', 'PD06', 'M06', 'ML06'),
('PU07', 'PD07', 'M07', 'ML07'),('PU08', 'PD08', 'M08', 'ML08'),('PU09', 'PD09', 'M09', 'ML09'),('PU10', 'PD10', 'M010', 'ML10'),('PU11', 'PD11', 'M011', 'ML11'),('PU12', 'PD12', 'M012', 'ML12'),
('PU13', 'PD13', 'M013', 'ML13'),('PU14', 'PD14','M014', 'ML14'),('PU15', 'PD15', 'M015', 'ML15'),('PU16', 'PD16', 'M016', 'ML16'),('PU17', 'PD17', 'M017', 'ML17'),('PU18', 'PD18','M018', 'ML18'),
('PU19', 'PD19', 'M019', 'ML19'),('PU20', 'PD20', 'M020', 'ML20'),('PU21', 'PD21', 'M021', 'ML21'),('PU22', 'PD22', 'M022', 'ML22'),('PU23','PD23', 'M023', 'ML23'),('PU24', 'PD24', 'M024', 'ML24'),
('PU25', 'PD25', 'M025', 'ML25'),('PU26', 'PD26', 'M026', 'ML26'),('PU27', 'PD27', 'M027', 'ML27'),('PU28', 'PD28', 'M028', 'ML28'),('PU29', 'PD29', 'M029', 'ML29'),('PU30', 'PD30', 'M030', 'ML30');
             
             
-- User table
CREATE TABLE Users( 
           UserID VARCHAR (6) PRIMARY KEY,
           User_Name VARCHAR (70) UNIQUE,
           access_type VARCHAR (20)DEFAULT 'Regular',-- Enter whether 'Regular' or 'Admin'
           DeptID VARCHAR (6),
           FOREIGN KEY (DeptID) REFERENCES Department(DeptID));
           

-- Inserting data into User table    
INSERT INTO Users
VALUES('U01', 'John Doe', 'Regular', 'D01'),('U02', 'Jane Smith', 'Admin', 'D02'),('U03', 'Robert Johnson', 'Regular', 'D03'),('U04', 'Emily Davis', 'Admin', 'D04'),('U05', 'Michael Brown', 'Regular', 'D05'),('U06', 'Sophia Wilson', 'Admin', 'D06'),
('U07', 'Daniel Taylor', 'Regular', 'D07'),('U08', 'Olivia Hall', 'Admin', 'D08'),('U09', 'Matthew Lewis', 'Regular', 'D09'),('U010', 'Emma Turner', 'Admin', 'D010'),('U011', 'William White', 'Regular', 'D011'),('U012', 'Ava Parker', 'Admin', 'D012'),
('U013', 'James Adams', 'Regular', 'D013'),('U014', 'Grace Carter', 'Admin', 'D014'),('U015', 'Benjamin Scott', 'Regular', 'D015'),('U016', 'Lily Evans', 'Admin', 'D016'),('U017', 'Christopher Harris', 'Regular', 'D017'),('U018', 'Mia King', 'Admin', 'D018'),
('U019', 'Ethan Hughes', 'Regular', 'D019'),('U020', 'Zoe Clark', 'Admin', 'D020'),('U021', 'Samuel Turner', 'Regular', 'D021'),('U022', 'Chloe Garcia', 'Admin', 'D022'),('U023', 'Daniel Foster', 'Regular', 'D023'),('U024', 'Madison Rogers', 'Admin', 'D024'),
('U025', 'David Reed', 'Regular', 'D025'),('U026', 'Aria Mitchell', 'Admin', 'D026'),('U027', 'Joseph Coleman', 'Regular', 'D027'),('U028', 'Lillian Murphy', 'Admin', 'D028'),('U029', 'Melanie Susan', 'Regular', 'D029'),('U030', 'Sophia Williams', 'Admin', 'D030');

-- Accesss to Report table
CREATE TABLE Access_to_reprt(
       AccessID VARCHAR (6) PRIMARY KEY,
       accessed_reports VARCHAR (255),
	   UserID VARCHAR (6),
       FOREIGN KEY (UserID) REFERENCES Users(UserID));
       
-- Inserting data into Accesss to Report table   
INSERT INTO Access_to_reprt
VALUES('A01', 'Mileage by Vehicle', 'U01'), ('A02', 'Mileage by Department', 'U02'), ('A03', 'Mileage by Faculty Members', 'U03'),('A04', 'Revenue by Vehicles', 'U04'), ('A05', 'Revenue by Departments', 'U05'), ('A06', 'Mileage by Vehicle', 'U06'),
('A07', 'Mileage by Department', 'U07'), ('A08', 'Mileage by Faculty Members', 'U08'), ('A09', 'Revenue by Vehicles', 'U09'),('A010', 'Revenue by Departments', 'U010'), ('A011', 'Mileage by Vehicle', 'U011'), ('A012', 'Mileage by Department', 'U012'),
('A013', 'Mileage by Faculty Members', 'U013'), ('A014', 'Revenue by Vehicles', 'U014'), ('A015', 'Revenue by Departments', 'U015'),('A016', 'Mileage by Vehicle', 'U016'), ('A017', 'Mileage by Department', 'U017'), ('A018', 'Mileage by Faculty Members', 'U018'),
('A019', 'Revenue by Vehicles', 'U019'), ('A020', 'Revenue by Departments', 'U020'), ('A021', 'Mileage by Vehicle', 'U021'),('A022', 'Mileage by Department', 'U022'), ('A023', 'Mileage by Faculty Members', 'U023'), ('A024', 'Revenue by Vehicles', 'U024'),
('A025', 'Revenue by Departments', 'U025'), ('A026', 'Mileage by Vehicle', 'U026'), ('A027', 'Mileage by Department', 'U027'),('A028', 'Mileage by Faculty Members', 'U028'), ('A029', 'Revenue by Vehicles', 'U029'), ('A030', 'Revenue by Departments', 'U030');


-- Reports table
CREATE TABLE Reports(
		reportID varchar (6) PRIMARY KEY,
		report_name VARCHAR (40),
		UserID VARCHAR (6),
        FOREIGN KEY (UserID) REFERENCES Users(UserID));

-- Inserting into Reports table
INSERT INTO Reports
VALUE('R01', 'Mileage Report', 'U01'), ('R02', 'Revenue Report', 'U02'), ('R03', 'Maintenance Report', 'U03'),('R04', 'Fuel Consumption Report', 'U04'), ('R05', 'Department-wise Report', 'U05'), ('R06', 'Vehicle Status Report', 'U06'),
('R07', 'Faculty-wise Report', 'U07'), ('R08', 'Trip Completion Report', 'U08'), ('R09', 'Parts Usage Report', 'U09'),('R010', 'Reservation Report', 'U010'), ('R011', 'Accident Report', 'U011'), ('R012', 'Financial Summary Report', 'U012'),
('R013', 'Vehicle Utilization Report', 'U013'), ('R014', 'Maintenance Cost Report', 'U014'), ('R015', 'Odometer Reading Report', 'U015'),('R016', 'Faculty Expenses Report', 'U016'), ('R017', 'Insurance Claim Report', 'U017'), ('R018', 'Trip Expenses Report', 'U018'),
('R019', 'Safety Inspection Report', 'U019'), ('R020', 'Vehicle Reservations Report', 'U020'), ('R021', 'Environmental Impact Report', 'U021'),('R022', 'Driver Performance Report', 'U022'), ('R023', 'Vehicle Efficiency Report', 'U023'), ('R024', 'Facility Usage Report', 'U024'),
('R025', 'Accident History Report', 'U025'), ('R026', 'Service Records Report', 'U026'), ('R027', 'Vehicle Downtime Report', 'U027'),('R028', 'Emergency Response Report', 'U028'), ('R029', 'Budget Analysis Report', 'U029'), ('R030', 'Sustainability Report', 'U030');

-- Creating some indexes

CREATE INDEX idx_vehicle_ID ON Resrvtn_form (vehicle_ID);
CREATE INDEX idx_faculty_member_ID ON Resrvtn_form (faculty_member_ID);
CREATE INDEX idx_Mechanic_ID_maintenance ON Maintenance_Log_form (Mechanic_ID);
CREATE INDEX idx_maintenanceLOG_id_detail ON Maint_Detail_Form (maintenanceLOG_id);

-- Testing database with Queries

-- Query 1


SELECT v.vehicle_ID, v.vehicle_name FROM VEHICLE v WHERE v.vehicle_ID IN
(
SELECT r.vehicle_ID FROM Resrvtn_form r 
WHERE Date_of_booking = '2023-01-25' and v.status_of_vehicle ='Available'
);


-- Query 2
SELECT d.DeptName AS Department, COUNT(r.vehicle_ID) AS No_of_vehicles, r.faculty_member_ID AS recurrent_member, COUNT(*) AS recur_Count
FROM Department d
JOIN faculty f on d.DeptID = f.DeptID
JOIN Resrvtn_form r ON f.faculty_member_ID = r.faculty_member_ID
GROUP BY d.DeptName, r.faculty_member_ID ORDER BY d.DeptName, recur_Count DESC;

-- Query 3

SET @start_date = '2023-01-01';
SET @end_date = '2023-12-31';

SELECT f.f_member_Name AS Faculty_Member, SUM(v.mileage) AS TotalMileage
FROM faculty f
JOIN Resrvtn_form r ON f.faculty_member_ID = r.faculty_member_ID
JOIN vehicle v ON r.vehicle_ID = v.vehicle_ID
WHERE r.Date_of_booking BETWEEN @start_date AND @end_date
GROUP BY f.f_member_Name;

-- Query 4

SELECT *
FROM RECEIPT
WHERE Receipt_ID = 'RD02';

-- Query 5

SELECT f.faculty_member_ID, f.f_member_Name, r.ReservationID, r.Date_of_booking, r.Check_IN_time, r.Check_OUT_time
FROM faculty f
JOIN Resrvtn_form r ON f.faculty_member_ID = r.faculty_member_ID
WHERE r.Check_IN_time IS NULL;

-- Query 6

SELECT
    MONTH(r.Date_of_booking) AS Month,
    YEAR(r.Date_of_booking) AS Year,
    d.DeptName AS Department,
    f.faculty_member_ID,
    f.f_member_Name,
    COUNT(*) AS Total_Reservations,
    COUNT(r.Check_IN_time) AS Total_Used,
    COUNT(*) - COUNT(r.Check_IN_time) AS Ttl_NotUsed
FROM Resrvtn_form r
JOIN faculty f ON r.faculty_member_ID = f.faculty_member_ID JOIN Department d ON f.DeptID = d.DeptID
GROUP BY Year, Month, Department, f.faculty_member_ID, f.f_member_Name
ORDER BY Year, Month, Department, f.faculty_member_ID;


-- Query 7
SELECT
    v.vehicle_ID,
    v.vehicle_name,
    COUNT(r.ReservationID) AS Use_count
FROM
    vehicle v
LEFT JOIN Resrvtn_form r ON v.vehicle_ID = r.vehicle_ID
LEFT JOIN faculty f ON r.faculty_member_ID = f.faculty_member_ID
WHERE
    v.status_of_vehicle = 'Available'
    AND f.DeptID = 'D012'
GROUP BY
    v.vehicle_ID, v.vehicle_name
ORDER BY
    Use_count DESC;








