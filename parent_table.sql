CREATE TABLE malnutrition.child (
   child_id VARCHAR PRIMARY KEY,
   names VARCHAR(50),
   dob DATE,
   gender VARCHAR(10),
   school BOOLEAN
);


INSERT INTO malnutrition.child (child_id, names, dob, gender, school) VALUES
('CT01', 'Amina Newa', '2014-06-12', 'Female', TRUE),
('CT02', 'Dan Wajer', '2015-03-03', 'Male', FALSE),
('CT03', 'Peace Agare', '2016-12-13', 'Female', TRUE),
('CT04', 'Brian Owage', '2017-09-23', 'Male', FALSE),
('CT05', 'Suzan Ways', '2018-11-20', 'Female', TRUE),
('CT06', 'Anicet Wayne', '2019-08-10', 'Male', FALSE),
('CT07', 'Hope Latifer', '2020-05-31', 'Female', TRUE),
('CT08', 'William Uhuru', '2021-07-30', 'Male', FALSE),
('CT09', 'Helena Mugabe', '2022-01-02', 'Female', TRUE),
('CT10', 'Gasore Armstrong', '2016-02-01', 'Male', FALSE),
('CT11', 'Brianne Gitore', '2019-06-10', 'Female', TRUE),
('CT12', 'Positifu Emmanuel', '2020-02-16', 'Male', FALSE),
('CT13', 'Akana Kabo', '2021-04-17', 'Female', TRUE),
('CT14', 'Samson Awaje', '2022-12-13', 'Male', FALSE),
('CT15', 'Faith Ochieng', '2017-03-19', 'Female', TRUE);



CREATE TABLE malnutrition.progress_details(
progress_id VARCHAR(4) primary key,
child_id VARCHAR (4) NOT NULL,
CONSTRAINT child_fk FOREIGN KEY(child_id) REFRENCES malnutrition.child(child_id) ON DELETE SET NULL
registration_date DATE not null,
height INT not NULL,
weight INT not NULL,
meals_per_day INT
);
INSERT INTO malnutrition.progress_details(progress_id,child_id,registration_date,height,weight,meals_per_day)
VALUES 
('T01','CT01','2025-04-10',80,100,4),
('T02','CT02','2025-04-11',90,110,3),
('T03','CT03','2025-04-14',96,111,3),
('T04','CT04','2025-04-15',88,90,4),
('T05','CT01','2025-04-10',80,100,4),
('T06','CT06','2025-04-11',90,110,3),
('T07','CT08','2025-04-19',91,110,4),
('T08','CT08','2025-04-20',90,117,3),
('T09','CT09','2025-04-20',99,100,3),
('T10','CT10','2025-04-22',89,113,4),
('T11','CT11','2025-04-22',86,98,3),
('T12','CT12','2025-04-23',109,103,3),
('T13','CT13','2025-04-24',89,93,4),
('T14','CT14','2025-04-25',85,110,3),
('T15','CT15','2025-04-27',95,101,4);



SELECT COUNT (*),

FROM (
    SELECT child_id,
    MIN (weight/POWER (height,2)) AS
        min-bmi,
    MAX (weight/POWER(height,2)) AS
        max_bmi,
    FROM malnutrition.progress_details,
    GROUP BY child_id AS bmi_progress,
    WHERE max_bmi > min_bmi,
);