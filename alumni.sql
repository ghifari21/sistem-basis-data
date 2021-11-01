create database db_alumni_update;
use db_alumni_update;

create table alumni(
	id_alumni varchar(10) primary key,
	nama varchar(20) not null,
	prodi varchar(20) not null,
	tgl_lulus date not null
);

create table pekerjaan(
	id_pekerjaan varchar (10) primary key,
	jns_pekerjaan varchar(20) not null,
	kesesuaian varchar(5) not null
);

create table riwayat_pekerjaan(
	id_pekerjaan varchar(10) not null,
	foreign key(id_pekerjaan) references pekerjaan(id_pekerjaan),
	id_alumni varchar(10) not null,
	foreign key(id_alumni) references alumni(id_alumni),
	alamat_institusi varchar(30) not null,
	tgl_masuk date not null,
	tgl_keluar date not null,
	lama_bekerja int
);

insert into alumni values
('A1000001','John','Ilmu Komputer','2014-04-15'),
('A1000002','Asep','Teknik Elektro','2013-07-01'),
('A1000003','Harris','Teknik Arsitektur','2012-12-20'),
('A1000004','Fakhri','Teknik Elektro','2015-08-23'),
('A1000005','Ayu','Teknik Arsitektur','2015-12-20'),
('A1000006','Yuli','Ilmu Komputer','2014-04-15'),
('A1000007','Drianto','Teknik Fisika','2012-07-23'),
('A1000008','Shepard','Teknik Fisika','2012-07-23'),
('A1000009','Toni','Seni Musik','2016-04-14'),
('A1000010','Bill','Seni Rupa','2016-04-14');


insert into pekerjaan values
('P001','Programmer','iya'),
('P002','Wirausaha','tidak'),
('P003','Aktris','tidak'),
('P004','Dosen','iya'),
('P005','Guru','iya'),
('P006','Model','tidak'),
('P007','System Analys','iya');

insert into riwayat_pekerjaan values
('P001','A1000001','Bandung','2014-04-17','2015-08-23',null),
('P004','A1000002','Ambon','2013-09-04','2016-04-14',null),
('P002','A1000003','Jakarta','2013-01-05','2015-10-20',null),
('P007','A1000004','Subang','2015-10-22','2018-01-05',null),
('P003','A1000005','Jakarta','2015-12-08','2019-02-04',null),
('P001','A1000006','Bandung','2014-05-06','2015-08-23',null),
('P002','A1000007','Yogyakarta','2012-07-25','2017-08-23',null),
('P005','A1000008','Papua','2012-12-20','2019-10-20',null),
('P001','A1000009','Surabaya','2016-05-10','2018-07-05',null),
('P007','A1000010','Bandung','2016-05-02','2020-02-04',null);