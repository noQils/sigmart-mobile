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
    1. Membuat file baru bernama `menu.dart` dalam direktori `sigmart/lib/` dan edit file tersebut.
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

## Jawaban Pertanyaan Tugas 8  
***1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?***  
Dalam Flutter, model membantu kita melakukan parsing data JSON menjadi objek Dart dan sebaliknya, sehingga mempermudah proses deserialisasi dan serialisasi. Dengan model, kita juga dapat memvalidasi tipe data dari JSON, memastikan setiap field memiliki tipe yang benar dan menghindari kesalahan tipe data yang dapat menyebabkan error saat runtime. Selain itu, model membuat kode lebih mudah dipelihara dan scalable ketika struktur JSON berubah, kita hanya perlu memperbarui model tersebut, tanpa harus mengubah seluruh kode yang terkait. Jika kita tidak menggunakan model, meskipun Flutter tidak langsung error, kita berisiko menghadapi error runtime, terutama ketika ada ketidaksesuaian tipe data atau field JSON yang tidak sesuai, yang membuat aplikasi menjadi kurang stabil dan sulit dikelola.

***2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini***  
Dalam Django, `JsonResponse` dari library `django.http` berfungsi untuk mengirimkan respons HTTP dalam format JSON, yang berguna saat kita ingin aplikasi Django mengembalikan data JSON, misalnya untuk aplikasi berbasis API atau AJAX. Dengan menggunakan `JsonResponse`, kita dapat mengirim data Python (seperti dictionary atau list) yang secara otomatis dikonversi menjadi JSON, sehingga memudahkan integrasi antara backend Django dan frontend berbasis JavaScript. Ini juga mendukung pengaturan status kode HTTP dan pengaturan header untuk respons, membuatnya lebih fleksibel dalam menangani berbagai jenis permintaan data dari klien. Selain itu, `JsonResponse` juga memiliki parameter `safe`, yang secara default diatur ke `True` untuk memastikan bahwa hanya dictionary yang bisa dikonversi menjadi JSON demi keamanan, namun bisa disetel ke `False` jika ingin mengirimkan tipe data lainnya seperti list atau array JSON.

Adapun library `http` dalam Flutter berfungsi sebagai alat untuk mengelola komunikasi antara aplikasi Flutter dan server melalui protokol HTTP. Dengan library ini, kita dapat melakukan berbagai permintaan HTTP seperti `GET`, `POST`, `PUT`, `DELETE`, dan lainnya, yang memungkinkan aplikasi untuk mengambil atau mengirim data ke API atau server web. Setelah kita menambahkan library ini dengan perintah `flutter pub add http`, kita bisa dengan mudah melakukan pengambilan data dari internet atau mengirim data dari aplikasi ke server. Misalnya, dalam aplikasi yang memerlukan data dari API publik seperti data cuaca atau berita, `http` memfasilitasi proses pengambilan data tersebut dan memberikan hasil dalam bentuk JSON, yang kemudian dapat kita kelola dengan model data dalam aplikasi. Selain itu, library ini juga mendukung pengaturan header, parameter, dan autentikasi dalam permintaan HTTP, sehingga cocok untuk membangun aplikasi yang membutuhkan integrasi API secara dinamis dan aman.

***3. Jelaskan fungsi dari `CookieRequest` dan jelaskan mengapa instance `CookieRequest` perlu untuk dibagikan ke semua komponen di aplikasi Flutter.***  
`CookieRequest` dalam aplikasi Flutter berfungsi untuk menangani manajemen cookie pada permintaan HTTP, terutama saat berinteraksi dengan server yang membutuhkan otentikasi atau sesi pengguna yang persisten. Dengan `CookieRequest`, aplikasi dapat menyimpan dan mengirimkan cookie yang diterima dari server dalam setiap permintaan HTTP selanjutnya, sehingga pengguna tetap terautentikasi dan dapat mengakses sumber daya terbatas tanpa perlu login ulang. Membagikan instance `CookieRequest` ke seluruh komponen aplikasi sangat penting agar setiap bagian dari aplikasi, seperti halaman atau widget yang membutuhkan data pengguna atau akses tertentu, dapat melakukan permintaan HTTP dengan menggunakan cookie yang sama. Ini memastikan bahwa sesi pengguna tetap konsisten di seluruh aplikasi, memungkinkan pengalaman pengguna yang lebih lancar dan mengurangi risiko kesalahan otentikasi yang dapat terjadi jika setiap permintaan HTTP dikelola dengan cookie yang berbeda atau terpisah.

***4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.***  
Mekanisme pengiriman data dalam Flutter dimulai dengan pengguna memasukkan data ke dalam form atau input widget, seperti `TextField`, yang mengumpulkan data dalam variabel atau model data Dart. Setelah pengguna mengirim data (misalnya dengan menekan tombol submit), aplikasi memproses data ini dan mengirimkannya ke server melalui permintaan HTTP, biasanya menggunakan library seperti `http`. Data tersebut dikirim dalam format tertentu, seperti JSON, agar server dapat memprosesnya. Server kemudian menerima, memvalidasi, dan mengolah data tersebut, lalu mengirimkan respons kembali ke aplikasi Flutter seringkali dalam format JSON. Setelah respons diterima, aplikasi melakukan parsing (mengurai) JSON menjadi objek Dart yang dapat dibaca dan ditampilkan. Terakhir, data yang sudah terurai ini ditampilkan pada widget Flutter untuk memberikan umpan balik atau informasi kepada pengguna, melengkapi siklus pengiriman dan penerimaan data secara mulus dalam aplikasi.

***4. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.***  
Mekanisme autentikasi dalam aplikasi ini dimulai dengan pengguna memasukkan data akun di aplikasi Flutter pada halaman login atau register. Pada halaman login, pengguna memasukkan username dan password, yang kemudian dikirim ke server Django melalui endpoint `/auth/login/` menggunakan metode POST. Di server Django, data login ini diverifikasi melalui fungsi `authenticate();` jika data valid, server akan menjalankan `auth_login()` untuk mencatat sesi pengguna dan mengembalikan respons JSON berisi pesan sukses, status `True`, dan username pengguna. Flutter menerima respons ini dan, jika login berhasil, menavigasi pengguna ke halaman menu utama (`MyHomePage`) sambil menampilkan pesan sambutan. Jika pengguna tidak memiliki akun, mereka dapat menggunakan halaman register, di mana data username, password, dan konfirmasi password dikirim ke endpoint `/auth/register/`. Django memvalidasi kecocokan password dan ketersediaan username, jika valid, server membuat akun baru dan mengirim respons sukses ke Flutter. Untuk logout, pengguna memilih opsi logout di Flutter, yang mengirim permintaan ke endpoint `/auth/logout/`. Django menjalankan `auth_logout()` untuk menghapus sesi pengguna dan mengembalikan pesan logout yang berhasil, setelah itu Flutter mengarahkan kembali ke halaman login, menyelesaikan proses autentikasi secara lengkap.


***5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step!***  
* **Checklist 1:**
    1. Memastikan deployment django sudah berjalan dengan baik.
* **Checklist 2:**
    1. Mengintegrasikan sistem autentikasi dalam proyek Django.
    2. Membuat app baru bernama `authentication` dalam proyek Django dnegan menjalankan command `python manage.py startapp authentication` pada *root directory* proyek Django.
    3. Menambahkan `authentication` ke `INSTALLED_APPS` pada *main project* `settings.py` aplikasi Django.
    4. Menginstall `django-cors-headers` pada *virtual environment* dengan perintah `pip install django-cors-headers` dan menambahkan `django-cors-headers` ke `requirements.txt`.
    5. Menambahkan `corsheaders` ke `INSTALLED_APPS` pada main project `settings.py` aplikasi Django.
    6. Menambahkan `corsheaders.middleware.CorsMiddleware` ke `MIDDLEWARE` pada main project `settings.py` aplikasi Django.
    7. Menambahkan variabel berikut ini pada main project `settings.py` aplikasi Django:
        ```
        CORS_ALLOW_ALL_ORIGINS = True
        CORS_ALLOW_CREDENTIALS = True
        CSRF_COOKIE_SECURE = True
        SESSION_COOKIE_SECURE = True
        CSRF_COOKIE_SAMESITE = 'None'
        SESSION_COOKIE_SAMESITE = 'None'
        ```
    8. Membuat metode view untuk login, register, dan logout pada file `views.py` dalam aplikasi `authentication`.
    9. Membuat file `urls.py` baru dalam direktori aplikasi `authentication`.
    10. Menambahkan routing metode login, register, dan logout yang telah dibuat di `views.py`.
* **Checklist 3:**
    1. Membuat file `login.dart` pada direktori `screens`.
    2. Mengisi file dart untuk tampilan halaman login serta mengimplementasikan *logic* pengiriman data untuk login.
* **Checklist 4:**
    1. Menambahkan host `"10.0.2.2"` pada list `ALLOWED_HOST` yang berada dalam `settings.py` aplikasi Django.
* **Checklist 5:**
    1. Bukalah endpoint JSON yang sudah pada aplikasi Django.
    2. Menyalin data JSON dan buka situs web Quicktype.
    3. Pada situs web Quicktype, mengubah *setup name* menjadi ProductEntry, *source type* menjadi JSON, dan *language* menjadi Dart.
    4. Tempel data JSON yang telah disalin sebelumnya ke dalam *textbox* yang tersedia pada Quicktype.
    5. Mengklik pilihan *Copy Code* pada Quicktype.
    6. Membuat direktori baru bernama `models` dalam direktori `lib` pada proyek Flutter.
    7. Dalam direktori `models` yang baru dibuat, buat file dart bernama `product_entry.dart` yang berfungsi sebagai model kustom pada Flutter.
    8. Tempel kode yang tadi sudah disalin dari situs web QuickType ke dalam file `product_entry.dart`.
* **Checklist 6:**
    1. Pada direktori `screens`, buat file bernama `list_productentry.dart`.
    2. Mengimplementasikan penampilan produk-produk dalam file `list_productentry.dart` lengkap dengan semua detail dari setiap produk (nama produk, deskripsi, harga, *rating*, dan tanggal ditambahkan):
        ```
        children: [
          Text(
              "${snapshot.data![index].fields.productName}",
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text("Desciription: ${snapshot.data![index].fields.description}"),
            const SizedBox(height: 10),
            Text("Price: ${snapshot.data![index].fields.price}"),
            const SizedBox(height: 10),
            Text("Rating: ${snapshot.data![index].fields.rating}"),
            const SizedBox(height: 10),
            Text("Date Added: ${snapshot.data![index].fields.date}"),
        ],
        ```
* **Checklist 7:**
    1. Membuat file `product_detail.dart` pada direktori `screens`
    2. Modifikasi file tersebut untuk menampilkan detail produk dari barang yang diklik pada halaman *list* produk
    3. Modifikasi file `list_productentry.dart` sehingga menampilkan halaman detail produk ketika salah satu produk diklik:
        ```
        return ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (_, index) {
            final product = snapshot.data![index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailPage(product: product),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.fields.productName,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text("Description: ${product.fields.description}"),
                    const SizedBox(height: 10),
                    Text("Price: ${product.fields.price}"),
                    const SizedBox(height: 10),
                    Text("Rating: ${product.fields.rating}"),
                    const SizedBox(height: 10),
                    Text("Date Added: ${product.fields.date}"),
                  ],
                ),
              ),
            );
          },
        );
        ```
* **Checklist 8:**
    1. Pada file `list_productentry.dart`, menambahkan potongan kode berikut agar produk yang ditampilkan hanyalah produk-produk dari *user* yang sedang login:
        ```
        Future<List<ProductEntry>> fetchProduct(CookieRequest request) async {
          final response = await request.get('http://127.0.0.1:8000/json/');
          
          // Melakukan decode response menjadi bentuk json
          var data = response;
          
          // Melakukan konversi data json menjadi object ProductEntry
          List<ProductEntry> listProduct = [];
          for (var d in data) {
            if (d != null) {
              listProduct.add(ProductEntry.fromJson(d));
            }
          }
          return listProduct;
        }
        ```