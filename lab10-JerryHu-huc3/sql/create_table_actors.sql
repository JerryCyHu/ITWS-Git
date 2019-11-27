-- create the tables for our movies

CREATE TABLE `actors` (
 `actorid` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `first_names` varchar(100) NOT NULL,
 `last_name` varchar(100) NOT NULL,
 `dob` varchar(10) NOT NULL,
 PRIMARY KEY (`actorid`)
);


-- insert data into the tables

INSERT INTO actors VALUES
  (1, "Tom", "Holland", "1996-6-1"),
  (2, "Robert", "Downey Jr", "1965-4-4"),
  (3, "Chris", "Evans", "1981-6-13"),
  (4, "Chris", "Hemsworth", "1983-8-11"),
  (5, "Chris", "Pratt", "1979-6-21");