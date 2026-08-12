USE hotel_management;

-- 1. Display all customers
SELECT * FROM customers;

-- 2. Display all rooms
SELECT * FROM rooms;

-- 3. Display only available rooms
SELECT room_number, room_type, price
FROM rooms
WHERE status = 'Available';

-- 4. Display customers with their booking details
SELECT
    c.customer_name,
    c.phone,
    b.check_in,
    b.check_out,
    b.total_amount,
    b.status
FROM customers c
JOIN bookings b
ON c.customer_id = b.customer_id;

-- 5. Display room details for each booking
SELECT
    b.booking_id,
    c.customer_name,
    r.room_number,
    r.room_type,
    b.check_in,
    b.check_out,
    b.total_amount
FROM bookings b
JOIN customers c
ON b.customer_id = c.customer_id
JOIN rooms r
ON b.room_id = r.room_id;

-- 6. Find the most expensive room
SELECT *
FROM rooms
ORDER BY price DESC
LIMIT 1;

-- 7. Count total customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- 8. Count available rooms
SELECT COUNT(*) AS available_rooms
FROM rooms
WHERE status = 'Available';

-- 9. Calculate total booking amount
SELECT SUM(total_amount) AS total_revenue
FROM bookings;

-- 10. Display confirmed bookings
SELECT *
FROM bookings
WHERE status = 'Confirmed';