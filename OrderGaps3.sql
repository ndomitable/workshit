CREATE TABLE t4
SELECT
	`Record ID`,
 	`Associated Company`, 
    `Associated Company IDs`,
    `Deal Name`,
     `Deal owner`,
     Amount, 
     STR_TO_DATE(closedate, "%Y-%m-%d") as closedate2,
     rn
FROM t2;

/* Creates Table t4 converting string to date for close date from t2 */