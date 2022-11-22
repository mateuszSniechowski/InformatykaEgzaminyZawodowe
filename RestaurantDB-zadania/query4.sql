SELECT * FROM `employee` 
INNER JOIN employment ON employee.id = employment.employee_id 
INNER JOIN employee_position ON employment.employee_position_id = employee_position.id
INNER JOIN restaurant ON employment.restaurant_id = restaurant.id

