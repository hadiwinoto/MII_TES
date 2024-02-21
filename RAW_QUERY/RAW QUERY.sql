INSERT INTO employee (nik, name, is_active, start_date, end_date, created_by, updated_by, created_at, updated_at)
VALUES 
('11012', 'Budi', TRUE, '2024-02-23', '2025-02-23', NULL, NULL, '2024-02-23 12:00:00', '2024-02-23 12:00:00'),
('11013', 'Jarot', TRUE, '2023-01-15', '2023-12-31', NULL, NULL, '2023-01-15 08:30:00', '2023-01-15 08:30:00');


INSERT INTO employee_profile (employee_id, place_of_birth, date_of_birth, gender, is_married, prof_pict, created_by, updated_by, created_at,updated_at)
VALUES 
(1, 'Jakarta', '1997-05-02', 'Laki-laki', TRUE, NULL, 'admin', 'admin', '2024-02-23 12:00:00', '2024-02-23 12:00:00'),
(2, 'Sukabumi', '1996-05-02', 'Laki-laki', FALSE, NULL, 'admin', 'admin', '2023-01-15 08:30:00', '2023-01-15 08:30:00');


INSERT INTO education (employee_id, name, level, description, created_by, updated_by, created_at, updated_at)
VALUES 
(1, 'SMKN 7 Jakarta', 'SMA', 'Sekolah Menengah Atas', 'Admin', 'admin', '2024-02-23 12:00:00', '2024-02-23 12:00:00'),
(2, 'Universitas Negeri Jakarta', 'Strata 1', 'Sarjana', 'Manager', 'admin', '2023-01-15 08:30:00', '2023-01-15 08:30:00');


INSERT INTO employee_family (employee_id, name, identifier, job, place_of_birth, date_of_birth, religion, id_life, id_divorced, relation_status, created_by, updated_by, created_at, updated_at)
VALUES 
(1, 'Marni', '1234567890', 'Ibu Rumah Tangga', 'Denpasar', '1995-10-17', 'Islam', TRUE, FALSE, 'Istri', 'Admin', 'Admin', '2024-02-23 12:00:00', '2024-02-23 12:00:00'),
(2, 'Clara', '0987654321', 'Pelajar', 'Bangkalan', '2008-10-17', 'Islam', TRUE, FALSE, 'Anak', 'Admin', 'Admin', '2023-01-15 08:30:00', '2023-01-15 08:30:00'),
(3, 'Stephanie', '0987654321', 'Pelajar', 'Bangkalan', '2008-10-20', 'Islam', TRUE, FALSE, 'Anak', 'Admin', 'Admin', '2023-01-15 08:30:00', '2023-01-15 08:30:00')
;


