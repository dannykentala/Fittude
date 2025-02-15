-- Inserting Data into Users
INSERT INTO Users (Email, Username, Password) VALUES
('juan.perez@example.com', 'juanperez', 'password_1'),
('maria.gomez@example.com', 'mariagomez', 'password_2'),
('luis.rodriguez@example.com', 'luisrodriguez', 'password_3'),
('ana.morales@example.com', 'anamorales', 'password_4'),
('carlos.sanchez@example.com', 'carlossanchez', 'password_5');

-- Inserting Data into UserFitness
INSERT INTO UserFitness (UserId, BirthDay, Heigth, Weigth, Gender) VALUES
(1, '1990-05-15', 1.75, 70.5, 'male')
(2, '1985-11-22', 1.60, 60.0, 'female'),
(3, '1992-03-03', 1.82, 85.0, 'male'),
(4, '1994-07-09', 1.65, 58.0, 'female'),
(15, '1988-01-12', 1.78, 77.0, 'male');

-- Inserting Data into Foods
INSERT INTO Foods (Name, Preparation, Calories, Proteins, Carbohydrates, Fibers) VALUES
('Arepa', 'Cooked', 150, 4, 30, 2),
('Ajiaco', 'Cooked', 350, 15, 45, 5),
('Bandeja Paisa', 'Cooked', 1000, 40, 100, 10),
('Sancocho', 'Cooked', 500, 25, 60, 8),
('Empanada', 'Cooked', 200, 7, 30, 3),
('Huevos', 'Base', 250, 20, 15, 5),
('Lechona', 'Cooked', 800, 35, 70, 7),
('Tamale', 'Cooked', 350, 12, 50, 5),
('Mango', 'Base', 150, 2, 40, 5),
('Bocadillo', 'Base', 180, 1, 45, 3);

-- Inserting Data into FoodPlan

-- Juan Perez's Food Plan
INSERT INTO FoodPlan (UserId, WeekDay, EatTime, FoodId, PortionAmount) VALUES
(1, 'monday', 'breakfast', 1, 1.0),
(1, 'monday', 'lunch', 2, 1.5),
(1, 'monday', 'dinner', 4, 1.0),
(1, 'tuesday', 'breakfast', 3, 1.0),
(1, 'tuesday', 'lunch', 5, 2.0),
(1, 'tuesday', 'dinner', 7, 1.0);

-- Maria Gomez's Food Plan
INSERT INTO FoodPlan (UserId, WeekDay, EatTime, FoodId, PortionAmount) VALUES
(2, 'monday', 'breakfast', 9, 1.0),
(2, 'monday', 'lunch', 4, 1.0),
(2, 'monday', 'dinner', 6, 1.0),
(2, 'wednesday', 'breakfast', 1, 1.0),
(2, 'wednesday', 'lunch', 2, 1.5),
(2, 'wednesday', 'dinner', 5, 1.5);

-- Luis Rodriguez's Food Plan
INSERT INTO FoodPlan (UserId, WeekDay, EatTime, FoodId, PortionAmount) VALUES
(3, 'friday', 'breakfast', 1, 1.5),
(3, 'friday', 'lunch', 2, 2.0),
(3, 'friday', 'dinner', 8, 1.0),
(3, 'saturday', 'breakfast', 7, 1.0),
(3, 'saturday', 'lunch', 4, 1.5),
(3, 'saturday', 'dinner', 5, 2.0);

-- Ana Morales' Food Plan
INSERT INTO FoodPlan (UserId, WeekDay, EatTime, FoodId, PortionAmount) VALUES
(4, 'sunday', 'breakfast', 9, 1.0),
(4, 'sunday', 'lunch', 8, 1.0),
(4, 'sunday', 'dinner', 7, 1.0),
(4, 'monday', 'breakfast', 3, 1.0),
(4, 'monday', 'lunch', 2, 1.0),
(4, 'monday', 'dinner', 4, 1.0);

-- Carlos Sanchez's Food Plan
INSERT INTO FoodPlan (UserId, WeekDay, EatTime, FoodId, PortionAmount) VALUES
(5, 'thursday', 'breakfast', 1, 1.0),
(5, 'thursday', 'lunch', 3, 1.5),
(5, 'thursday', 'dinner', 6, 1.0),
(5, 'friday', 'breakfast', 8, 1.0),
(5, 'friday', 'lunch', 2, 1.5),
(5, 'friday', 'dinner', 7, 1.0);
-- INSERT INTO WeekDays (Name) VALUES
-- ('Monday'),
-- ('Tuesday'),
-- ('Wednesday'),
-- ('Thursday'),
-- ('Friday'),
-- ('Saturday'),
-- ('Sunday');

-- INSERT INTO EatTime (Name) VALUES
-- ('PreTraining'),
-- ('Breakfast'),
-- ('Lunch'),
-- ('Dinner');

INSERT INTO Foods (Name, Preparation, Calories, Proteins, Carbohydrates, Fibers) VALUES
-- ('100g pechuga de pollo', 'Base', 185, 29, null, null),
-- ('100g muslo, contramuslo pollo', 'Base', 120, 19, null, null),
-- ('100g huevo, 2 huevos tipo A', 'Base', 147, 12, null, null),
('100g higado de res', 'Base', 135, 20, 3.5, 0),
('100g higado de cerdo', 'Base', 132, 20, 1, 0);
-- ('1 taza de frijoles', 'Cooked', 320, 14, null, null),
-- ('1 taza de lentejas', 'Cooked', 320, 18, null, 15),
-- ('gelatina', 'Base', null, null, null, null),
-- ('1 taza arroz', 'Cooked', 204, 4.2, 44, 0.6),
-- ('1/3 taza de avena', 'Base', 124, 4.3, null, null);

/*
  ## Data for food planning
*/
CALL `CalculatePortionNutrition`('1 taza de lentejas', 3.5);
CALL InsertFoodPlan('1/3 taza de avena',  'Sunday', 'PreTraining', 1);
CALL InsertFoodPlan('100g pechuga de pollo',  'Sunday', 'PreTraining', 2.5);
CALL InsertFoodPlan('1 taza de frijoles',  'Sunday', 'PreTraining', 1);
CALL InsertFoodPlan('1 taza de frijoles',  'Sunday', 'PreTraining', 1);

DELETE
FROM `FoodPlan`
WHERE `WeekDayId` = 7;

TRUNCATE Table `FoodPlan`;

##--- Monday
##--- Tuesday
CALL InsertFoodPlan('1/3 taza de avena',  'Tuesday', 'PreTraining', 1);
CALL InsertFoodPlan('1 taza de lentejas', 'Tuesday', 'Lunch', 2);

##--- Wednesday
##--- Thursday
##--- Friday
CALL InsertFoodPlan('1/3 taza de avena', 'Friday', 'PreTraining', 1);

##--- Satuday
##--- Sunday