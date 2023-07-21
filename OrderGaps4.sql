SELECT  T3.`Record ID`, 
        T3.`Associated Company`, 
        T3.closedate2, 
        MIN(T4.closedate2) AS Date2, 
        DATEDIFF(T3.closedate2, MIN(T4.closedate2)) AS DaysDiff
FROM    T3
        LEFT JOIN T4
            ON T3.`Associated Company` = T4.`Associated Company`
            AND T4.closedate2 > T3.closedate2
GROUP BY T3.`Record ID`, T3.`Associated Company`, T3.closedate2;

/*  Adds a DaysDiff column which is the number of days between each consecutive deal for
    every company  */