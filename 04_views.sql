USE hotel_management;

CREATE VIEW customer_bookings AS
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

CREATE VIEW available_rooms AS
SELECT
    room_number,
    room_type,
    price
FROM rooms
WHERE status = 'Available';

CREATE VIEW booking_details AS
SELECT
    b.booking_id,
    c.customer_name,
    r.room_number,
    r.room_type,
    b.check_in,
    b.check_out,
    b.total_amount,
    b.status
FROM bookings b
JOIN customers c
ON b.customer_id = c.customer_id
JOIN rooms r
ON b.room_id = r.room_id;
