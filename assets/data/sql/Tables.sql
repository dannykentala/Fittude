
SELECT * FROM WeekDays

CREATE TABLE WeekDays(
  Id SERIAL PRIMARY KEY,
  Name VARCHAR(40) NOT NULL
);

CREATE TABLE EatTime(
  Id SERIAL PRIMARY,
  Name VARCHAR(40) NOT NULL
);

CREATE TABLE Foods(
  Id SERIAL PRIMARY KEY,
  Name VARCHAR(125) UNIQUE NOT NULL,
  Preparation ENUM('Base', 'Cooked') DEFAULT 'Base',
  Calories INT(25),
  Proteins INT(15),
  Carbohydrates INT(15),
  Fibers INT(15)
);

CREATE TABLE FoodPlan(
  PortionAmount INT(11),
  WeekDayId INT,
  EatTimeId INT,
  FoodId INT,
  FOREIGN KEY (WeekDayId) REFERENCES WeekDays(Id),
  FOREIGN KEY (EatTimeId) REFERENCES EatTime(Id),
  FOREIGN KEY (FoodId) REFERENCES Foods(Id)
);

CREATE DATABASE Fittude;

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE `FoodPlan`;
TRUNCATE Table `FoodPlan`;