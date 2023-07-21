CREATE TABLE t2
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

/*  Creates Table t2 from direct Hubspot Export (Used table import wizard to upload export "For Queries 1st)
    PARTITIONS BY company name and chops off time in close date */