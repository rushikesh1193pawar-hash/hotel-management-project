USE hotel_management;

DROP PROCEDURE IF EXISTS GetBookingDetails;

DELIMITER //

CREATE PROCEDURE GetBookingDetails()
BEGIN
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
END //

DELIMITER ;