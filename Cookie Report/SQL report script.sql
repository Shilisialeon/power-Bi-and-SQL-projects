SELECT * FROM cookie_repport.`sample database 2.0`;
-- Totals
SELECT sum(`Total Revenue`) as Total_Revenue
	FROM cookie_repport.`sample database 2.0`;
SELECT sum(`Total Costs`) AS Total_Costs
	FROM cookie_repport.`sample database 2.0`;
SELECT sum(Quantity) AS Total_Quantity
	FROM cookie_repport.`sample database 2.0`;
SELECT ROUND(SUM(Profit)) AS Total_Profit
	FROM cookie_repport.`sample database 2.0`;
SELECT SUM(DISTINCT(OrderTotal)) AS Total_Orders
	FROM cookie_repport.`sample database 2.0`;

 
 
-- Cookie Perfomance 
SELECT CookieName, sum(`Total Revenue`) as Total_Revenue
	 FROM cookie_repport.`sample database 2.0`
     GROUP BY CookieName
     ORDER BY Total_Revenue DESC ;
SELECT CookieName, sum(`Total Costs`) AS Total_Costs
	 FROM cookie_repport.`sample database 2.0`
     GROUP BY CookieName
     ORDER BY Total_Costs DESC ;
 SELECT CookieName, sum(Quantity) AS Total_Quantity
	 FROM cookie_repport.`sample database 2.0`
	 GROUP BY CookieName
	 ORDER BY Total_Quantity ;
SELECT CookieName, ROUND(SUM(Profit)) AS Total_Profit
	FROM cookie_repport.`sample database 2.0`
    GROUP BY CookieName
    ORDER BY Total_Profit DESC ;
SELECT CookieName, ROUND(SUM(Profit)/SUM(`Total Revenue`)* 100) AS Gross_Margin_Percentage
	FROM cookie_repport.`sample database 2.0`
    GROUP BY CookieName
    ORDER BY Gross_Margin_Percentage DESC;
    
    
-- Trend Analysis
SELECT 
	MONTHNAME(STR_TO_DATE(OrderDate, '%d-%m-%Y')) AS Month ,
    SUM(`Total Revenue`) AS Total_Revenue
	FROM cookie_repport.`sample database 2.0`
    GROUP BY MONTHNAME(STR_TO_DATE(OrderDate, '%d-%m-%Y'))
    ORDER BY Total_Revenue DESC;

SELECT 
	DAYNAME(STR_TO_DATE(OrderDate, '%d-%m-%Y')) AS day_of_week ,
    SUM(`Total Revenue`) AS Total_Revenue
	FROM cookie_repport.`sample database 2.0`
    GROUP BY 	DAYNAME(STR_TO_DATE(OrderDate, '%d-%m-%Y')) 
    ORDER BY Total_Revenue DESC;


SELECT 
	MONTHNAME(STR_TO_DATE(OrderDate, '%d-%m-%Y')) AS Month ,
    SUM(Profit) AS  Total_Profit
	FROM cookie_repport.`sample database 2.0`
    GROUP BY MONTHNAME(STR_TO_DATE(OrderDate, '%d-%m-%Y'))
    ORDER BY  Total_Profit DESC;

SELECT 
	DAYNAME(STR_TO_DATE(OrderDate, '%d-%m-%Y')) AS day_of_week ,
    SUM(Profit) AS Total_Profit
	FROM cookie_repport.`sample database 2.0`
    GROUP BY 	DAYNAME(STR_TO_DATE(OrderDate, '%d-%m-%Y')) 
    ORDER BY  Total_Profit DESC;


SELECT 
	MONTHNAME(STR_TO_DATE(OrderDate, '%d-%m-%Y')) AS Month ,
    SUM(Quantity) AS  Total_Quantity
	FROM cookie_repport.`sample database 2.0`
    GROUP BY MONTHNAME(STR_TO_DATE(OrderDate, '%d-%m-%Y'))
    ORDER BY  Total_Quantity DESC;

SELECT 
	DAYNAME(STR_TO_DATE(OrderDate, '%d-%m-%Y')) AS day_of_week ,
    SUM(Quantity) AS Total_Quantity
	FROM cookie_repport.`sample database 2.0`
    GROUP BY 	DAYNAME(STR_TO_DATE(OrderDate, '%d-%m-%Y')) 
    ORDER BY  Total_Quantity DESC
    











    

	








