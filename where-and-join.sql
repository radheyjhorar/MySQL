SELECT 
    employee.ID, 
    employee.Name, 
    employee.Email 
FROM 
    employee 
JOIN dept 
WHERE employee.ID = dept.hodId;