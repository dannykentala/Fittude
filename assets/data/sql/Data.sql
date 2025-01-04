INSERT INTO WeekDays (Name) VALUES
('Monday'),
('Tuesday'),
('Wednesday'),
('Thursday'),
('Friday'),
('Saturday'),
('Sunday');

INSERT INTO EatTime (Name) VALUES
('PreTraining'),
('Breakfast'),
('Lunch'),
('Dinner');

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