```mermaid
---
id: a4643532-e86a-4172-a145-7a93d8150bd9
---
erDiagram

    Rak_buku ||--o{ Kategori : "Memiliki"
    Rak_buku {
        int ID_rak_buku PK
        string Nama
        int ID_kategori FK
    }

    Kategori || -- || Buku : "Memiliki"
    Kategori {
        int ID_kategori PK
        string Nama
    }

    Buku {
        int ID_buku PK
        string Nama
        string Tahun_terbit
        string Pengarang
        int ID_kategori FK
        int ID_peminjam FK
        int ID_petugas FK
        string Tanggal_peminjaman
        string Tanggal_pengembalian
    }

    Petugas || -- || Buku : "memberi izin pinjam"
    Petugas {
        int ID_petugas PK
        string Nama
    }

    Peminjam || -- || Buku : "peminjaman"
    Peminjam {
        int ID_peminjam
        string Nama
    }
```
