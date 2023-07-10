-- Guided
-- Watermark: @septiandiNugraha21104060
-- 1. Membuat database 'db_kampus' dengan query berikut
CREATE DATABASE db_kampus;
-- 2. Masuk ke database 'db_kampus' dengan query berikut
USE db_kampus;

-- Watermark: @septiandiNugraha21104060
-- 3. Membuat table 'prodi' dengan query berikut
CREATE TABLE prodi (
    kode_prodi CHAR(6) PRIMARY KEY NOT NULL,
    nama_prodi VARCHAR(30)
);

-- Watermark: @septiandiNugraha21104060
-- 4. Membuat table 'mahasiswa' dengan query berikut
CREATE TABLE mahasiswa (
    nim CHAR(8) PRIMARY KEY NOT NULL,
    nama_mhs CHAR(50),
    sex ENUM('L', 'P'),
    alamat VARCHAR(50),
    kota VARCHAR(50),
    asal_sma VARCHAR (30),
    no_hp VARCHAR(12),
    login VARCHAR(20),
    pass VARCHAR(20),
    umur INT,
    kode_prodi CHAR(6),
    FOREIGN KEY (kode_prodi) REFERENCES prodi (kode_prodi)
);

-- Watermark: @septiandiNugraha21104060
-- 5. Membuat table 'mata_kuliah' dengan query berikut
CREATE TABLE mata_kuliah (
    mk_id CHAR(10) PRIMARY KEY NOT NULL,
    nama_mk VARCHAR(50),
    jumlah_jam FLOAT(4, 2),
    sks INT
);

-- watermark: @septiandiNugraha21104060
-- 6. Membuat table 'ruang' dengan query berikut
CREATE TABLE ruang (
    ruang_id CHAR(3) PRIMARY KEY NOT NULL,
    kode_ruang VARCHAR(5) NOT NULL,
    nama_ruang VARCHAR(20),
    kapasitas INT
);

-- watermark: @septiandiNugraha21104060
-- 7. Membuat table 'dosen' dengan query berikut
CREATE TABLE dosen (
    nik INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    inisial CHAR(3) UNIQUE KEY, 
    nama_dosen VARCHAR(50), 
    status ENUM('T', 'LB'),
    sex ENUM('L', 'P'),
    agama VARCHAR(20),
    login VARCHAR(20),
    pass VARCHAR(20),
    alamat VARCHAR(50),
    kota VARCHAR(20),
    email VARCHAR(50),
    no_hp VARCHAR(12),
    salary INT
);

-- watermark: @septiandiNugraha21104060
-- 8. Membuat table 'mengajar' dengan query berikut
CREATE TABLE mengajar (
    id_mengajar INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    jam_ke INT,
    hari VARCHAR(10),
    mk_id CHAR(10),
    inisial CHAR(3),
    ruang_id CHAR(3),
    FOREIGN KEY (mk_id) REFERENCES mata_kuliah (mk_id),
    FOREIGN KEY (inisial) REFERENCES dosen (inisial),
    FOREIGN KEY (ruang_id) REFERENCES ruang (ruang_id)
);

-- watermark: @septiandiNugraha21104060
-- 9. Membuat table 'nilai' dengan query berikut
CREATE TABLE nilai (
    nim CHAR(8),
    mk_id CHAR(10),
    kode_prodi CHAR(6),
    inisial CHAR(3),
    nilai_uts INT,
    nilai_uas INT,
    nilai_akhir INT,
    FOREIGN KEY (nim) REFERENCES mahasiswa (nim),
    FOREIGN KEY (mk_id) REFERENCES mata_kuliah (mk_id),
    FOREIGN KEY (kode_prodi) REFERENCES prodi (kode_prodi),
    FOREIGN KEY (inisial) REFERENCES dosen (inisial)
);

-- watermark: @septiandiNugraha21104060
-- 10. Menampilkan seluruh tabel yang sudah dibuat dengan query berikut
SHOW TABLES;

-- watermark: @septiandiNugraha21104060
-- 11. Menampilkan seluruh tipe data tabel dengan query berikut
DESC dosen;
DESC mahasiswa;
DESC mata_kuliah;
DESC mengajar;
DESC nilai;
DESC prodi;
DESC ruang;

-- watermark: @septiandiNugraha21104060
-- 12. Menambahkan kolom baru di suatu tabel
ALTER TABLE ruang ADD kode_ruang VARCHAR(5) NOT NULL; 
ALTER TABLE ruang ADD kode_prodi CHAR(6) NOT NULL;
ALTER TABLE prodi ADD id_prodi CHAR(6) NOT NULL;

-- watermark: @septiandiNugraha21104060
-- 13. Menambahkan kolom baru di suatu tabel yang di eksekusi di awal urutan kolom
ALTER TABLE ruang ADD nama_mhs VARCHAR(5) NOT NULL FIRST;

-- watermark: @septiandiNugraha21104060
-- 14. Menambahkan kolom baru di suatu tabel yang di eksekusi di bawah kolom yang berada sudah ditentukan
ALTER TABLE ruang ADD fasilitas VARCHAR(25) NOT NULL AFTER nama_ruang;

-- watermark: @septiandiNugraha21104060
-- 15. Menambahkan foreign key di suatu kolom
ALTER TABLE ruang ADD CONSTRAINT FK_kodeprodi FOREIGN KEY (kode_prodi) REFERENCES prodi(kode_prodi);

-- watermark: @septiandiNugraha21104060
-- 16. Menambahkan primary key di kolom lain (harus kolomnya tidak ada primary key)
ALTER TABLE nilai ADD PRIMARY KEY(nilai_uts);

-- watermark: @septiandiNugraha21104060
-- 17. Mengganti tipe data yang ada dalam sebuah kolom
ALTER TABLE prodi MODIFY id_prodi TEXT;

-- watermark: @septiandiNugraha21104060
-- 17. Mengganti penempatan data yang ada dalam sebuah kolom
ALTER TABLE dosen MODIFY nama_dosen VARCHAR(50) AFTER login VARCHAR(20);

--=================================================================================================

-- Unguided
-- watermark: @septiandiNugraha21104060
-- 1. Membuat database 'db_perpustakaan' dengan query berikut 
CREATE DATABASE db_perpustakaan;
-- 2. Masuk ke database 'db_perpustakaan' dengan query berikut 
USE db_perpustakaan;

-- watermark: @septiandiNugraha21104060
-- 3. Membuat tabel 'anggota' dengan query berikut 
CREATE TABLE anggota (
    kd_anggota CHAR(6) PRIMARY KEY NOT NULL,
    nama VARCHAR(50),
    no_telp VARCHAR(12),
    alamat VARCHAR(50),
    tgl_gabung DATE,
    status ENUM('Aktif', 'Tidak Aktif')
);

-- watermark: @septiandiNugraha21104060
-- 4. Membuat tabel 'peminjaman' dengan query berikut 
CREATE TABLE peminjaman (
    kd_pinjam CHAR(6) PRIMARY KEY NOT NULL,
    kd_anggota CHAR(6),
    tgl_pinjam DATE,
    tgl_hrskembali DATE,
    FOREIGN KEY (kd_anggota) REFERENCES anggota(kd_anggota)
);

-- watermark: @septiandiNugraha21104060
-- 5. Membuat tabel 'pengembalian' dengan query berikut 
CREATE TABLE pengembalian (
    kd_kembali CHAR(6) PRIMARY KEY NOT NULL,
    kd_pinjam CHAR(6),
    tgl_kembali DATE,
    status_kembali ENUM('Dipinjam', 'Dikembalikan'), 
    denda INT,
    FOREIGN KEY (kd_pinjam) REFERENCES peminjaman(kd_pinjam)
);

-- watermark: @septiandiNugraha21104060
-- 6. Membuat tabel 'buku' dengan query berikut 
CREATE TABLE buku (
    kd_buku CHAR(13) PRIMARY KEY NOT NULL,
    judul VARCHAR(50),
    pengarang VARCHAR(50),
    penerbit VARCHAR(50),
    tahun_terbit CHAR(4),
    harga INT,
    jumlah INT
);

-- watermark: @septiandiNugraha21104060
-- 7. Membuat tabel 'buku_kopi' dengan query berikut 
CREATE TABLE buku_kopi (
    kd_bukukopi CHAR(13) PRIMARY KEY NOT NULL,
    kd_buku CHAR(13),
    status ENUM('Dipinjam', 'Dikembalikan'),
    FOREIGN KEY (kd_buku) REFERENCES buku(kd_buku)
);

-- watermark: @septiandiNugraha21104060
-- 8. Membuat tabel 'detail_pinjam' dengan query berikut 
CREATE TABLE detail_pinjam (
    kd_pinjam CHAR(6),
    kd_bukukopi CHAR(13),
    status ENUM('Dipinjam', 'Dikembalikan'),
    keterangan VARCHAR(50),
    FOREIGN KEY (kd_pinjam) REFERENCES peminjaman(kd_pinjam),
    FOREIGN KEY (kd_bukukopi) REFERENCES buku_kopi(kd_bukukopi)
);

-- watermark: @septiandiNugraha21104060
-- 9. Menampilkan seluruh tabel yang sudah dibuat dengan query berikut
SHOW TABLES;

-- watermark: @septiandiNugraha21104060
-- 10. Menampilkan seluruh tipe data tabel dengan query berikut
DESC anggota;
DESC peminjaman;
DESC pengembalian;
DESC buku;
DESC buku_kopi;
DESC detail_pinjam;

