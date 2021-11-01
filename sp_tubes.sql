DELIMITER //
CREATE PROCEDURE db_sarpras.peminjaman (in v_id varchar(5), in v_fname varchar(30), in v_lname varchar(30), in v_birthdate varchar(30))
BEGIN
INSERT INTO customer(customer_id, fname, lname, birthdate) values
(v_costumer_id, v_fname, v_lname, STR_TO_DATE(v_birthdate, "%d-%m-%Y"));
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE db_sarpras.peminjaman (in v_id_peminjaman varchar(5), in v_id_peminjam varchar(8), in v_id_aset varchar(5), in v_tgl_keluar varchar(30), in v_tgl_kembali varchar(30), in v_keterangan varchar(100))
BEGIN
INSERT INTO peminjaman(id_peminjaman, id_peminjam, id_aset, tgl_keluar, tgl_kembali, keterangan) values
(v_id_peminjaman, v_id_peminjam, v_id_aset, STR_TO_DATE(v_tgl_keluar, "%m-%d-%Y"), STR_TO_DATE(v_tgl_kembali, "%m-%d-%Y"), v_keterangan);
END //
DELIMITER ;