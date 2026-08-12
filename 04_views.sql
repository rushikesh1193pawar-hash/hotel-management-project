USE hotel_management;

-- 1. Customer booking details
CREATE OR REPLACE VIEW customer_booking_details AS
SELECT
    c.customer_id,
    c.customer_name,
    c.phone,
    c.email,
    b.booking_id,
    b.room_id,
    b.check_in,
    b.check_out,
    b.total_amount,
    b.status AS booking_status
FROM customers c
JOIN bookings b
ON c.customer_id = b.customer_id;


-- 2. Room booking details
CREATE OR REPLACE VIEW room_booking_details AS
SELECT
    r.room_id,
    r.room_number,
    r.room_type,
    r.price,
    r.status AS room_status,
    b.booking_id,
    b.check_in,
    b.check_out,
    b.total_amount,
    b.status AS booking_status
FROM rooms r
LEFT JOIN bookings b
ON r.room_id = b.room_id;