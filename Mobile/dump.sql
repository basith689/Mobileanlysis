-- Change table column Text to Float(Number)

SELECT COLUMN_NAME, DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'mobiles';


SELECT Launched_Price_India 
FROM mobiles 
WHERE Launched_Price_India REGEXP '[^0-9.]';

UPDATE mobiles 
SET Launched_Price_India = NULL 
WHERE Launched_Price_India REGEXP '[^0-9.]';

ALTER TABLE mobiles 
MODIFY COLUMN Launched_Price_India FLOAT;

SELECT Launched_Price_Pakistan 
FROM mobiles 
WHERE Launched_Price_Pakistan REGEXP '[^0-9.]';

UPDATE mobiles 
SET Launched_Price_Pakistan = NULL 
WHERE Launched_Price_Pakistan REGEXP '[^0-9.]';

ALTER TABLE mobiles 
MODIFY COLUMN Launched_Price_Pakistan FLOAT;

SELECT Launched_Price_China
FROM mobiles 
WHERE Launched_Price_China REGEXP '[^0-9.]';

UPDATE mobiles 
SET Launched_Price_China = NULL 
WHERE Launched_Price_China REGEXP '[^0-9.]';

ALTER TABLE mobiles 
MODIFY COLUMN Launched_Price_China FLOAT;

SELECT Launched_Price_USA 
FROM mobiles 
WHERE Launched_Price_USA REGEXP '[^0-9.]';

UPDATE mobiles 
SET Launched_Price_USA = NULL 
WHERE Launched_Price_USA REGEXP '[^0-9.]';

ALTER TABLE mobiles 
MODIFY COLUMN Launched_Price_USA FLOAT;

SELECT Launched_Price_Dubai 
FROM mobiles 
WHERE Launched_Price_Dubai REGEXP '[^0-9.]';

UPDATE mobiles 
SET Launched_Price_Dubai = NULL 
WHERE Launched_Price_Dubai REGEXP '[^0-9.]';

ALTER TABLE mobiles 
MODIFY COLUMN Launched_Price_Dubai float;


SELECT Launched_Price_India 
FROM mobiles 
WHERE Launched_Price_India NOT REGEXP '^[0-9]+(\.[0-9]+)?$';

UPDATE mobiles 
SET Launched_Price_India = NULL 
WHERE Launched_Price_India NOT REGEXP '^[0-9]+(\.[0-9]+)?$';

ALTER TABLE mobiles 
MODIFY COLUMN Launched_Price_India FLOAT;


select  ROUND(AVG(Launched_Price_India), 2) AS avg_price_india
from mobiles;

SELECT COUNT(*) AS null_count 
FROM mobiles 
WHERE Launched_Price_India IS NULL;

SELECT COUNT(*) AS zero_count 
FROM mobiles 
WHERE Launched_Price_India = 0;

SELECT 
    ROUND(AVG(NULLIF(Launched_Price_India, 0)), 2) AS avg_price_india
FROM mobiles;

SELECT COUNT(*) AS total_rows FROM mobiles;

SELECT COUNT(*) AS null_count 
FROM mobiles 
WHERE Launched_Price_India IS NULL;

SELECT Launched_Price_India 
FROM mobiles 
WHERE Launched_Price_India IS NOT NULL
LIMIT 10;

alter table mobiles
drop column `MyUnknownColumn`



