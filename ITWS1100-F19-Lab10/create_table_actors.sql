-- create the tables for our movies

CREATE TABLE `actors` (
 `actorid` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `firstname` varchar(100) NOT NULL,
 `lastname` varchar(100) NOT NULL,
 'DOB' varchar(10) NOT NULL;
 PRIMARY KEY (`actorid`)
);


-- insert data into the tables

INSERT INTO actors VALUES
  (1, "Tom", "1998-9-1")
