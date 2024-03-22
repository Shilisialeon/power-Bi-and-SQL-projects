SELECT * FROM hr.`hr regression analysis`;
DESCRIBE  hr.`hr regression analysis`;
-- NUmber of Employees 
SELECT COUNT(*) FROM  hr.`hr regression analysis` ;
SELECT 
	SUM(CASE WHEN Gender = 'Male' THEN 1 ELSE 0 END ) AS Male_Count,
    SUM(CASE WHEN Gender = 'Female'  THEN 1 ELSE 0 END ) AS Female_Count 
    FROM `hr regression analysis`;
    
-- Total Monthly Income 
SELECT SUM(MonthlyIncome) FROM  hr.`hr regression analysis`;

-- Monthly Income ordered by Department
SELECT Department,COUNT(EmployeeNumber) AS Employees, SUM(MonthlyIncome) AS Income FROM  hr.`hr regression analysis`
	GROUP BY Department
    ORDER BY Income DESC;
    
-- Education Field,number of employees and income 
 Select EducationField, COUNT(EmployeeNumber) AS Employees,SUM(MonthlyIncome) AS Income FROM  hr.`hr regression analysis`
	GROUP BY EducationField
    ORDER BY YearsAtCompany DESC;

-- Employees ordered by monthly income
SELECT EmployeeNumber,Department,EducationField,JobRole,JobLevel,YearsAtCompany, SUM(MonthlyIncome) AS Income FROM  hr.`hr regression analysis`
	GROUP BY EmployeeNumber,Department,EducationField,JobRole,JobLevel,YearsAtCompany
    ORDER BY Income DESC;

-- years at compzny and income
SELECT YearsAtCompany,COUNT(EmployeeCount) AS Employees, SUM(MonthlyIncome) AS Income FROM  hr.`hr regression analysis`
	GROUP BY YearsAtCompany
    ORDER BY Income DESC;

SELECT EmployeeNumber,PerformanceRating, Attrition FROM  hr.`hr regression analysis`
	WHERE Attrition = 'No';
   
-- Set Age_Groups
UPDATE  hr.`hr regression analysis`
	sET Age_Group = 'Adult'
	WHERE Age <= 34; 
    
UPDATE  hr.`hr regression analysis`
	sET Age_Group = 'Middle Age'
	WHERE Age >34;    
    
UPDATE  hr.`hr regression analysis`
	sET Age_Group = 'Old'
	WHERE Age  >=59; 
SELECT Age_Group, COUNT(EmployeeNumber) AS Employees FROM  hr.`hr regression analysis`
	GROUP BY Age_Group ;   
  SELECT Age, Age_Group FROM  hr.`hr regression analysis`;  
    
    
-- Salary Increase 
SELECT EmployeeNumber, Department,
	CASE Department
		WHEN 'Research & Development' THEN MonthlyIncome * 1.05  -- 5$ Salary Increase
        WHEN 'Sales' THEN MonthlyIncome * 1.07 -- 7$ Salary Increase 
        WHEN 'Human Resources' THEN MonthlyIncome * 1.05  -- 5$ Salary Increase 
        END AS New_Salary 
        FROM `hr regression analysis`;
   
   -- Consider Promotions based on Perfomamce Ratimg and Attrition 
   Select Attrition, PerformanceRating, 
		CASE
			WHEN Attrition = 'Yes' AND PerformanceRating = 4 THEN 'Huge Loss'
            WHEN Attrition = 'Yes' AND PerformanceRating < 4 THEN 'Loss'
            WHEN Attrition = "NO"  AND PerformanceRating >= 4 THEN 'Promote'
            ELSE 'Stable'  
            END AS Recommendation 
   FROM `hr regression analysis`
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    