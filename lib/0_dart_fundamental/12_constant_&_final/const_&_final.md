# Constants & Final dalam Dart

Dalam pengembangan aplikasi, sering kali kita membutuhkan variabel untuk menyimpan nilai yang tidak akan pernah berubah selama program berjalan. Dart menyediakan dua mekanisme utama untuk mendeklarasikan nilai yang tidak dapat diubah: **const** dan **final**. Keduanya berguna untuk menjaga integritas data dan menghindari perubahan yang tidak disengaja.

---

## Apa Itu Constants?
**Constants** adalah variabel yang nilainya tetap selama runtime program, artinya nilainya tidak dapat diubah setelah dideklarasikan. Variabel konstan sangat berguna untuk menyimpan nilai tetap seperti konstanta matematika atau parameter aplikasi yang tidak akan berubah.

### Cara Mendeklarasikan Constants
Gunakan keyword `const` untuk mendeklarasikan variabel konstan.

```dart
const pi = 3.14;
```

Dart akan secara otomatis menentukan tipe data dari `pi` sebagai `double`. Namun, jika diperlukan, Anda dapat menambahkan tipe data secara eksplisit.

```dart
const num pi = 3.14;
```

### Contoh Penggunaan Constants
Pada aplikasi kalkulator untuk menghitung luas lingkaran, Anda dapat menggunakan konstanta `pi` sebagai berikut:

```dart
const num pi = 3.14;

void main() {
  var radius = 7;
  print('Luas lingkaran dengan radius $radius = ${calculateCircleArea(radius)}');
}

num calculateCircleArea(num radius) => pi * radius * radius;
```

---

## Apa Itu Final?
**Final** adalah variabel yang nilainya tidak dapat diubah setelah diinisialisasi. Tidak seperti `const`, nilai `final` dapat ditentukan selama runtime (runtime constant).

### Cara Mendeklarasikan Final
Gunakan keyword `final` untuk mendeklarasikan variabel yang nilainya tetap setelah diinisialisasi.

```dart
void main() {
  final firstName = "Achmad";
  final lastName = "Ilham";

  // lastName = 'Angga';  // Akan menghasilkan error karena nilai final tidak dapat diubah

  print('Hello $firstName $lastName');
}
```

Pada contoh di atas, variabel `firstName` dan `lastName` bersifat immutable (tidak dapat diubah).

### Perbedaan Antara Final dan Const
| **Aspek**            | **const**                                  | **final**                    |
|----------------------|-------------------------------------------|-----------------------------|
| **Waktu Evaluasi**   | Compile-time constant                     | Runtime constant            |
| **Inisialisasi**     | Harus diinisialisasi dengan nilai tetap   | Bisa diinisialisasi saat runtime |
| **Penggunaan**       | Digunakan untuk nilai konstan sederhana   | Digunakan untuk nilai yang diketahui saat runtime |

Contoh penggunaan `final` pada runtime:

```dart
void main() {
  final currentTime = DateTime.now();
  print('Waktu sekarang adalah $currentTime');
}
```

Kode di atas tidak bisa menggunakan `const` karena nilai `DateTime.now()` hanya dapat diketahui saat runtime.

---

## Kapan Menggunakan Const dan Final?
1. **Gunakan `const`** jika:
   - Nilai sudah diketahui sebelum runtime.
   - Nilai bersifat universal dan tidak bergantung pada input atau kondisi program.
   
   Contoh:
   ```dart
   const gravity = 9.8;
   const pi = 3.14;
   ```

2. **Gunakan `final`** jika:
   - Nilai hanya dapat diketahui selama runtime.
   - Anda ingin mencegah perubahan nilai setelah inisialisasi.
   
   Contoh:
   ```dart
   final userName = getUserName();
   final currentTime = DateTime.now();
   ```

---

## Keuntungan Menggunakan Const dan Final
- **Keamanan**: Mencegah perubahan nilai secara tidak sengaja.
- **Kinerja**: Konstanta `const` lebih efisien dalam penggunaan memori.
- **Kemudahan Perawatan**: Mengurangi risiko bug dengan memastikan nilai tidak berubah.

Dengan memanfaatkan `const` dan `final`, Anda dapat meningkatkan keandalan kode dan menghindari masalah yang terkait dengan perubahan nilai variabel yang tidak diinginkan. Selalu gunakan `const` jika memungkinkan untuk performa yang lebih baik, dan gunakan `final` jika nilai hanya diketahui pada runtime.

