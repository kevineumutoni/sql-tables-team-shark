create schema malnutrition;
--Create a child table with attributes like(child_id, names, dob, gender, school)

CREATE TABLE malnutrition.child (
   child_id VARCHAR PRIMARY KEY,
   names VARCHAR(50),
   dob DATE,
   gender VARCHAR(10),
   school BOOLEAN
);
--Insert 15 rows in the table

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

--Create a new table for nutrition called malnutrition.nutrition

CREATE TABLE malnutrition.nutrition (
   nutrition_id VARCHAR PRIMARY KEY,
   child_id VARCHAR REFERENCES malnutrition.child(child_id),
   date DATE,
   breakfast VARCHAR(100),
   lunch VARCHAR(100),
   dinner VARCHAR(100)
);

--Create another table for health_records called health-records 
CREATE TABLE malnutrition.hospital_record(
record_id  VARCHAR(5) PRIMARY KEY,
child_id  VARCHAR(5) REFERENCE malnutrition.child(child_id),
record_date DATE
disease VARCHAR(100));
INSERT INTO malnutrition.hospital_record(record_id,child_id,record_date  ,disease)
VALUES
('H01','CT01', ' 2024-04-02', 'Cholera'),
('H02','CT02', ' 2024-06-12','Kwashiorkor'),
('H03','CT03',' 2024-04-12', 'Malaria'),
('H04','CT04',' 2024-07-09', 'Scurvy'),
('H05','CT05',' 2024-01-02', 'Rickets'),
('H06','CT06',' 2025-04-11', 'Beriberi'),
('H07','CT07',' 2025-04-27', 'Malaria'),
('H08','CT08',' 2024-04-09', 'Tuberculosis'),
('H09','CT09',' 2025-04-07', 'Malaria'),
('H10','CT10',' 2025-01-02', 'Malaria'),
('H11','CT11',' 2025-03-06', 'Malaria'),
('H12','CT12',' 2024-02-13', 'Kwashiorkor'),
('H13','CT13',' 2025-01-12', 'Cholera'),
('H14','CT14',' 2025-02-23', 'Cholera'),
('H15','CT15',' 2025-03-22', 'Rickets');



--Each group member must select a different table to work with for the following section:

--First question How many children under 1 year 10 months are in your table

SELECT COUNT(*) AS under_1_year_10_months
FROM malnutrition.child
WHERE AGE(CURRENT_DATE, dob) < INTERVAL '1 year 10 months';


--Second question 
--How many children have had more than 2 diseases in last month


