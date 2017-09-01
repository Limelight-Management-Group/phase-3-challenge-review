-- guests, rooms, bookings
\copy guests(id, name, email) FROM './guests.csv' DELIMITER ',' CSV HEADER;

\copy rooms(id, room_number, capacity) FROM './rooms.csv' DELIMITER ',' CSV HEADER;

-- INSERT INTO rooms (room_number, capacity, available)
--     VALUES (101, 1, true);
-- INSERT INTO rooms (room_number, capacity, available)
--     VALUES (102,1, true);
-- INSERT INTO rooms (room_number, capacity, available)
--     VALUES (201, 1, true);
-- INSERT INTO rooms (room_number, capacity, available)
--     VALUES (202,1, true);
-- INSERT INTO rooms (room_number, capacity, available)
--     VALUES (301, 1, false);
-- INSERT INTO rooms (room_number, capacity, available)
--     VALUES (302, 1, false);
-- INSERT INTO rooms (room_number, capacity, available)
--     VALUES (303, 1, false);
-- INSERT INTO rooms (room_number, capacity, available)
--     VALUES (401, 1, true);
-- INSERT INTO rooms (room_number, capacity, available)
--     VALUES (402, 1, true);
-- INSERT INTO rooms (room_number, capacity, available)
--     VALUES (501, 1, true);
-- INSERT INTO rooms (room_number, capacity, available)
--     VALUES (502, 1, true);
-- INSERT INTO rooms (room_number, capacity, available)
--     VALUES (503, 1, false);


--     id,room_id,guest_id,check_in,check_out
-- 1,6,10,2018-06-03,2018-06-12
\copy bookings(id, room_id, guest_id, check_in, check_out) FROM './bookings.csv' DELIMITER ',' CSV HEADER;

-- INSERT INTO bookings (room_id, guest_id, check_in, check_out)
--     VALUES (1, 1, '2018-06-03', '2018-06-12');
-- INSERT INTO bookings (room_id, guest_id, check_in, check_out)
--     VALUES (2, 2, '2018-06-03', '2018-06-12');
-- INSERT INTO bookings (room_id, guest_id, check_in, check_out)
--     VALUES (3, 3, '2018-06-03', '2018-06-12');
-- INSERT INTO bookings (room_id, guest_id, check_in, check_out)
--     VALUES (4, 4, '2018-06-03', '2018-06-12');
-- INSERT INTO bookings (room_id, guest_id, check_in, check_out)
--     VALUES (5, 5, '2018-06-03', '2018-06-12');
-- INSERT INTO bookings (room_id, guest_id, check_in, check_out)
--     VALUES (6, 1, '2018-06-03', '2018-06-12');
-- INSERT INTO bookings (room_id, guest_id, check_in, check_out)
--     VALUES (7, 2, '2018-06-03', '2018-06-12');
-- INSERT INTO bookings (room_id, guest_id, check_in, check_out)
--     VALUES (8, 3, '2018-06-03', '2018-06-12');
-- INSERT INTO bookings (room_id, guest_id, check_in, check_out)
--     VALUES (9, 4, '2018-06-03', '2018-06-12');
-- INSERT INTO bookings (room_id, guest_id, check_in, check_out)
--     VALUES (10, 5, '2018-06-03', '2018-06-12');
-- INSERT INTO bookings (room_id, guest_id, check_in, check_out)
--     VALUES (11, 1, '2018-06-03', '2018-06-12');
-- INSERT INTO bookings (room_id, guest_id, check_in, check_out)
--     VALUES (12, 2, '2018-06-03', '2018-06-12');
-- INSERT INTO bookings (room_id, guest_id, check_in, check_out)
--     VALUES (1, 3, '2018-06-03', '2018-06-12');
-- INSERT INTO bookings (room_id, guest_id, check_in, check_out)
--     VALUES (2, 4, '2018-06-03', '2018-06-12');
-- INSERT INTO bookings (room_id, guest_id, check_in, check_out)
--     VALUES (3, 5, '2018-06-03', '2018-06-12');
-- INSERT INTO bookings (room_id, guest_id, check_in, check_out)
--     VALUES (4, 1, '2018-06-03', '2018-06-12');
-- INSERT INTO bookings (room_id, guest_id, check_in, check_out)
--     VALUES (6, 2, '2018-06-03', '2018-06-12');
-- INSERT INTO bookings (room_id, guest_id, check_in, check_out)
--     VALUES (9, 3, '2018-06-03', '2018-06-12');
-- INSERT INTO bookings (room_id, guest_id, check_in, check_out)
--     VALUES (10, 4, '2018-06-03', '2018-06-12');
-- INSERT INTO bookings (room_id, guest_id, check_in, check_out)
--     VALUES (12, 5, '2018-06-03', '2018-06-12');


