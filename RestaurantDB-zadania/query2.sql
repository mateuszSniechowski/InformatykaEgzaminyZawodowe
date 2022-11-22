SELECT * FROM restaurant_table
JOIN restaurant ON restaurant.id = restaurant_table.restaurant_id
LEFT JOIN reservation ON reservation.restaurant_table_id = restaurant_table.id
WHERE reservation.restaurant_table_id is NULL