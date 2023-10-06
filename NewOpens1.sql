CREATE TABLE newopens
SELECT
	`Record ID`,
 	`Associated Company`, 
    `Associated Company IDs`,
    `Deal Name`,
     `Deal owner`,
     Amount, 
     substring_index(`Close Date`, ' ', 1) as closedate,
     ROW_NUMBER() OVER (PARTITION BY `Associated Company` ORDER BY `Close Date` DESC) as rn
FROM sales;


