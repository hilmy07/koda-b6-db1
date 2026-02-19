## ERD Perpustakaan Sederhana

<img width="1262" height="688" alt="image" src="https://github.com/user-attachments/assets/278e3df2-097a-433a-9073-fd086c018dfd" />


Rak buku memiliki atribut :
- ID_rak_buku : digunakan untuk mengetahui identitas rak_buku tertentu, maka dari itu atribut ini sebagai primary key. 
- Nama : digunakan untuk menamakan rak_buku.

Kategori memiliki atribut :
- ID_kategori : digunakan untuk mengetahui identitas kategori tertentu, maka dari itu atribut ini sebagai primary key. 
- Nama : digunakan untuk mengetahui nama pada kategori.

Buku memiliki atribut :
- ID_buku : digunakan untuk mengetahui identitas buku tertentu, maka dari itu atribut ini sebagai primary key.
- Nama : digunakan untuk mengetahui nama pada buku.
- Tahun Terbit: digunakan untuk mengetahui tahun terbit dari buku.
- Pengarang : digunakan untuk mengetahui pengarang dari buku
- ID_kategori : digunakan untuk mengetahui kategori buku apa yang dipinjam, atribut ini diambil dari atribut ID_kategori di entitas Kategori, maka dari itu atribut ini sebagai foreign key.
- ID_peminjam : digunakan untuk mengetahui siapa yg meminjam, atribut ini diambil dari atribut ID_peminjam di entitas Peminjam, maka dari itu atribut ini sebagai foreign key.
- ID_petugas : digunakan untuk mengetahui siapa yg memberi pinjaman, atribut ini diambil dari atribut ID_petugas di entitas Petugas, maka dari itu atribut ini sebagai foreign key.
- Tanggal_peminjaman : digunakan untuk mengetahui tanggal peminjaman buku.
- Tanggal_pengembalian : digunakan untuk mengetahui tanggal pengembalian buku.

Petugas memiliki atribut :
- ID_petugas : digunakan untuk mengetahui identitas petugas tertentu, maka dari itu atribut ini sebagai primary key. 
- Nama : digunakan untuk mengetahui nama petugas.

Peminjam memiliki atribut :
- ID_petugas : digunakan untuk mengetahui identitas peminjam tertentu, maka dari itu atribut ini sebagai primary key. 
- Nama : digunakan untuk mengetahui nama peminjam.
