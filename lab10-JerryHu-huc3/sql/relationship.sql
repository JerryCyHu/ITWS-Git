-- create the tables for our movies

CREATE TABLE `relationship` (
 `relationid` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `movieid` int(10) NOT NULL,
 `actorid` int(10) NOT NULL,
 PRIMARY KEY (`relationid`)
);


-- insert data into the tables

INSERT INTO relationship VALUES
  (1, 7, 1),
  (2, 8, 2),
  (3, 9, 3);