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

## Jawaban Pertanyaan Tugas 8  
***1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?***  
Dalam Flutter, penggunaan `const` membantu mendefinisikan nilai atau widget yang bersifat immutable (tidak berubah) dan konstan pada waktu kompilasi. Dengan `const`, Flutter akan mengoptimalkan memori karena widget atau variabel tersebut hanya disimpan satu kali dalam memori, meskipun digunakan berulang kali, sehingga mengurangi alokasi memori berlebihan. Selain itu, penggunaan `const` juga dapat mempercepat waktu rendering aplikasi, karena Flutter tidak perlu membuat ulang widget yang sudah pasti nilainya. `const` sebaiknya digunakan untuk elemen UI yang statis, seperti warna, teks, atau padding, yang tidak akan berubah selama aplikasi berjalan. Namun, `const` tidak perlu digunakan pada elemen dinamis yang dapat berubah nilainya seiring waktu, seperti widget yang mengandalkan data dari API atau hasil input pengguna.

***2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!***  
Di Flutter, `Column` dan `Row` adalah widget tata letak yang sering digunakan untuk menempatkan widget secara berurutan dalam satu arah: `Column` mengatur widget secara vertikal dari atas ke bawah, sementara `Row` mengatur widget secara horizontal dari kiri ke kanan. Keduanya sangat fleksibel untuk menyusun elemen-elemen UI, dan memungkinkan penyesuaian alokasi ruang dengan properti seperti `mainAxisAlignment` (untuk mengatur distribusi ruang di sepanjang arah utama) dan `crossAxisAlignment` (untuk menentukan posisi widget di arah yang berlawanan). Misalnya, `Column` cocok digunakan untuk menampilkan item secara berurutan dari atas ke bawah, seperti daftar teks atau gambar yang di-stack vertikal, sementara `Row` lebih cocok untuk menyusun item di samping satu sama lain, seperti tombol aksi atau ikon yang perlu ditampilkan berdekatan. Berikut adalah contoh implementasi:
```
// Contoh Column
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
)

// Contoh Row
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Icon(Icons.star),
    Icon(Icons.favorite),
    Icon(Icons.share),
  ],
)
```
Dalam contoh di atas, `Column` menampilkan tiga Text widget secara vertikal, sementara `Row` menampilkan tiga ikon yang tersebar merata secara horizontal.

***3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!***  
Pada tugas 8, elemen input yang digunakan adalah beberapa `TextFormField`, yang berfungsi untuk mengambil input teks dari pengguna. Ada tiga `TextFormField` yang digunakan untuk masing-masing masukan, yaitu `Product Name`, `Amount`, dan `Description`. Setiap elemen ini memiliki validasi masing-masing untuk memastikan input yang diterima sesuai ketentuan, misalnya `Product Name` dan `Description` tidak boleh kosong, dan `Amount` harus berupa angka dan lebih dari nol. Selain itu, ada `ElevatedButton` yang berfungsi sebagai tombol untuk menyimpan data, di mana jika form valid, sebuah dialog (`AlertDialog`) akan muncul untuk menampilkan data yang dimasukkan.

Beberapa elemen input Flutter lain yang tidak digunakan pada halaman ini termasuk `DropdownButtonFormField`, `Checkbox`, `Radio`, `Switch`, dan `Slider`. `DropdownButtonFormField` akan berguna jika ada daftar pilihan tetap yang dapat dipilih oleh pengguna, seperti kategori produk. `Checkbox` dan `Radio` bisa digunakan jika form membutuhkan pilihan tipe Boolean (ya/tidak) atau pilihan tunggal dari beberapa opsi. `Switch` digunakan untuk menyalakan atau mematikan pengaturan tertentu, sedangkan `Slider` berguna untuk memilih nilai dalam rentang tertentu. Meskipun elemen-elemen ini tidak dibutuhkan pada tugas ini, elemen tersebut bisa bermanfaat dalam berbagai form lain yang memerlukan input interaktif dari pengguna.

***4. Bagaimana cara kamu mengatur tema (`theme`) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?***  
Untuk projek Flutter ini, tema aplikasi diatur dengan menggunakan properti `theme` pada widget `MaterialApp` yang ada dalam file `main.dart`. `MaterialApp` adalah widget utama yang menyediakan berbagai pengaturan global, termasuk tema, untuk aplikasi Flutter.

1. Pengaturan Tema dengan `ThemeData`: `theme` pada `MaterialApp` diisi dengan `ThemeData`, yang berfungsi sebagai dasar pengaturan visual untuk aplikasi. Dengan `ThemeData`, kita dapat menentukan skema warna, gaya teks, ikon, dan elemen visual lain untuk memberikan tampilan konsisten di seluruh aplikasi.

2. Color Scheme: Pada `ThemeData`, properti `colorScheme` disetel dengan `ColorScheme.fromSwatch`, yang memungkinkan kita untuk memilih warna utama (*primarySwatch*) aplikasi. Dalam kode ini, warna utama diatur menjadi `Colors.red`, yang akan diaplikasikan pada berbagai elemen seperti AppBar, tombol utama, dan elemen interaktif lainnya. Warna aksen (*secondary color*) diatur menjadi `Colors.red[400]`, yang digunakan untuk elemen tambahan seperti tombol aksi atau highlight.

3. Material 3: Pengaturan `useMaterial3: true` menunjukkan bahwa aplikasi ini mengikuti gaya desain Material You (*Material 3*). Material 3 adalah versi terbaru dari desain Material yang menghadirkan tata letak dan animasi yang lebih modern, adaptif, dan sesuai dengan tren desain terbaru.

Dengan pengaturan tema ini, aplikasi memiliki skema warna yang konsisten dan gaya desain yang seragam. Semua widget yang mendukung tema (seperti `AppBar`, `Button`, `TextField`, dan elemen lainnya) akan otomatis mengikuti pengaturan `primarySwatch` dan `secondary`, memastikan aplikasi terlihat selaras dan memiliki tampilan profesional.

***5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?***  
Dalam tugas ini, saya menggunakan widget `Navigator` untuk melakukan navigasi dalam Flutter. Widget `Navigator` di Flutter adalah elemen inti dalam mengelola navigasi antar halaman (atau layar) dalam aplikasi. `Navigator` bekerja sebagai tumpukan (stack) yang menyimpan halaman-halaman aplikasi; halaman baru dapat ditambahkan ke tumpukan (push) atau dihapus (pop) dari tumpukan, yang memungkinkan navigasi antar halaman dengan mulus. Berikut adalah penggunaan `Navigator` dalam projek Flutter SigMart:

1. **Navigator.push:**  
Untuk berpindah ke halaman baru dengan menambahkannya ke tumpukan, kita dapat menggunakan Navigator.push. Ini membuka halaman baru di atas halaman yang sedang aktif. Contoh:
```
if (item.name == "Add Product") {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ProductEntryFormPage()));
          }
```

2. **Navigator.pop:**  
Untuk menutup halaman yang sedang aktif dan kembali ke halaman sebelumnya, kita dapat menggunakan Navigator.pop. Ini menghapus halaman paling atas dari tumpukan. Biasanya, Navigator.pop digunakan ketika pengguna menekan tombol kembali. Contoh:
```
Navigator.pop(context);
```

3. **Navigator.pushReplacement:**  
Jika kita ingin mengganti halaman saat ini dengan halaman baru tanpa memungkinkan pengguna untuk kembali ke halaman sebelumnya, kita bisa menggunakan Navigator.pushReplacement. Ini cocok saat ingin mengganti layar seperti mengalihkan dari halaman login ke halaman beranda setelah login berhasil. Contoh:
```
Navigator.pushReplacement(
    context,
    MaterialPageRoute(
        builder: (context) => MyHomePage(),
    ),
);
```