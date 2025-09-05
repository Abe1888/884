/*
  # Vehicle Data Migration from Installation Schedule

  1. New Data Migration
    - Migrate all vehicles from the installation schedule document
    - Update vehicle IDs to match the documented format
    - Ensure proper fuel tank and sensor configurations
    - Add time slots and proper scheduling

  2. Data Integrity
    - Maintain referential integrity
    - Update location statistics
    - Ensure proper vehicle type mapping
*/

-- Clear existing sample data to avoid conflicts
DELETE FROM tasks;
DELETE FROM vehicles;

-- Insert vehicles based on the installation schedule document
-- Bahir Dar vehicles (Days 1-8)
INSERT INTO vehicles (id, type, location, day, time_slot, status, gps_required, fuel_sensors, fuel_tanks) VALUES
-- Day 1
('V001', 'FORD/D/P/UP RANGER', 'Bahir Dar', 1, '8:30–11:30 AM', 'Pending', 1, 1, 1),
('V002', 'FORD/D/P/UP RANGER', 'Bahir Dar', 1, '1:30–5:30 PM', 'Pending', 1, 1, 1),
-- Day 2
('V003', 'FORD/D/P/UP RANGER', 'Bahir Dar', 2, '8:30–11:30 AM', 'Pending', 1, 1, 1),
('V004', 'FORD/D/P/UP RANGER', 'Bahir Dar', 2, '1:30–5:30 PM', 'Pending', 1, 1, 1),
-- Day 3
('V005', 'MAZDA/PICKUP W9AT', 'Bahir Dar', 3, '8:30–11:30 AM', 'Pending', 1, 1, 1),
('V006', 'Mercedes bus MCV260', 'Bahir Dar', 3, '1:30–5:30 PM', 'Pending', 1, 1, 1),
-- Day 4
('V007', 'Toyota land cruiser', 'Bahir Dar', 4, '8:30–11:30 AM', 'Pending', 1, 1, 1),
('V008', 'MAZDA/PICKUP W9AT', 'Bahir Dar', 4, '1:30–5:30 PM', 'Pending', 1, 1, 1),
-- Day 5
('V009', 'Mercedes bus MCV260', 'Bahir Dar', 5, '8:30–11:30 AM', 'Pending', 1, 1, 1),
('V010', 'UD truck CV86BLLDL', 'Bahir Dar', 5, '1:30–5:30 PM', 'Pending', 1, 2, 2),
-- Day 6
('V011', 'Mitsubishi K777JENSU', 'Bahir Dar', 6, '8:30–11:30 AM', 'Pending', 1, 1, 1),
('V012', 'Terios j120cg', 'Bahir Dar', 6, '1:30–5:30 PM', 'Pending', 1, 1, 1),
-- Day 7
('V013', 'MAZDA/PICKUP BT-50', 'Bahir Dar', 7, '8:30–11:30 AM', 'Pending', 1, 1, 1),
('V014', 'Mitsubishi (k777jensl)', 'Bahir Dar', 7, '1:30–5:30 PM', 'Pending', 1, 1, 1),
-- Day 8
('V015', 'Cherry c7180elkkhb0018', 'Bahir Dar', 8, '8:30–11:30 AM', 'Pending', 1, 1, 1),

-- Kombolcha vehicles (Days 10-12)
-- Day 10
('V016', 'FORD/D/P/UP RANGER', 'Kombolcha', 10, '8:30–11:30 AM', 'Pending', 1, 1, 1),
('V017', 'MAZDA/R/D/UP BT-50', 'Kombolcha', 10, '1:30–5:30 PM', 'Pending', 1, 1, 1),
-- Day 11
('V018', 'Mercedes bus MCV5115', 'Kombolcha', 11, '8:30–11:30 AM', 'Pending', 1, 1, 1),
('V019', 'Toyota Pickup LN166L-PRMDS', 'Kombolcha', 11, '1:30–5:30 PM', 'Pending', 1, 1, 1),
-- Day 12
('V020', 'Mitsubishi K34)JUNJJC', 'Kombolcha', 12, '8:30–11:30 AM', 'Pending', 1, 1, 1),
('V021', 'UD truck CV86BLLDL', 'Kombolcha', 12, '1:30–5:30 PM', 'Pending', 1, 2, 2),

-- Addis Ababa vehicles (Days 13-14)
-- Day 13
('V022', 'FORD/D/P/UP RANGER', 'Addis Ababa', 13, '8:30–11:30 AM', 'Pending', 1, 1, 1),
('V023', 'MAZDA/PICKUP-626', 'Addis Ababa', 13, '1:30–5:30 PM', 'Pending', 1, 1, 1),
-- Day 14
('V024', 'Cherry c7180elkkhb0018', 'Addis Ababa', 14, '8:30–11:30 AM', 'Pending', 1, 1, 1);

-- Update location statistics to match actual vehicle counts
UPDATE locations SET 
  vehicles = 15,
  gps_devices = 15,
  fuel_sensors = 16
WHERE name = 'Bahir Dar';

UPDATE locations SET 
  vehicles = 6,
  gps_devices = 6,
  fuel_sensors = 8
WHERE name = 'Kombolcha';

UPDATE locations SET 
  vehicles = 3,
  gps_devices = 3,
  fuel_sensors = 3
WHERE name = 'Addis Ababa';