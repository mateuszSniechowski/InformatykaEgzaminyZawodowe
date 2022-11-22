SELECT * FROM `employee` 
LEFT JOIN employment ON employment.employee_id = employee.id 
WHERE employment.employee_id is NULL