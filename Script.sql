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

