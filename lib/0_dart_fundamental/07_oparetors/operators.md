# Panduan Lengkap: Operators di Dart

Dalam pemrograman, **operator** adalah simbol atau kata kunci yang digunakan untuk melakukan operasi tertentu pada data (operands). Istilah ini terinspirasi dari matematika, namun dalam pemrograman, cakupannya lebih luas. Di Dart, operator memberikan instruksi kepada komputer untuk menjalankan berbagai jenis operasi, seperti penugasan nilai, perhitungan aritmatika, perbandingan, hingga manipulasi logika.

## Operator Assignment (Penugasan)
Operator **assignment** digunakan untuk menetapkan nilai ke sebuah variabel. Contoh:

```dart
var firstNumber = 4; // Operator assignment '='
```

Kode di atas menginstruksikan komputer untuk menyimpan nilai `4` ke dalam variabel `firstNumber`.

---

## Operator Aritmatika
Operator ini digunakan untuk melakukan operasi matematika dasar seperti penjumlahan, pengurangan, perkalian, dan pembagian. Berikut adalah daftar operator aritmatika yang didukung oleh Dart:

| Operator | Deskripsi                        |
|----------|----------------------------------|
| `+`      | Penjumlahan                     |
| `-`      | Pengurangan                     |
| `*`      | Perkalian                       |
| `/`      | Pembagian (menghasilkan `double`)|
| `~/`     | Pembagian (menghasilkan `int`)  |
| `%`      | Modulo (sisa hasil bagi)        |

### Contoh Penggunaan:
```dart
void main() {
  print(5 + 2);  // Output: 7
  print(5 - 2);  // Output: 3
  print(5 * 2);  // Output: 10
  print(5 / 2);  // Output: 2.5
  print(5 ~/ 2); // Output: 2
  print(5 % 2);  // Output: 1
}
```

### Catatan Penting:
1. **Prioritas Operasi:** Sama seperti matematika, operator perkalian dan pembagian memiliki prioritas lebih tinggi dibandingkan penjumlahan dan pengurangan.
   ```dart
   print(2 + 4 * 2); // Output: 10
   ```
2. Gunakan tanda kurung `( )` untuk mengatur prioritas operasi.
   ```dart
   print((1 + 3) * (4 - 2)); // Output: 8
   ```

### Increment dan Decrement
Dart mendukung operator increment (`++`) dan decrement (`--`) untuk menambah atau mengurangi nilai variabel sebesar 1.
```dart
var a = 0, b = 5;
a++;
b--;
print(a); // Output: 1
print(b); // Output: 4
```

Selain itu, ada cara singkat untuk operasi aritmatika dengan penugasan:
```dart
var c = 2;
c += 3; // Sama dengan c = c + 3
print(c); // Output: 5
```

Operator ini juga bisa digunakan untuk operasi lain:
```dart
var d = 4;
d *= 2; // Sama dengan d = d * 2
print(d); // Output: 8
```

---

## Operator Perbandingan
Operator perbandingan digunakan untuk membandingkan dua nilai dan akan mengembalikan hasil dalam bentuk boolean (`true` atau `false`).

| Operator | Deskripsi              |
|----------|------------------------|
| `==`     | Sama dengan            |
| `!=`     | Tidak sama dengan      |
| `>`      | Lebih besar dari       |
| `<`      | Lebih kecil dari       |
| `>=`     | Lebih besar atau sama  |
| `<=`     | Lebih kecil atau sama  |

### Contoh Penggunaan:
```dart
void main() {
  if (2 <= 3) {
    print('Ya, 2 kurang dari atau sama dengan 3');
  } else {
    print('Anda salah');
  }
}
```

**Output:**
```
Ya, 2 kurang dari atau sama dengan 3
```

---

## Operator Logika
Operator logika digunakan untuk menggabungkan atau memodifikasi ekspresi boolean.

| Operator | Deskripsi                                  |
|----------|--------------------------------------------|
| `&&`     | AND (Semua kondisi harus `true`)           |
| `||`     | OR (Salah satu kondisi `true` sudah cukup) |
| `!`      | NOT (Membalik nilai boolean)               |

### Contoh Penggunaan:
```dart
void main() {
  // Contoh AND
  if (2 < 3 && 2 + 4 == 5) {
    print('Semua kondisi benar');
  } else {
    print('Ada kondisi yang salah');
  }

  // Contoh OR
  if (false || true || false) {
    print('Salah satu nilai adalah true');
  } else {
    print('Semua nilai adalah false');
  }
}
```

**Output:**
```
Ada kondisi yang salah
Salah satu nilai adalah true
```

---

## Kesimpulan
Operator adalah elemen dasar yang sangat penting dalam pemrograman. Pemahaman yang baik tentang cara kerja operator akan membantu Anda menulis kode yang lebih efisien dan dapat diandalkan. Dalam Dart, operator mencakup berbagai kategori, seperti:
- **Assignment** untuk menetapkan nilai.
- **Aritmatika** untuk operasi matematika.
- **Perbandingan** untuk membandingkan nilai.
- **Logika** untuk manipulasi boolean.

Pastikan Anda berlatih menggunakan operator ini dalam berbagai skenario agar lebih terbiasa dan memahami penggunaannya.