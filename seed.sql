-- ============================================
-- EMERGENCY CALLS
-- ============================================

INSERT INTO emergency_calls
(caller_name, caller_phone, location, call_type, received_at, priority)
VALUES
('Raj Mehta', '9876500011', 'Kharghar Sector 12', 'FIRE', '2026-09-01 08:15:00', 'HIGH'),
('Priya Shah', '9876500012', 'Vashi Sector 17', 'ACCIDENT', '2026-09-02 10:20:00', 'CRITICAL'),
('Amit Patil', '9876500013', 'Nerul West', 'FIRE', '2026-09-03 13:40:00', 'HIGH'),
('Neha Joshi', '9876500014', 'Panvel Market', 'GAS_LEAK', '2026-09-04 09:10:00', 'CRITICAL'),
('Rohan Kulkarni', '9876500015', 'Belapur CBD', 'FIRE', '2026-09-05 18:25:00', 'HIGH'),
('Sneha Deshmukh', '9876500016', 'Kopar Khairane', 'ACCIDENT', '2026-09-06 21:10:00', 'MEDIUM'),
('Vikas Rao', '9876500017', 'Airoli Sector 5', 'FIRE', '2026-09-07 11:30:00', 'HIGH'),
('Anjali More', '9876500018', 'Ghansoli', 'RESCUE', '2026-09-08 14:45:00', 'CRITICAL'),
('Sahil Khan', '9876500019', 'Sanpada', 'FIRE', '2026-09-09 16:00:00', 'HIGH'),
('Mehul Shah', '9876500020', 'Turbhe MIDC', 'CHEMICAL', '2026-09-10 07:50:00', 'CRITICAL'),
('Karan Singh', '9876500021', 'Kharghar Sector 21', 'FIRE', '2026-09-11 12:15:00', 'HIGH'),
('Pooja Nair', '9876500022', 'Vashi Sector 9', 'RESCUE', '2026-09-12 17:30:00', 'MEDIUM'),
('Arjun Joshi', '9876500023', 'Nerul East', 'FIRE', '2026-09-13 20:45:00', 'HIGH'),
('Isha Patil', '9876500024', 'Belapur Sector 15', 'ACCIDENT', '2026-09-14 08:20:00', 'MEDIUM'),
('Manish Gupta', '9876500025', 'Panvel Highway', 'ACCIDENT', '2026-09-15 19:40:00', 'CRITICAL'),
('Tanvi Shah', '9876500026', 'Airoli Bridge', 'FIRE', '2026-09-16 10:10:00', 'HIGH'),
('Aditya More', '9876500027', 'Vashi Station', 'RESCUE', '2026-09-17 15:25:00', 'MEDIUM'),
('Riya Sharma', '9876500028', 'Kopar Khairane Sector 3', 'FIRE', '2026-09-18 22:15:00', 'HIGH'),
('Nikhil Rao', '9876500029', 'Ghansoli Sector 8', 'GAS_LEAK', '2026-09-19 09:35:00', 'CRITICAL'),
('Ayesha Khan', '9876500030', 'Turbhe Industrial Area', 'CHEMICAL', '2026-09-20 13:20:00', 'HIGH'),
('Omkar Patil', '9876500031', 'Kharghar Sector 35', 'FIRE', '2026-09-21 18:50:00', 'HIGH'),
('Shreya Mehta', '9876500032', 'Nerul Sector 20', 'ACCIDENT', '2026-09-22 11:05:00', 'MEDIUM'),
('Yash Joshi', '9876500033', 'Belapur Fort', 'RESCUE', '2026-09-23 14:15:00', 'HIGH'),
('Kavya Rao', '9876500034', 'Vashi Sector 10', 'FIRE', '2026-09-24 16:45:00', 'CRITICAL'),
('Siddharth Shah', '9876500035', 'Panvel Old Highway', 'FIRE', '2026-09-25 20:10:00', 'HIGH'),
('Mihir Patil', '9876500036', 'Airoli Sector 20', 'ACCIDENT', '2026-09-26 08:40:00', 'MEDIUM'),
('Diya More', '9876500037', 'Sanpada Sector 2', 'RESCUE', '2026-09-27 12:30:00', 'HIGH'),
('Rahul Desai', '9876500038', 'Kopar Khairane Sector 10', 'FIRE', '2026-09-28 17:15:00', 'CRITICAL'),
('Simran Khan', '9876500039', 'Ghansoli Station Road', 'GAS_LEAK', '2026-09-29 09:20:00', 'HIGH'),
('Varun Shah', '9876500040', 'Nerul Sector 5', 'FIRE', '2026-09-29 10:30:00', 'HIGH');


INSERT INTO incidents
(call_id, incident_type, incident_location, reported_at,
 dispatched_at, arrived_at, response_time_minutes, status, severity)
VALUES
(1, 'STRUCTURE_FIRE', 'Kharghar Sector 12', '2026-09-01 08:15:00',
 '2026-09-01 08:20:00', '2026-09-01 08:31:00', 16, 'CLOSED', 'HIGH'),

(2, 'ROAD_ACCIDENT', 'Vashi Sector 17', '2026-09-02 10:20:00',
 '2026-09-02 10:23:00', '2026-09-02 10:31:00', 11, 'CLOSED', 'CRITICAL'),

(3, 'SHOP_FIRE', 'Nerul West', '2026-09-03 13:40:00',
 '2026-09-03 13:45:00', '2026-09-03 13:57:00', 17, 'CLOSED', 'HIGH'),

(4, 'GAS_LEAK', 'Panvel Market', '2026-09-04 09:10:00',
 '2026-09-04 09:13:00', '2026-09-04 09:25:00', 15, 'CLOSED', 'CRITICAL'),

(5, 'BUILDING_FIRE', 'Belapur CBD', '2026-09-05 18:25:00',
 '2026-09-05 18:30:00', '2026-09-05 18:42:00', 17, 'CLOSED', 'HIGH'),

(6, 'ROAD_ACCIDENT', 'Kopar Khairane', '2026-09-06 21:10:00',
 '2026-09-06 21:17:00', '2026-09-06 21:25:00', 15, 'CLOSED', 'MEDIUM'),

(7, 'VEHICLE_FIRE', 'Airoli Sector 5', '2026-09-07 11:30:00',
 '2026-09-07 11:34:00', '2026-09-07 11:42:00', 12, 'CLOSED', 'HIGH'),

(8, 'RESCUE_OPERATION', 'Ghansoli', '2026-09-08 14:45:00',
 '2026-09-08 14:48:00', '2026-09-08 15:02:00', 17, 'CLOSED', 'CRITICAL'),

(9, 'FACTORY_FIRE', 'Sanpada', '2026-09-09 16:00:00',
 '2026-09-09 16:05:00', '2026-09-09 16:18:00', 18, 'CLOSED', 'HIGH'),

(10, 'CHEMICAL_SPILL', 'Turbhe MIDC', '2026-09-10 07:50:00',
 '2026-09-10 07:55:00', '2026-09-10 08:12:00', 22, 'CLOSED', 'CRITICAL'),

(11, 'HOUSE_FIRE', 'Kharghar Sector 21', '2026-09-11 12:15:00',
 '2026-09-11 12:20:00', '2026-09-11 12:29:00', 14, 'CLOSED', 'HIGH'),

(12, 'RESCUE_OPERATION', 'Vashi Sector 9', '2026-09-12 17:30:00',
 '2026-09-12 17:35:00', '2026-09-12 17:47:00', 17, 'CLOSED', 'MEDIUM'),

(13, 'WAREHOUSE_FIRE', 'Nerul East', '2026-09-13 20:45:00',
 '2026-09-13 20:50:00', '2026-09-13 21:07:00', 22, 'CLOSED', 'HIGH'),

(14, 'ROAD_ACCIDENT', 'Belapur Sector 15', '2026-09-14 08:20:00',
 '2026-09-14 08:25:00', '2026-09-14 08:34:00', 14, 'CLOSED', 'MEDIUM'),

(15, 'HIGHWAY_ACCIDENT', 'Panvel Highway', '2026-09-15 19:40:00',
 '2026-09-15 19:44:00', '2026-09-15 19:57:00', 17, 'CLOSED', 'CRITICAL'),

(16, 'OFFICE_FIRE', 'Airoli Bridge', '2026-09-16 10:10:00',
 '2026-09-16 10:15:00', '2026-09-16 10:26:00', 16, 'CLOSED', 'HIGH'),

(17, 'RESCUE_OPERATION', 'Vashi Station', '2026-09-17 15:25:00',
 '2026-09-17 15:30:00', '2026-09-17 15:39:00', 14, 'CLOSED', 'MEDIUM'),

(18, 'APARTMENT_FIRE', 'Kopar Khairane Sector 3', '2026-09-18 22:15:00',
 '2026-09-18 22:20:00', '2026-09-18 22:36:00', 21, 'CLOSED', 'HIGH'),

(19, 'GAS_LEAK', 'Ghansoli Sector 8', '2026-09-19 09:35:00',
 '2026-09-19 09:40:00', '2026-09-19 09:52:00', 17, 'CLOSED', 'CRITICAL'),

(20, 'CHEMICAL_SPILL', 'Turbhe Industrial Area', '2026-09-20 13:20:00',
 '2026-09-20 13:25:00', '2026-09-20 13:44:00', 24, 'CLOSED', 'HIGH'),

(21, 'HOUSE_FIRE', 'Kharghar Sector 35', '2026-09-21 18:50:00',
 '2026-09-21 18:55:00', '2026-09-21 19:09:00', 19, 'CLOSED', 'HIGH'),

(22, 'ROAD_ACCIDENT', 'Nerul Sector 20', '2026-09-22 11:05:00',
 '2026-09-22 11:10:00', '2026-09-22 11:22:00', 17, 'CLOSED', 'MEDIUM'),

(23, 'RESCUE_OPERATION', 'Belapur Fort', '2026-09-23 14:15:00',
 '2026-09-23 14:20:00', '2026-09-23 14:38:00', 23, 'CLOSED', 'HIGH'),

(24, 'BUILDING_FIRE', 'Vashi Sector 10', '2026-09-24 16:45:00',
 '2026-09-24 16:50:00', '2026-09-24 17:08:00', 23, 'CLOSED', 'CRITICAL'),

(25, 'FACTORY_FIRE', 'Panvel Old Highway', '2026-09-25 20:10:00',
 '2026-09-25 20:15:00', '2026-09-25 20:30:00', 20, 'CLOSED', 'HIGH'),

(26, 'ROAD_ACCIDENT', 'Airoli Sector 20', '2026-09-26 08:40:00',
 '2026-09-26 08:45:00', '2026-09-26 08:55:00', 15, 'CLOSED', 'MEDIUM'),

(27, 'RESCUE_OPERATION', 'Sanpada Sector 2', '2026-09-27 12:30:00',
 '2026-09-27 12:35:00', '2026-09-27 12:49:00', 19, 'CLOSED', 'HIGH'),

(28, 'BUILDING_FIRE', 'Kopar Khairane Sector 10', '2026-09-28 17:15:00',
 '2026-09-28 17:20:00', '2026-09-28 17:35:00', 20, 'ON_SCENE', 'CRITICAL'),

(29, 'GAS_LEAK', 'Ghansoli Station Road', '2026-09-29 09:20:00',
 '2026-09-29 09:25:00', '2026-09-29 09:40:00', 20, 'ON_SCENE', 'HIGH'),

(30, 'WAREHOUSE_FIRE', 'Nerul Sector 5', '2026-09-29 10:30:00',
 '2026-09-29 10:35:00', NULL, NULL, 'DISPATCHED', 'HIGH');


INSERT INTO vehicles
(vehicle_number, vehicle_type, capacity, status)
VALUES
('FIRE-101', 'Fire Engine', 8, 'AVAILABLE'),
('FIRE-102', 'Fire Engine', 8, 'COMMITTED'),
('FIRE-103', 'Water Tender', 6, 'AVAILABLE'),
('FIRE-104', 'Water Tender', 6, 'COMMITTED'),
('RESCUE-201', 'Rescue Van', 6, 'AVAILABLE'),
('RESCUE-202', 'Rescue Van', 6, 'COMMITTED'),
('LADDER-301', 'Ladder Truck', 5, 'AVAILABLE'),
('LADDER-302', 'Ladder Truck', 5, 'COMMITTED'),
('HAZMAT-401', 'Hazmat Unit', 4, 'AVAILABLE'),
('AMB-501', 'Ambulance', 4, 'AVAILABLE');


INSERT INTO crew_members
(full_name, rank, phone, shift, status)
VALUES
('Rajendra Patil', 'Station Officer', '9000000001', 'MORNING', 'AVAILABLE'),
('Aakash Sharma', 'Firefighter', '9000000002', 'MORNING', 'AVAILABLE'),
('Vivek More', 'Firefighter', '9000000003', 'MORNING', 'DEPLOYED'),
('Rohan Desai', 'Driver', '9000000004', 'MORNING', 'DEPLOYED'),
('Suresh Pawar', 'Firefighter', '9000000005', 'EVENING', 'AVAILABLE'),
('Nitin Jadhav', 'Driver', '9000000006', 'EVENING', 'DEPLOYED'),
('Kunal Shah', 'Firefighter', '9000000007', 'EVENING', 'DEPLOYED'),
('Pratik Rao', 'Rescue Specialist', '9000000008', 'EVENING', 'AVAILABLE'),
('Akshay Patil', 'Firefighter', '9000000009', 'NIGHT', 'DEPLOYED'),
('Rahul More', 'Driver', '9000000010', 'NIGHT', 'DEPLOYED'),
('Siddhesh Joshi', 'Firefighter', '9000000011', 'NIGHT', 'AVAILABLE'),
('Manoj Kumar', 'Hazmat Specialist', '9000000012', 'NIGHT', 'DEPLOYED'),
('Tejas Kulkarni', 'Firefighter', '9000000013', 'MORNING', 'AVAILABLE'),
('Harsh Mehta', 'Driver', '9000000014', 'MORNING', 'AVAILABLE'),
('Yash Deshmukh', 'Rescue Specialist', '9000000015', 'MORNING', 'DEPLOYED');


INSERT INTO incident_vehicles
(incident_id, vehicle_id, dispatched_at, released_at)
VALUES
(1, 1, '2026-09-01 08:20:00', '2026-09-01 10:00:00'),
(2, 5, '2026-09-02 10:23:00', '2026-09-02 12:00:00'),
(3, 2, '2026-09-03 13:45:00', '2026-09-03 15:00:00'),
(4, 9, '2026-09-04 09:13:00', '2026-09-04 11:00:00'),
(5, 3, '2026-09-05 18:30:00', '2026-09-05 20:00:00'),
(6, 10, '2026-09-06 21:17:00', '2026-09-06 23:00:00'),
(7, 1, '2026-09-07 11:34:00', '2026-09-07 13:00:00'),
(8, 5, '2026-09-08 14:48:00', '2026-09-08 17:00:00'),
(9, 2, '2026-09-09 16:05:00', '2026-09-09 18:30:00'),
(10, 9, '2026-09-10 07:55:00', '2026-09-10 11:00:00'),
(11, 4, '2026-09-11 12:20:00', '2026-09-11 14:00:00'),
(12, 5, '2026-09-12 17:35:00', '2026-09-12 19:00:00'),
(13, 7, '2026-09-13 20:50:00', '2026-09-13 23:00:00'),
(14, 10, '2026-09-14 08:25:00', '2026-09-14 10:00:00'),
(15, 5, '2026-09-15 19:44:00', '2026-09-15 22:00:00'),
(16, 2, '2026-09-16 10:15:00', '2026-09-16 12:00:00'),
(17, 6, '2026-09-17 15:30:00', '2026-09-17 17:00:00'),
(18, 8, '2026-09-18 22:20:00', '2026-09-19 01:00:00'),
(19, 9, '2026-09-19 09:40:00', '2026-09-19 11:00:00'),
(20, 9, '2026-09-20 13:25:00', '2026-09-20 16:00:00'),
(21, 4, '2026-09-21 18:55:00', '2026-09-21 21:00:00'),
(22, 10, '2026-09-22 11:10:00', '2026-09-22 13:00:00'),
(23, 6, '2026-09-23 14:20:00', '2026-09-23 16:30:00'),
(24, 8, '2026-09-24 16:50:00', '2026-09-24 19:30:00'),
(25, 2, '2026-09-25 20:15:00', '2026-09-25 23:00:00'),
(26, 10, '2026-09-26 08:45:00', '2026-09-26 10:30:00'),
(27, 6, '2026-09-27 12:35:00', '2026-09-27 15:00:00'),

-- Currently active assignments
(28, 2, '2026-09-28 17:20:00', NULL),
(29, 4, '2026-09-29 09:25:00', NULL),
(30, 8, '2026-09-29 10:35:00', NULL);


INSERT INTO incident_crew
(incident_id, crew_id, assigned_at, released_at)
VALUES
(1, 2, '2026-09-01 08:20:00', '2026-09-01 10:00:00'),
(1, 4, '2026-09-01 08:20:00', '2026-09-01 10:00:00'),

(2, 8, '2026-09-02 10:23:00', '2026-09-02 12:00:00'),
(2, 14, '2026-09-02 10:23:00', '2026-09-02 12:00:00'),

(3, 3, '2026-09-03 13:45:00', '2026-09-03 15:00:00'),
(3, 6, '2026-09-03 13:45:00', '2026-09-03 15:00:00'),

(4, 12, '2026-09-04 09:13:00', '2026-09-04 11:00:00'),

(5, 5, '2026-09-05 18:30:00', '2026-09-05 20:00:00'),
(5, 7, '2026-09-05 18:30:00', '2026-09-05 20:00:00'),

(6, 10, '2026-09-06 21:17:00', '2026-09-06 23:00:00'),

(7, 3, '2026-09-07 11:34:00', '2026-09-07 13:00:00'),

(8, 8, '2026-09-08 14:48:00', '2026-09-08 17:00:00'),
(8, 15, '2026-09-08 14:48:00', '2026-09-08 17:00:00'),

(9, 9, '2026-09-09 16:05:00', '2026-09-09 18:30:00'),

(10, 12, '2026-09-10 07:55:00', '2026-09-10 11:00:00'),

(11, 13, '2026-09-11 12:20:00', '2026-09-11 14:00:00'),

(12, 8, '2026-09-12 17:35:00', '2026-09-12 19:00:00'),

(13, 3, '2026-09-13 20:50:00', '2026-09-13 23:00:00'),

(14, 10, '2026-09-14 08:25:00', '2026-09-14 10:00:00'),

(15, 15, '2026-09-15 19:44:00', '2026-09-15 22:00:00'),

(16, 7, '2026-09-16 10:15:00', '2026-09-16 12:00:00'),

(17, 8, '2026-09-17 15:30:00', '2026-09-17 17:00:00'),

(18, 9, '2026-09-18 22:20:00', '2026-09-19 01:00:00'),

(19, 12, '2026-09-19 09:40:00', '2026-09-19 11:00:00'),

(20, 12, '2026-09-20 13:25:00', '2026-09-20 16:00:00'),

(21, 5, '2026-09-21 18:55:00', '2026-09-21 21:00:00'),

(22, 10, '2026-09-22 11:10:00', '2026-09-22 13:00:00'),

(23, 15, '2026-09-23 14:20:00', '2026-09-23 16:30:00'),

(24, 7, '2026-09-24 16:50:00', '2026-09-24 19:30:00'),

(25, 3, '2026-09-25 20:15:00', '2026-09-25 23:00:00'),

(26, 14, '2026-09-26 08:45:00', '2026-09-26 10:30:00'),

(27, 8, '2026-09-27 12:35:00', '2026-09-27 15:00:00'),

-- Currently deployed crew
(28, 7, '2026-09-28 17:20:00', NULL),
(29, 12, '2026-09-29 09:25:00', NULL),
(30, 9, '2026-09-29 10:35:00', NULL);


INSERT INTO incident_closures
(incident_id, closed_at, closure_reason, damage_estimate, officer_name)
VALUES
(1, '2026-09-01 10:00:00', 'Fire completely extinguished', 75000, 'Rajendra Patil'),
(2, '2026-09-02 12:00:00', 'Accident cleared and victims transferred', 25000, 'Rajendra Patil'),
(3, '2026-09-03 15:00:00', 'Shop fire extinguished', 120000, 'Rajendra Patil'),
(4, '2026-09-04 11:00:00', 'Gas leak controlled', 15000, 'Rajendra Patil'),
(5, '2026-09-05 20:00:00', 'Building fire extinguished', 250000, 'Rajendra Patil'),
(6, '2026-09-06 23:00:00', 'Road accident cleared', 45000, 'Rajendra Patil'),
(7, '2026-09-07 13:00:00', 'Vehicle fire extinguished', 90000, 'Rajendra Patil'),
(8, '2026-09-08 17:00:00', 'Rescue operation completed', 5000, 'Rajendra Patil'),
(9, '2026-09-09 18:30:00', 'Factory fire controlled', 350000, 'Rajendra Patil'),
(10, '2026-09-10 11:00:00', 'Chemical spill contained', 180000, 'Rajendra Patil'),
(11, '2026-09-11 14:00:00', 'House fire extinguished', 95000, 'Rajendra Patil'),
(12, '2026-09-12 19:00:00', 'Rescue operation completed', 10000, 'Rajendra Patil'),
(13, '2026-09-13 23:00:00', 'Warehouse fire extinguished', 450000, 'Rajendra Patil'),
(14, '2026-09-14 10:00:00', 'Accident cleared', 35000, 'Rajendra Patil'),
(15, '2026-09-15 22:00:00', 'Highway accident cleared', 80000, 'Rajendra Patil'),
(16, '2026-09-16 12:00:00', 'Office fire extinguished', 175000, 'Rajendra Patil'),
(17, '2026-09-17 17:00:00', 'Rescue operation completed', 5000, 'Rajendra Patil'),
(18, '2026-09-19 01:00:00', 'Apartment fire extinguished', 300000, 'Rajendra Patil'),
(19, '2026-09-19 11:00:00', 'Gas leak controlled', 20000, 'Rajendra Patil'),
(20, '2026-09-20 16:00:00', 'Chemical spill contained', 220000, 'Rajendra Patil'),
(21, '2026-09-21 21:00:00', 'House fire extinguished', 110000, 'Rajendra Patil'),
(22, '2026-09-22 13:00:00', 'Road accident cleared', 40000, 'Rajendra Patil'),
(23, '2026-09-23 16:30:00', 'Rescue operation completed', 8000, 'Rajendra Patil'),
(24, '2026-09-24 19:30:00', 'Building fire extinguished', 500000, 'Rajendra Patil'),
(25, '2026-09-25 23:00:00', 'Factory fire extinguished', 420000, 'Rajendra Patil'),
(26, '2026-09-26 10:30:00', 'Road accident cleared', 30000, 'Rajendra Patil'),
(27, '2026-09-27 15:00:00', 'Rescue operation completed', 7000, 'Rajendra Patil');
