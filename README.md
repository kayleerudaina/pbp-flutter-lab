# Tugas 7 PBP

### Stateless Widget dan Stateful Widget 
- Stateless Widget adalah widget yang tidak dapat diubah atau tidak bisa diubah. Contohnya seperti Icon, Icon Button, atau Text
- Stateful Widget merupakan widget yang dapat diubah dari interaksi pengguna. Contohnya seperti Checkbox, Radio, atau Form.

### Widget yang digunakan
- Scaffold
- Text, menampilkan teks
- Padding, mengatur penempatan & layout
- FloatingActionButton
- Column, menyusun Widget secara Vertikal
- Row, menyusun Widget secara horizontal
- Center, menempatkan widget di _center_

### Fungsi dari setState()
Fungsi setState() digunakan untuk _stateful widget_ dan berfungsi untuk update _state_ dari suatu komponen. Setelah setState(), UI dari widget yang diubah statenya akan berubah tampilannya.

### Perbedaan const dan final
Keyword const dan final sama-sama digunakan untuk membuat suatu variabel bersifat _immutable_. Perbedaannya, `const` mengharuskan variable diinisialisasi saat kompilasi, bersifat konstan dan secara langsung pada saat kompilasi. Sedangkan, `final` tidak harus memiliki suaut variable secara langsung saat kompilasi

### Cara implementasi
 1. Membuat app flutter baru bernama counter_7 dengan `flutter create counter_7`
 2. Mengubah title aplikasi menjad 'Program Counter'
 3. Membuat fungsi `_decrementCounter` untuk mengurangi nilai dari counter
 4. Menambahkan Button baru yang saat ditekan akan decrement counter dengan menambahkan `onPressed: _decrementCounter` yang memanggil fungsi yang telah dibaut sebelumnya
 5. Mengatur tampilan button dengan widget Padding
 6. Membuat Text 'GENAP' yang akan muncul jika counter bernilai genap dan Text 'GANJIL' jika counter bernilai ganjil
 7. Menambahkan style pada Text
 8. Menghilangkan button _decrement_ jika counter mencapai 0 dengan conditional

---

# Tugas 8 PBP
### Perbedaan Navigator.push dan Navigator.pushReplacement
Navigator.push digunakan untuk menambahkan rute lain ke dalam stack saat ini. Halaman baru akan ditampilkan di atas halaman sebelumnya dan bisa kembali ke halaman sebelumnya. Perbedaannya, dengan menggunakan pushReplacement, halaman sebelumnya dihapus dan digantikan dengan yang baru sehingga tidak bisa kembali ke halaman sebelumnya.

### Widget yang dipakai
- AppBar, menu penunjuk atau navigasi dari suatu aplikasi
- Icon, menunjukkan suatu _icon_
- TextFormField, tempat input suatu teks
- DropdownButton, membuat pilih berupa dropdown
- SingleChildScrollView, box dimana Widget dapat di-_scroll_
- ListTile, satu row yang bisa mengandung teks
- Drawer, sebuah menu yang tersembunyi
- Form, menunjukkan suatu Form
- ListView, mengandung widget di setiap row

### Jenis-jenis event pada Flutter
- onPressed, ketika User menekan Button
- onChanged, ketika User mengubah input pada TextFormField
- onSaved, ketika User melakukan simpan input pada FormField
- onTap, ketika User menekan suatu Widget

### Cara kerja Navigator 
Navigator digunakan untuk menampilkan konten ke halaman baru. Ketika menggunakan navigator.push, halaman baru akan ditambahkan ke atas stack dan tampilan akan berganti ke halaman yang berada di paling atas stack.

### Cara implementasi
1. Membuat drawer.dart untuk menampilkan Drawer
2. Melakukan routing untuk setiap Button pada Drawer
3. Membuat form.dart yang berisi form untuk membuat suatu _budget_
4. Membuat budget.dart untuk menampilkan data yang sudah diisi dalam form
5. Budget ditampilkan dalam bentuk card yang tersusun
6. Menambahkan drawer yang sudah dibuat ke masing-masing page dengan `drawer: buildDrawer(context)`

# Tugas 9 PBP
### Pengambilan data JSON
Kita dapat melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Karena pada dasarnya, JSON merupakan objek JavaScript yang ekuivalen dengan `Map` dalam Dart. Namun,  lebih baik membuat model terlebih dahulu untuk meminimalisir kesalahan pengambilan atau pengiriman data melalui HTTP requiest yang akan ditampilkan pada aplikasi.

### Widget yang digunakan 
- Scaffold, widget untuk mengatur tampilan suatu page secara keseluruhan
- FutureBuilder, widget yang dibangun tergantung dengan interaksi snapshot dengan Future, digunakan untuk pengambilan data asinkronus
- ListView.builder, list Widget yang dapat di-_scroll_
(lanjutan dari tugas sebelumnya)
- Padding, memberikan jarak antar Widget
- Checkbox, sebuah widget utnuk menunjukkan checkbox yang dapat dicentang
- Container, widget untuk menampung widget lainnya berguna untuk _positioning_ dan _sizing_

### Mekanisme pengambilan data dari JSON
Pengambilan data dapat dilakukan dengan HTTP request seperti GET, POST secara async. Data JSON yang diambil akan dilakukan parsing dengan `jsonDecode()` untuk decode data JSON menjadi object Dart. Data JSON yang diambil kemudian bisa ditampilkan menggunakan widget FutureBuilder ayng dapat mengambil data secara asinkronus

### Cara implementasi
1. _Refactor_ file dengan memindahkan file ke folder sesuai dengan kegunaannya
2. Mengambil model MyWatchlist dari data JSON pada Tugas 3 dari `https://newappmvt.herokuapp.com/mywatchlist/json/`
3. Membuat model baru MyWatchlist
4. Melakukan pengambilan data JSON
5. Membuat page baru untuk My Watchlist 
6. Menambahkan routing pada drawer
7. Membuat page yang bisa menampilkan detail dari masing-masing elemen pada List MyWatchlist