create schema malnutrition;

create table malnutrition.progress_details(
progress_id SERIAL primary key,
child_id VARCHAR (4),
registration_date DATE not null,
height_cm numeric (5) not NULL,
weight_kg numeric (5) not NULL,
meals_per_day INT
);


INSERT INTO malnutrition.progress_details(progress_id, child_id, registration_date, height, weight, meals_per_day)
VALUES('T01','CT01','2025-04-10',080.23,100.67,4);


('T02','CT02','2025-04-11',090.80,110.01,3),
('T03','CT03','2025-04-14',096.90,111.44,3),
('T04','CT04','2025-04-15',88.76,90.67,4),
('T05','CT01','2025-04-10',80.02,100.45,4),
('T06','CT06','2025-04-11',90.33,110.12,3),
('T07','CT08','2025-04-19',91.45,110.54,4),
('T08','CT08','2025-04-20',90.76,117.12,3),
('T09','CT09','2025-04-20',99.22,100.09,3),
('T10','CT10','2025-04-22',89.54,113.35,4),
('T11','CT11','2025-04-22',86.22,98.90,3),
('T12','CT12','2025-04-23',109.44,103.55,3),
('T13','CT13','2025-04-24',89.34,93.05,4),
('T14','CT14','2025-04-25',85.61,110.84,3),
('T15','CT15','2025-04-27',95.78,101.41,4);

create table malnutrition.parent_table(
parent_id VARCHAR (5) primary key,
parent_name VARCHAR (100),
phone_number VARCHAR (100),
national_id VARCHAR (20)
);

insert into malnutrition.parent_table (parent_id, parent_name,phone_number, national_id)
values
('PRO1', 'Maina', '0708539079', '123456'),
('PR02', 'Mbugua', '0706536876', '65432'),
('PR03', 'Shirley', '0768943674', '846724'),
('PR04', 'Bilha', '076543218', '7536281'),
('PR05', 'Umutoni', '07532763452', '8643234'),
('PR06', 'Mutua', '075377234', '3487234'),
('PR07', 'Kevine', '075236456', '2342343'),
('PR08', 'Semhal', '076452387', '36432784'),
('PR09', 'Estifanos', '0764523643', '6576437'),
('PR10', 'Judy', '074366237', '4753872'),
('PR11', 'Gikuni', '072354234', '7328397'),
('PR12', 'Kamau', '0746374648', '73246234'),
('PR13', 'Hannah', '07526374', '6327474'),
('PR14', 'Saloi', '075774234', '7539324'),
('PR15', 'Jacky', '8573645', '76354235');

select * from parent_table

where name like 'K%'or 'k%';
