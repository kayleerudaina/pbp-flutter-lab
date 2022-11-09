# Tugas 7 PBP

## Stateless Widget dan Stateful Widget 

## Widget yang digunakan

## Fungsi dari setState()
fungsi setState() berfungsi untuk

## Perbedaan const dan final
Keyword const dan final sama-sama digunakan agar variabel tersebut tidak bisa diubah setelah dideklarasi

## Cara implementasi
 1. Membuat app flutter baru bernama counter_7 dengan `flutter create counter_7`
 2. Mengubah title aplikasi menjad 'Program Counter'
 3. Membuat fungsi `_decrementCounter` untuk mengurangi nilai dari counter
 4. Menambahkan Button baru yang saat ditekan akan decrement counter dengan menambahkan `onPressed: _decrementCounter` yang memanggil fungsi yang telah dibaut sebelumnya
 5. Mengatur tampilan button dengan widget Padding
 6. Membuat Text 'GENAP' yang akan muncul jika counter bernilai genap dan Text 'GANJIL' jika counter bernilai ganjil
 7. Menambahkan style pada Text
 8. Menghilangkan Button _decrement_ jika counter mencapai 0 dengan conditional untuk Button decrement
