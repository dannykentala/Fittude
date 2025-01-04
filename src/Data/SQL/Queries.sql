##------ GET CURRENT FOODS -----##
SELECT * FROM `Foods`
ORDER BY `Preparation`;

##------ GET CURRENT FOODS -----##


##------ GET CURRENT FOOD PLAN -----##
SELECT
  `WeekDays`.`Name` AS Day,
  `EatTime`.`Name` AS 'Eat Time',
  `FoodPlan`.`PortionAmount`,
  `Foods`.`Name`,
  `Foods`.`Preparation`,
  `Foods`.`Calories`,
  `Foods`.`Proteins`,
  `Foods`.`Fibers`,
  `Foods`.`Carbohydrates`
FROM `FoodPlan`
INNER JOIN `WeekDays`
  ON `FoodPlan`.`WeekDayId` = `WeekDays`.`Id`
INNER JOIN `EatTime`
  ON `FoodPlan`.`EatTimeId` = `EatTime`.`Id`
INNER JOIN `Foods`
  ON `FoodPlan`.`FoodId` = `Foods`.`Id`
ORDER BY `FoodPlan`.`WeekDayId`;

##------ GET RESULTS OF DIET -----##
SELECT
  `WeekDays`.`Name`,
  SUM(`Foods`.`Calories` * `FoodPlan`.`PortionAmount`) AS `Total calories`,
  SUM(`Foods`.`Proteins` * `FoodPlan`.`PortionAmount`) AS `Total proteins`,
  SUM(`Foods`.`Carbohydrates` * `FoodPlan`.`PortionAmount`) AS `Total carbohydrates`,
  SUM(`Foods`.`Fibers` * `FoodPlan`.`PortionAmount`) AS `Total fibers`
FROM `FoodPlan`
INNER JOIN `WeekDays`
  ON `FoodPlan`.`WeekDayId` = `WeekDays`.`Id`
INNER JOIN `Foods`
  ON `FoodPlan`.`FoodId` = `Foods`.`Id`
GROUP BY `WeekDays`.`Name`;