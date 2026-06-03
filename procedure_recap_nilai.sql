DELIMITER $$

CREATE PROCEDURE rekap_semua_nilai()
BEGIN

DECLARE done INT DEFAULT 0;

DECLARE v_id INT;
DECLARE v_nim VARCHAR(10);
DECLARE v_mk VARCHAR(10);

DECLARE v_tugas DECIMAL(5,2);
DECLARE v_kuis DECIMAL(5,2);
DECLARE v_uts DECIMAL(5,2);

DECLARE v_akhir DECIMAL(5,2);

DECLARE v_grade CHAR(2);
DECLARE v_bobot DECIMAL(3,2);
DECLARE v_status VARCHAR(20);

DECLARE cur CURSOR FOR
SELECT id_nilai,nim,kd_mk,
nilai_tugas,nilai_kuis,nilai_uts
FROM nilai_praktikum;

DECLARE CONTINUE HANDLER FOR NOT FOUND
SET done=1;

OPEN cur;

ulang: LOOP

FETCH cur INTO
v_id,v_nim,v_mk,
v_tugas,v_kuis,v_uts;

IF done=1 THEN
LEAVE ulang;
END IF;

SET v_akhir =
(v_tugas*0.30)+
(v_kuis*0.30)+
(v_uts*0.40);

CASE
WHEN v_akhir BETWEEN 93 AND 100 THEN
SET v_grade='A',v_bobot=4.00;

WHEN v_akhir BETWEEN 85 AND 92.99 THEN
SET v_grade='A-',v_bobot=3.75;

WHEN v_akhir BETWEEN 81 AND 84.99 THEN
SET v_grade='B+',v_bobot=3.50;

WHEN v_akhir BETWEEN 75 AND 80.99 THEN
SET v_grade='B',v_bobot=3.00;

WHEN v_akhir BETWEEN 71 AND 74.99 THEN
SET v_grade='B-',v_bobot=2.75;

WHEN v_akhir BETWEEN 66 AND 70.99 THEN
SET v_grade='C+',v_bobot=2.50;

WHEN v_akhir BETWEEN 61 AND 65.99 THEN
SET v_grade='C',v_bobot=2.00;

WHEN v_akhir BETWEEN 56 AND 60.99 THEN
SET v_grade='C-',v_bobot=1.75;

WHEN v_akhir BETWEEN 40 AND 55.99 THEN
SET v_grade='D',v_bobot=1.00;

ELSE
SET v_grade='E',v_bobot=0.00;
END CASE;

IF v_akhir >= 61 THEN
SET v_status='LULUS';
ELSE
SET v_status='TIDAK LULUS';
END IF;

UPDATE nilai_praktikum
SET
nilai_akhir=v_akhir,
grade=v_grade,
bobot=v_bobot,
status_lulus=v_status
WHERE id_nilai=v_id;

INSERT INTO log_rekap_nilai
(tanggal_proses,nim,kd_mk,nilai_akhir,grade,status_lulus)
VALUES
(NOW(),v_nim,v_mk,v_akhir,v_grade,v_status);

END LOOP;

CLOSE cur;

SELECT ROW_COUNT() AS jumlah_data_diproses;

END$$

DELIMITER ;
[3/6 14.06] .: DELIMITER $$

CREATE PROCEDURE rekap_nilai_per_mk(
IN p_kd_mk VARCHAR(10)
)
BEGIN

INSERT INTO log_rekap_nilai
(tanggal_proses,nim,kd_mk,
nilai_akhir,grade,status_lulus)

SELECT
NOW(),
nim,
kd_mk,
nilai_akhir,
grade,
status_lulus

FROM nilai_praktikum
WHERE kd_mk = p_kd_mk;

END$$

DELIMITER ;