# Break dan Continue dalam Pemrograman Dart

Dalam pengembangan aplikasi, sering kali kita memerlukan mekanisme untuk menghentikan perulangan lebih awal atau melanjutkan ke iterasi berikutnya tanpa mengeksekusi kode yang tersisa dalam iterasi saat ini. Kata kunci **`break`** dan **`continue`** di Dart digunakan untuk keperluan ini. Mari kita bahas lebih lanjut.

---

## **Break**
### Penggunaan
Kata kunci **`break`** digunakan untuk menghentikan proses perulangan sebelum selesai. Contoh kasus penggunaan break adalah ketika kita mencari nilai tertentu dalam sebuah koleksi data. Setelah nilai tersebut ditemukan, kita tidak perlu melanjutkan proses iterasi.

### Contoh Implementasi
Misalkan Anda memiliki daftar bilangan prima di bawah 100 dan ingin mencari posisi suatu bilangan prima tertentu:

```dart
void main() {
  // Daftar bilangan prima di bawah 100
  var primeNumbers = [
    2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 73, 79, 83, 89, 97
  ];

  var searchNumber = 13;
  print('Bilangan prima di antara 1-100: $searchNumber');

  for (int i = 0; i < primeNumbers.length; i++) {
    if (searchNumber == primeNumbers[i]) {
      print('$searchNumber adalah bilangan prima ke-${i + 1}');
      break; // Menghentikan iterasi setelah bilangan ditemukan
    }
    print('$searchNumber != ${primeNumbers[i]}');
  }
}
```

### Output:
```text
Bilangan prima di antara 1-100: 13
13 != 2
13 != 3
13 != 5
13 != 7
13 != 11
13 adalah bilangan prima ke-6
```

Pada kode di atas, iterasi dihentikan segera setelah angka 13 ditemukan.

---

## **Continue**
### Penggunaan
Kata kunci **`continue`** digunakan untuk melewatkan iterasi saat ini dan langsung melanjutkan ke iterasi berikutnya. Hal ini berguna jika Anda ingin melewati kondisi tertentu dalam proses perulangan.

### Contoh Implementasi
Sebagai contoh, kita ingin menampilkan angka 1 sampai 10 tetapi melewatkan angka yang merupakan kelipatan dari 3:

```dart
void main() {
  for (int i = 1; i <= 10; i++) {
    if (i % 3 == 0) {
      continue; // Melewati angka kelipatan 3
    }
    print(i);
  }
}
```

### Output:
```text
1
2
4
5
7
8
10
```

Pada kode di atas, iterasi dilewati setiap kali angka merupakan kelipatan dari 3.

---

## **Perbedaan Utama antara Break dan Continue**
| **Kriteria**        | **Break**                                   | **Continue**                        |
|---------------------|---------------------------------------------|-------------------------------------|
| **Fungsi**          | Menghentikan seluruh perulangan            | Melewatkan iterasi saat ini         |
| **Eksekusi Selanjutnya** | Tidak melanjutkan iterasi berikutnya         | Melanjutkan iterasi berikutnya      |
| **Contoh Kasus**    | Menghentikan pencarian saat data ditemukan | Melewatkan kondisi tertentu         |

---

## **Infinite Loop dan Break**
Break sering kali digunakan untuk menghindari **infinite loop** (perulangan tanpa akhir). Misalnya, program berikut menggunakan perulangan **while** untuk mencari bilangan genap pertama yang lebih besar dari 100:

```dart
void main() {
  int number = 101;

  while (true) { // Perulangan tanpa kondisi batas
    if (number % 2 == 0) {
      print('Bilangan genap pertama setelah 100 adalah $number');
      break; // Menghentikan perulangan ketika kondisi terpenuhi
    }
    number++;
  }
}
```

### Output:
```text
Bilangan genap pertama setelah 100 adalah 102
```

---

## **Latihan**
### Tantangan 1: Menggunakan Break
Buatlah program yang mencari bilangan ganjil pertama dalam daftar bilangan berikut yang lebih besar dari 50. Hentikan iterasi setelah bilangan ditemukan.

### Tantangan 2: Menggunakan Continue
Buatlah program yang mencetak bilangan dari 1 hingga 20 tetapi melewatkan bilangan kelipatan 4.

Selamat mencoba!

