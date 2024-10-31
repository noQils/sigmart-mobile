# Sigmart

## Profile
***Nama:*** Daffa Aqil Mahmud  
***NPM:*** 2306245056  
***Kelas:*** PBP C

## Jawaban Pertanyaan Tugas 7
***1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.***  
StatelessWidget adalah widget yang tidak memiliki state internal dan tampilannya bersifat statis atau tetap, artinya tidak berubah sepanjang siklus hidupnya kecuali ada pembaruan dari luar, seperti saat aplikasi di-refresh. Contoh penggunaannya adalah teks atau ikon yang hanya perlu ditampilkan tanpa perubahan. Sedangkan, StatefulWidget memiliki state yang dapat berubah-ubah seiring waktu, dan perubahan ini akan membuat Flutter merender ulang widget tersebut agar tampilannya diperbarui sesuai dengan state terbaru. Contoh penggunaan StatefulWidget adalah tombol dengan fungsi increment counter atau form input yang interaktif. Secara kinerja, StatelessWidget lebih ringan karena hanya dirender sekali, sedangkan StatefulWidget lebih berat karena harus memantau perubahan state dan merender ulang sesuai kebutuhan. Dengan demikian, StatelessWidget cocok untuk komponen statis, sementara StatefulWidget digunakan saat UI memerlukan perubahan dinamis berdasarkan aksi pengguna atau data yang berkembang.

***2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.***  
Pada proyek ini, saya menggunakan *stateless widget*. Widget ini digunakan untuk menampilkan konten-konten seperti *info card* dan *product card* dengan gaya tampilan yang tetap tanpa perubahan sepanjang program berjalan.

***3. Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.***  
`setState()` adalah fungsi yang digunakan dalam StatefulWidget untuk memberi tahu framework bahwa ada perubahan pada state yang memerlukan rebuild atau pembaruan UI. Saat `setState()` dipanggil, Flutter akan menjalankan ulang metode `build()` dan memperbarui tampilan sesuai dengan nilai terbaru dari variabel state. Tanpa `setState()`, perubahan pada variabel tidak akan terlihat di UI meskipun nilainya sudah diubah di dalam kode.

Semua variabel state yang dideklarasikan dalam kelas State dari sebuah StatefulWidget dapat terdampak oleh fungsi ini. Contohnya, jika ada variabel seperti counter untuk menghitung jumlah klik atau isLoggedIn untuk memeriksa status login, setiap kali variabel tersebut diubah dan dibungkus dalam `setState()`, maka perubahan akan tercermin di UI. Variabel-variabel yang biasanya terdampak adalah yang terkait dengan input pengguna, status, kondisi tampilan, atau data dinamis, seperti teks, warna, ukuran, visibilitas widget, dan sebagainya. Tanpa pemanggilan `setState()`, meskipun data di backend atau dalam variabel berubah, UI tidak akan diperbarui hingga aplikasi di-refresh manual.

***4. Jelaskan perbedaan antara `const` dengan `final`.***  
* Variabel dengan `const` merupakan *compile-time constant*, yang berarti nilainya sudah harus ditentukan saat kompilasi dan tidak akan berubah. `const` ideal digunakan untuk nilai-nilai tetap yang sudah pasti diketahui sebelumnya, seperti nilai numerik atau teks yang tidak bergantung pada kondisi atau data runtime. 

* Variabel dengan `final` hanya bisa diberikan nilai satu kali, tetapi nilainya bisa ditentukan saat runtime. Dengan `final`, variabel tetap tidak dapat diubah setelah diinisialisasi, tetapi dapat digunakan untuk nilai yang baru diketahui selama aplikasi berjalan, seperti hasil dari suatu fungsi atau input pengguna.

***5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.***  
* **Checklist 1:**
    1. Membuat repositori github baru dengan nama sigmart-mobile.
    2. Membuat folder baru bernama `flutter` pada direktori tempat proyek flutter disimpan.
    3. Menjalankan perintah `flutter create sigmart` pada folder `flutter` yang baru dibuat.
    4. Melakukan `git init`, `git add`, `git commit`.
    5. Meng-*clone* repositori github yang sudah dibuat dalam `root directory` proyek sigmart.
* **Checklist 2:**
    1. Mmebuat file baru bernama `menu.dart` dalam direktori `sigmart/lib/` dan edit file tersebut.
    2. Menambahkan class `Myhomepage` yang berisi konten-konten yang akan ditampilkan dalam *homepage* ketika program di jalankan.
    3. Menambahkan class `ItemHomepage` sebagai objek *item* (*button*) yang diatmpilkan pada *homepage*.
    4. Menambahkan class `ItemClass` untuk membuat kartu yang memberikan menampilkan *button*.
    5. Menambahkan class `InforCard` untuk membuat kartu yang menampilkan informasi berupa npm, nama, dan kelas PBP.
    6. Menambahkan sebuah `List` variabel bernama `items` yang menyimpan tiga objek `ItemHomepage` (*button*) yang bernama `View Product`, `Add Product`, dan `Logout` dengan *icon* yang berhubungan dengan setiap *button*.
* **Checklist 3:**
    1. Menambahkan `final` variabel `Color` bernama `color` pada class `ItemHomapage`.
    2. Pada class `ItemCard`, value dari `color` menjadi `item.color` (`color: item.color,`) agar setiap *button* dapat memiliki warna yang berbeda-beda.
    3. Menambahkan parameter berupa warna pada pembuata objek `ItemHomepage` yang berada dalam class `MyHomepage` (contoh: `ItemHomepage("View Product", Icons.shopping_basket, Colors.teal)`).
* **Checklist 4:**
    1. Dalam `Widget` pada class `ItemCard`, tambahkan:
    ```
    child: InkWell(
        onTap: () {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("You have clicked the ${item.name} button!"))
            );
        },
    ```
    2. Potongan kode tersebut akan memunculkan sebuah pesan bahwa pengguna telah menekan *button* yang bersangkutan saat *button* ditekan.