SELECT * 
FROM 
    employee 
LEFT JOIN dept ON employee.Department = dept.ID 
WHERE 
    employee.Name 
                IN (
                    SELECT 
                        Name 
                    FROM 
                        employee 
                    WHERE 
                        dept.profit > 45000
                    );