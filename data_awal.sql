INSERT INTO dosen VALUES
('DS001','Budi Santoso'),
('DS002','Andi Wijaya');
[3/6 13.10] sima fikom: INSERT INTO mata_kuliah VALUES
('MK001','Basis Data',3,'DS001'),
('MK002','Pemrograman Web',3,'DS002'),
('MK003','Struktur Data',3,'DS001');

 INSERT INTO grade VALUES
('A',4.00),
('A-',3.75),
('B+',3.50),
('B',3.00),
('B-',2.75),
('C+',2.50),
('C',2.00),
('C-',1.75),
('D',1.00),
('E',0.00);

 INSERT INTO mahasiswa VALUES
('IK2411035','Elghiariel','P','Luwu'),
('IK2411007','Jayarose','P','Luwu'),
('IK2411028','Mifta','P','Luwu Timur'),
('IK2411032','Anandari','P','Palopo'),
('IK241106','Periyanti','P','Toraja'),
('IK2411018','FadHila','P','Luwu'),
('IK2411014','Nuraisyha','P','Palopo'),
('IK2411040','Hasriani','P','Endrekang'),
('IK2411015','Hijirianti','p','Luwu'),
('IK2411021','Ikri','L','Luwu Utara'),
('IK2411010','Lisa Kelli','P','Luwu Utara'),
('IK2411012','Lilis','P','Luwu'),
('IK2411011','Uminati','P','Luwu Utara'),
('IK2411030','Zadly','L','Palopo'),
('IK2411044','Aprilino','L','Luwu Timur'),
('IK2411008','Auliya','P','Luwu Utara'),
('SI2411001','Rahma','P','Palopo'),
('IK2411037','Andi Dewa','L','Luwu Utara'),
('IK2411034','Ayu','P','Luwu'),
('IK2411033','Ade Fanjaya','L','Luwu Utara');

 INSERT INTO nilai_praktikum
(nim, kd_mk, nilai_tugas, nilai_kuis, nilai_uts)
VALUES
('IK2411035', 'MK001', 90, 85, 88),
('IK2411007', 'MK001', 75, 80, 78),
('IK2411028', 'MK001', 60, 65, 70),
('IK2411032', 'MK001', 95, 92, 96),
('IK2411006', 'MK001', 50, 55, 60),
('IK2411018', 'MK002', 88, 87, 90),
('IK2411014', 'MK002', 77, 75, 80),
('IK2411040', 'MK002', 66, 68, 70),
('IK2411015', 'MK002', 55, 60, 58),
('IK2411021', 'MK002', 98, 95, 97),
('IK2411010', 'MK003', 85, 83, 80),
('IK2411012', 'MK003', 72, 70, 75),
('IK2411011', 'MK003', 65, 67, 64),
('IK2411030', 'MK003', 45, 50, 55),
('IK2411044', 'MK003', 90, 88, 92),
('IK2411008', 'MK001', 82, 80, 84),
('SI2411001', 'MK002', 74, 76, 72),
('IK2411037', 'MK003', 68, 70, 69),
('IK2411034', 'MK001', 93, 91, 94),
('IK2411033', 'MK002', 58, 60, 62);