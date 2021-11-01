create database db_sarpras;
use db_sarpras;

create table gedung(
    id_gedung varchar(4) not null primary key,
    nama_gedung varchar(100) not null
);

create table petugas(
    id_petugas varchar(4) not null primary key,
    nama_petugas varchar(100) not null
);

create table departemen(
    id_departemen varchar(4) not null primary key,
    nama_departemen varchar(100)
);

create table peminjam(
    id_peminjam varchar(8) not null primary key,
    nama_peminjam varchar(100) not null,
    id_departemen varchar(4) not null,
    foreign key(id_departemen) references departemen(id_departemen)
);

create table ruangan(
    id_ruang varchar(5) not null primary key,
    id_gedung varchar(4) not null,
    foreign key(id_gedung) references gedung(id_gedung),
    id_departemen varchar(4),
    foreign key(id_departemen) references departemen(id_departemen),
    jns_ruang varchar(50) not null,
    luas varchar(30) not null,
    kapasitas int not null
);

create table jadwal_ruang(
    id_jadwal varchar(5) not null primary key,
    id_ruang varchar(5) not null,
    foreign key(id_ruang) references ruangan(id_ruang),
    hari varchar(10) not null,
    jam_mulai time not null,
    jam_selesai time not null,
    pemakai varchar(30) not null,
    keterangan varchar(100)
);

create table peralatan(
    id_aset varchar(5) not null primary key,
    id_ruang varchar(5) not null,
    foreign key(id_ruang) references ruangan(id_ruang),
    nama_aset varchar(50) not null,
    portabilitas varchar(5) not null
);

create table kelayakan(
    id_check varchar(5) not null primary key,
    id_aset varchar(5) not null,
    foreign key(id_aset) references peralatan(id_aset),
    id_petugas varchar(4) not null,
    foreign key(id_petugas) references petugas(id_petugas),
    tgl_pembelian date not null,
    tgl_check_terakhir date not null,
    status_aset varchar(20) not null
);

create table peminjaman(
    id_peminjaman varchar(5) not null primary key,
    id_peminjam varchar(8) not null,
    foreign key(id_peminjam) references peminjam(id_peminjam),
    id_aset varchar(5) not null,
    foreign key(id_aset) references peralatan(id_aset),
    tgl_keluar date not null,
    tgl_kembali date not null,
    keterangan varchar(100)
);