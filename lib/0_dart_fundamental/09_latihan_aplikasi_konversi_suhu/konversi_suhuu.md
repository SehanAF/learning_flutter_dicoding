# Panduan Pembuatan Aplikasi Konversi Suhu

## Pendahuluan
Saat menghadiri konferensi developer di negara seperti Amerika Serikat, mungkin Anda akan menemui standar suhu Fahrenheit. Untuk memudahkan aktivitas, Anda dapat membuat aplikasi sederhana yang mengonversi suhu dari Fahrenheit ke Celsius, atau bahkan ke skala suhu lainnya seperti Reamur dan Kelvin.

Panduan ini akan menjelaskan langkah-langkah membuat aplikasi konversi suhu dengan detail tambahan, sehingga Anda juga dapat memperluas fungsionalitas aplikasi di masa depan.

---

## Alur Konversi Suhu

1. **Menerima Input:** Menerima input suhu dalam Fahrenheit dari pengguna.
2. **Melakukan Konversi:** Melakukan konversi suhu menggunakan rumus.
3. **Menampilkan Hasil:** Menampilkan hasil konversi ke layar.

Berikut adalah rumus konversi suhu yang perlu diketahui:
- **Fahrenheit ke Celsius:**
  \[(F - 32) \times \frac{5}{9}\]
- **Fahrenheit ke Reamur:**
  \[(F - 32) \times \frac{4}{9}\]
- **Fahrenheit ke Kelvin:**
  \[(F - 32) \times \frac{5}{9} + 273.15\]

---

## Langkah-Langkah Pembuatan

### 1. Membuat Proyek Baru
Buat proyek baru di IDE Anda, lalu beri nama proyek, misalnya `KonversiSuhu`.

### 2. Menyiapkan Input Pengguna
Hapus semua kode yang ada pada file `main.dart`, lalu tambahkan kode berikut:

```dart
import 'dart:io';

void main() {
  stdout.write('Masukkan suhu dalam Fahrenheit: ');
  var fahrenheit = num.parse(stdin.readLineSync()!);

  // Konversi ke berbagai skala suhu
  var celsius = (fahrenheit - 32) * 5 / 9;
  var reamur = (fahrenheit - 32) * 4 / 9;
  var kelvin = (fahrenheit - 32) * 5 / 9 + 273.15;

  // Menampilkan hasil konversi
  print('\nHasil Konversi:');
  print('$fahrenheit derajat Fahrenheit = $celsius derajat Celsius');
  print('$fahrenheit derajat Fahrenheit = $reamur derajat Reamur');
  print('$fahrenheit derajat Fahrenheit = $kelvin derajat Kelvin');
}
```

Kode di atas:
1. Mengimpor pustaka `dart:io` untuk membaca input dari pengguna.
2. Meminta pengguna memasukkan suhu dalam Fahrenheit.
3. Menghitung suhu dalam Celsius, Reamur, dan Kelvin menggunakan rumus konversi.
4. Menampilkan hasil konversi ke layar.

### 3. Menjalankan Program
Jalankan program Anda dan masukkan nilai suhu dalam Fahrenheit untuk menguji apakah konversi berjalan dengan benar. Contohnya:

**Input:**
```
Masukkan suhu dalam Fahrenheit: 98.6
```

**Output:**
```
Hasil Konversi:
98.6 derajat Fahrenheit = 37.0 derajat Celsius
98.6 derajat Fahrenheit = 29.6 derajat Reamur
98.6 derajat Fahrenheit = 310.15 derajat Kelvin
```

---

## Challenge: Dukungan Konversi Dua Arah
Sebagai tantangan tambahan, kembangkan aplikasi agar dapat mengonversi suhu dari berbagai skala ke skala lainnya. Contoh:

- **Celsius ke Fahrenheit:**
  \[C \times \frac{9}{5} + 32\]
- **Celsius ke Reamur:**
  \[C \times \frac{4}{5}\]
- **Celsius ke Kelvin:**
  \[C + 273.15\]

Berikut adalah template untuk memperluas aplikasi:

```dart
void main() {
  stdout.write('Masukkan skala suhu asal (F/C/R/K): ');
  var asal = stdin.readLineSync()!.toUpperCase();

  stdout.write('Masukkan nilai suhu: ');
  var nilai = num.parse(stdin.readLineSync()!);

  switch (asal) {
    case 'F':
      print('Dalam Celsius: ${(nilai - 32) * 5 / 9}');
      print('Dalam Reamur: ${(nilai - 32) * 4 / 9}');
      print('Dalam Kelvin: ${(nilai - 32) * 5 / 9 + 273.15}');
      break;
    case 'C':
      print('Dalam Fahrenheit: ${(nilai * 9 / 5) + 32}');
      print('Dalam Reamur: ${nilai * 4 / 5}');
      print('Dalam Kelvin: ${nilai + 273.15}');
      break;
    case 'R':
      print('Dalam Fahrenheit: ${(nilai * 9 / 4) + 32}');
      print('Dalam Celsius: ${nilai * 5 / 4}');
      print('Dalam Kelvin: ${(nilai * 5 / 4) + 273.15}');
      break;
    case 'K':
      print('Dalam Fahrenheit: ${(nilai - 273.15) * 9 / 5 + 32}');
      print('Dalam Celsius: ${nilai - 273.15}');
      print('Dalam Reamur: ${(nilai - 273.15) * 4 / 5}');
      break;
    default:
      print('Skala suhu tidak dikenal!');
  }
}
```

Dengan menambahkan fitur ini, aplikasi Anda menjadi lebih fleksibel dan mendukung berbagai kebutuhan konversi suhu.

---

## Kesimpulan
Dengan memanfaatkan dasar konversi suhu ini, Anda dapat membuat aplikasi yang berguna untuk berbagai skenario. Anda juga dapat memperluas aplikasi ini menjadi alat multi-fungsi untuk mendukung konversi dua arah antar berbagai skala suhu. Selamat mencoba!

