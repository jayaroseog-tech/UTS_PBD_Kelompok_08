CREATE TABLE dosen (
    kd_dosen VARCHAR(10) PRIMARY KEY,
    nama_dosen VARCHAR(100)
);
 CREATE TABLE mahasiswa (
    nim VARCHAR(10) PRIMARY KEY,
    nama_mahasiswa VARCHAR(100),
    jenis_kelamin CHAR(1),
    alamat VARCHAR(100)
);
 CREATE TABLE mata_kuliah (
    kd_mk VARCHAR(10) PRIMARY KEY,
    nama_mk VARCHAR(100),
    sks INT,
    kd_dosen VARCHAR(10),
    FOREIGN KEY (kd_dosen)
    REFERENCES dosen(kd_dosen)
);
 CREATE TABLE grade (
    grade CHAR(2) PRIMARY KEY,
    bobot DECIMAL(3,2)
);
 CREATE TABLE nilai_praktikum (
    id_nilai INT AUTO_INCREMENT PRIMARY KEY,
    nim VARCHAR(10),
    kd_mk VARCHAR(10),

    nilai_tugas DECIMAL(5,2),
    nilai_kuis DECIMAL(5,2),
    nilai_uts DECIMAL(5,2),

    nilai_akhir DECIMAL(5,2),
    grade CHAR(2),
    bobot DECIMAL(3,2),
    status_lulus VARCHAR(20),

    FOREIGN KEY (nim)
    REFERENCES mahasiswa(nim),

    FOREIGN KEY (kd_mk)
    REFERENCES mata_kuliah(kd_mk)
);
 CREATE TABLE log_rekap_nilai (
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    tanggal_proses DATETIME,
    nim VARCHAR(10),
    kd_mk VARCHAR(10),
    nilai_akhir DECIMAL(5,2),
    grade CHAR(2),
    status_lulus VARCHAR(20)
);