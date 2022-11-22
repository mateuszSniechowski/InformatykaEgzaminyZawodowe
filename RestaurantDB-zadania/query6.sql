SELECT * FROM employee 
JOIN employment ON employment.employee_id = employee.id
JOIN employee_position ON employment.employee_position_id = employee_position.id
JOIN restaurant ON restaurant.id = employment.restaurant_id
GROUP BY employee.id
HAVING Count(employee.id) > 1;