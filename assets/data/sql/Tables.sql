## Enums
CREATE TYPE Gender AS ENUM(
  'male',
  'female'
);

CREATE TYPE WeekDay AS ENUM(
  'monday',
  'tuesday',
  'wednesday',
  'thursday',
  'friday',
  'saturday',
  'sunday'
);

CREATE TYPE EatTime AS ENUM(
  'preTraining',
  'breakfast',
  'lunch',
  'dinner'
);

CREATE TYPE Preparation AS ENUM(
  'base',
  'cooked'
);

## Tables
CREATE TABLE Users(
  Id SERIAL PRIMARY KEY,
  Email VARCHAR(125) UNIQUE,
  Username VARCHAR(90) UNIQUE,
  Password VARCHAR(255)
);

CREATE TABLE UserFitness(
  Id SERIAL PRIMARY KEY,
  UserId INT UNIQUE,
  BirthDay DATE,
  Heigth FLOAT,
  Weigth FLOAT,
  Gender GENDER,
  FOREIGN KEY (UserId) REFERENCES Users(Id)
);

CREATE TABLE Foods(
  Id SERIAL PRIMARY KEY,
  Name VARCHAR(125) UNIQUE NOT NULL,
  Preparation PREPARATION,
  Calories FLOAT,
  Proteins FLOAT,
  Carbohydrates FLOAT,
  Fibers FLOAT
);

CREATE TABLE FoodPlans(
  Id INT,
  UserId INT,
  FoodId INT,
  WeekDay WEEKDAY,
  EatTime EATTIME,
  PortionAmount FLOAT,
  FOREIGN KEY (UserId) REFERENCES Users(Id),
  FOREIGN KEY (FoodId) REFERENCES Foods(Id)
);