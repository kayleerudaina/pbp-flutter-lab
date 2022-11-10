# Tugas 7 PBP

## Stateless Widget dan Stateful Widget 
- Stateless Widget adalah widget yang tidak dapat diubah atau tidak bisa diubah. Contohnya seperti Icon, Icon Button, atau Text
- Stateful Widget merupakan widget yang dapat diubah dari interaksi pengguna. Contohnya seperti Checkbox, Radio, atau Form.

## Widget yang digunakan
- Scaffold
- Text
- Padding
- FloatingActionButton
- Column 
- Row
- Center

## Fungsi dari setState()
Fungsi setState() digunakan untuk _stateful widget_ dan berfungsi untuk update _state_ dari suatu komponen. Setelah setState(), UI dari widget yang diubah statenya akan berubah tampilannya.

## Perbedaan const dan final
Keyword const dan final sama-sama digunakan untuk membuat suatu variabel bersifat _immutable_. Perbedaannya, `const` mengharuskan variable diinisialisasi saat kompilasi, bersifat konstan dan secara langsung pada saat kompilasi. Sedangkan, `final` tidak harus memiliki suaut variable secara langsung saat kompilasi

## Cara implementasi
 1. Membuat app flutter baru bernama counter_7 dengan `flutter create counter_7`
 2. Mengubah title aplikasi menjad 'Program Counter'
 3. Membuat fungsi `_decrementCounter` untuk mengurangi nilai dari counter
 4. Menambahkan Button baru yang saat ditekan akan decrement counter dengan menambahkan `onPressed: _decrementCounter` yang memanggil fungsi yang telah dibaut sebelumnya
 5. Mengatur tampilan button dengan widget Padding
 6. Membuat Text 'GENAP' yang akan muncul jika counter bernilai genap dan Text 'GANJIL' jika counter bernilai ganjil
 7. Menambahkan style pada Text
 8. Menghilangkan button _decrement_ jika counter mencapai 0 dengan conditional
