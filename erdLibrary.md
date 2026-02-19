```mermaid
---
id: a4643532-e86a-4172-a145-7a93d8150bd9
---
erDiagram

    Rak_buku ||--o{ Buku : "Memiliki"
    Rak_buku {
        int ID_rak_buku PK
        string Nama
    }

    Kategori || --o{ Buku : "Memiliki"
    Kategori {
        int ID_kategori PK
        string Nama
    }

    Buku {
        int ID_buku PK
        string Nama
        int Tahun_terbit
        string Pengarang
        int ID_rak_buku FK
        int ID_kategori FK
        int ID_peminjam FK
        int ID_petugas FK
        date Tanggal_peminjaman
        date Tanggal_pengembalian
    }

    Petugas || --o{ Buku : "memroses"
    Petugas {
        int ID_petugas PK
        string Nama
    }

    Peminjam || --o{ Buku : "meminjam"
    Peminjam {
        int ID_peminjam PK
        string Nama
    }
```
