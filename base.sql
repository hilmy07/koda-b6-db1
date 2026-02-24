DROP TABLE IF EXISTS peminjaman CASCADE;
DROP TABLE IF EXISTS buku CASCADE;
DROP TABLE IF EXISTS peminjam CASCADE;
DROP TABLE IF EXISTS petugas CASCADE;
DROP TABLE IF EXISTS kategori CASCADE;
DROP TABLE IF EXISTS rak_buku CASCADE;

CREATE TABLE rak_buku (
    id_rak_buku SERIAL PRIMARY KEY,
    nama VARCHAR(100) NOT NULL
);

CREATE TABLE kategori (
    id_kategori SERIAL PRIMARY KEY,
    nama VARCHAR(100) NOT NULL
);

CREATE TABLE petugas (
    id_petugas SERIAL PRIMARY KEY,
    nama VARCHAR(100) NOT NULL
);

CREATE TABLE peminjam (
    id_peminjam SERIAL PRIMARY KEY,
    nama VARCHAR(100) NOT NULL
);

CREATE TABLE buku (
    id_buku SERIAL PRIMARY KEY,
    nama VARCHAR(150) NOT NULL,
    tahun_terbit INT,
    pengarang VARCHAR(100),

    id_rak_buku INT NOT NULL,
    id_kategori INT NOT NULL,

    CONSTRAINT fk_rak
        FOREIGN KEY (id_rak_buku)
        REFERENCES rak_buku(id_rak_buku)
        ON DELETE CASCADE,

    CONSTRAINT fk_kategori
        FOREIGN KEY (id_kategori)
        REFERENCES kategori(id_kategori)
        ON DELETE CASCADE
);

CREATE TABLE peminjaman (
    id_peminjaman SERIAL PRIMARY KEY,

    id_buku INT NOT NULL,
    id_peminjam INT NOT NULL,
    id_petugas INT NOT NULL,

    tanggal_peminjaman DATE NOT NULL,
    tanggal_pengembalian DATE,

    CONSTRAINT fk_buku
        FOREIGN KEY (id_buku)
        REFERENCES buku(id_buku)
        ON DELETE CASCADE,

    CONSTRAINT fk_peminjam
        FOREIGN KEY (id_peminjam)
        REFERENCES peminjam(id_peminjam)
        ON DELETE CASCADE,

    CONSTRAINT fk_petugas
        FOREIGN KEY (id_petugas)
        REFERENCES petugas(id_petugas)
        ON DELETE CASCADE
);

INSERT INTO rak_buku (nama) VALUES
('Rak A'), ('Rak B'), ('Rak C'), ('Rak D'), ('Rak E'),
('Rak F'), ('Rak G'), ('Rak H'), ('Rak I'), ('Rak J');

INSERT INTO kategori (nama) VALUES
('Teknologi'), ('Novel'), ('Sejarah'), ('Sains'), ('Ekonomi'),
('Psikologi'), ('Pendidikan'), ('Biografi'), ('Komik'), ('Filsafat');

INSERT INTO petugas (nama) VALUES
('Andi'), ('Budi'), ('Siti'), ('Rudi'), ('Dewi'),
('Agus'), ('Tono'), ('Maya'), ('Hendra'), ('Intan');

INSERT INTO peminjam (nama) VALUES
('Dani'), ('Doni'), ('Lala'), ('Fajar'), ('Putri'),
('Bagas'), ('Nina'), ('Yoga'), ('Riko'), ('Salsa');

INSERT INTO buku
(nama, tahun_terbit, pengarang, id_rak_buku, id_kategori)
VALUES
('Belajar SQL', 2020, 'Eko Prasetyo', 1, 1),
('Pemrograman Python', 2021, 'Agus Setiawan', 2, 1),
('Sejarah Indonesia', 2018, 'Rudi Hartono', 3, 3),
('Fisika Dasar', 2019, 'Dewi Lestari', 4, 4),
('Ekonomi Modern', 2022, 'Tono Saputra', 5, 5),
('Psikologi Umum', 2017, 'Ahmad Fauzi', 6, 6),
('Metode Pendidikan', 2020, 'Maya Sari', 7, 7),
('Biografi Tokoh', 2023, 'Hendra Wijaya', 8, 8),
('Komik Petualangan', 2016, 'Intan Permata', 9, 9),
('Filsafat Hidup', 2015, 'Bagus Pratama', 10, 10);

INSERT INTO peminjaman
(id_buku, id_peminjam, id_petugas, tanggal_peminjaman, tanggal_pengembalian)
VALUES
(1,1,1,'2024-01-01','2024-01-08'),
(2,2,2,'2024-01-02','2024-01-09'),
(3,3,3,'2024-01-03','2024-01-10'),
(4,4,4,'2024-01-04','2024-01-11'),
(5,5,5,'2024-01-05','2024-01-12'),
(6,6,6,'2024-01-06','2024-01-13'),
(7,7,7,'2024-01-07','2024-01-14'),
(8,8,8,'2024-01-08','2024-01-15'),
(9,9,9,'2024-01-09','2024-01-16'),
(10,10,10,'2024-01-10','2024-01-17');

SELECT 
    p.id_peminjaman,
    b.nama AS nama_buku,
    pj.nama AS nama_peminjam,
    pt.nama AS nama_petugas,
    p.tanggal_peminjaman,
    p.tanggal_pengembalian
FROM peminjaman p
JOIN buku b ON p.id_buku = b.id_buku
JOIN peminjam pj ON p.id_peminjam = pj.id_peminjam
JOIN petugas pt ON p.id_petugas = pt.id_petugas;
