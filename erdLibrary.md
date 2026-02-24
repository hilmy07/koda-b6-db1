```mermaid
---
id: a4643532-e86a-4172-a145-7a93d8150bd9
---
erDiagram

    RAK_BUKU ||--o{ BUKU : memiliki
    KATEGORI ||--o{ BUKU : memiliki
    BUKU ||--o{ PEMINJAMAN : dipinjam
    PETUGAS ||--o{ PEMINJAMAN : memproses
    PEMINJAM ||--o{ PEMINJAMAN : melakukan

    RAK_BUKU {
        int id_rak_buku PK
        string nama
    }

    KATEGORI {
        int id_kategori PK
        string nama
    }

    BUKU {
        int id_buku PK
        string nama
        int tahun_terbit
        string pengarang
        int id_rak_buku FK
        int id_kategori FK
    }

    PETUGAS {
        int id_petugas PK
        string nama
    }

    PEMINJAM {
        int id_peminjam PK
        string nama
    }

    PEMINJAMAN {
        int id_peminjaman PK
        int id_buku FK
        int id_peminjam FK
        int id_petugas FK
        date tanggal_peminjaman
        date tanggal_pengembalian
    }
```
