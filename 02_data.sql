USE hotel_management;

INSERT INTO customers (customer_name, phone, email)
VALUES
('Rahul Patil', '9876543210', 'rahul@gmail.com'),
('Amit Sharma', '9876543211', 'amit@gmail.com'),
('Sneha Joshi', '9876543212', 'sneha@gmail.com'),
('Priya Deshmukh', '9876543213', 'priya@gmail.com'),
('Akash More', '9876543214', 'akash@gmail.com');

INSERT INTO rooms (room_number, room_type, price, status)
VALUES
(101, 'Single', 1500.00, 'Available'),
(102, 'Double', 2500.00, 'Available'),
(103, 'Deluxe', 3500.00, 'Available'),
(104, 'Suite', 5000.00, 'Available'),
(105, 'Single', 1500.00, 'Available');

INSERT INTO bookings
(customer_id, room_id, check_in, check_out, total_amount, status)
VALUES
(1, 1, '2026-08-15', '2026-08-17', 3000.00, 'Confirmed'),
(2, 2, '2026-08-16', '2026-08-18', 5000.00, 'Confirmed'),
(3, 3, '2026-08-20', '2026-08-22', 7000.00, 'Pending');