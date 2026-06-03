-- Menampilkan data mahasiswa
SELECT * FROM mahasiswa;

-- Menampilkan data dosen
SELECT * FROM dosen;

-- Menampilkan data mata kuliah
SELECT * FROM mata_kuliah;

-- Menampilkan data grade
SELECT * FROM grade;

-- Menampilkan data nilai praktikum sebelum diproses
SELECT * FROM nilai_praktikum;

-- Menjalankan rekap seluruh nilai
CALL rekap_semua_nilai();

-- Melihat hasil setelah rekap
SELECT * FROM nilai_praktikum;

-- Melihat log rekap nilai
SELECT * FROM log_rekap_nilai;

-- Menjalankan rekap berdasarkan mata kuliah
CALL rekap_nilai_per_mk('MK001');

-- Melihat log setelah rekap per mata kuliah
SELECT * FROM log_rekap_nilai;