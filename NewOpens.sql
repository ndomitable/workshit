SELECT *
FROM t2 x
WHERE closedate >= '2023-06-01' AND closedate < '2023-07-01'
AND NOT EXISTS(SELECT 1 
				FROM t2
                WHERE `Associated Company` = x.`Associated Company` AND closedate < '2023-06-01')
;