USE hotel_management;

DROP TRIGGER IF EXISTS update_room_status;

DELIMITER //

CREATE TRIGGER update_room_status
AFTER INSERT ON bookings
FOR EACH ROW
BEGIN

UPDATE rooms
SET status = 'Booked'
WHERE room_id = NEW.room_id;

END //

DELIMITER ;
