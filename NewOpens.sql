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






SELECT *
FROM newopens x
WHERE closedate >= '2023-06-01' AND closedate < '2023-07-01'
AND NOT EXISTS(SELECT 1 
				FROM t2
                WHERE `Associated Company` = x.`Associated Company` AND closedate < '2023-06-01')
;
