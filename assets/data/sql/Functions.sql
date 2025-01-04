-- Procedure to insert into FoodPlan using week day name and food name

CREATE PROCEDURE InsertFoodPlan(
  IN foodName VARCHAR(125),
  IN weekDayName VARCHAR(40), 
  IN eatTime VARCHAR(125),
  IN portionAmount INT(25))
BEGIN
    DECLARE weekDayId INT;
    DECLARE foodId INT;
    DECLARE eatTimeId INT;
    
    -- Get WeekDayId
    SELECT Id INTO weekDayId
    FROM WeekDays
    WHERE Name = weekDayName;
    
    -- Get FoodId
    SELECT Id INTO foodId
    FROM Foods
    WHERE Name = foodName;

    -- Get FoodId
    SELECT Id INTO eatTimeId
    FROM EatTime
    WHERE Name = eatTime;
    
    -- Insert into FoodPlan
    INSERT INTO FoodPlan (WeekDayId, EatTimeId, FoodId, `PortionAmount`)
    VALUES (weekDayId, eatTimeId, foodId, portionAmount);
END;

DROP Procedure `InsertFoodPlan`;

##------ Calculate Portion Food Nutrition  -----##

CREATE PROCEDURE CalculatePortionNutrition( IN foodName VARCHAR(125), IN portionAmount INT(25))
BEGIN
    SELECT
        `Calories` * portionAmount AS Calories,
        `Proteins` * portionAmount AS Proteins,
        `Carbohydrates` * portionAmount AS Carbohydrates,
        `Fibers` * portionAmount AS Fibers 
    FROM `Foods`
    WHERE `Name` = foodName;
END;

DROP Procedure `CalculatePortionNutrition`;