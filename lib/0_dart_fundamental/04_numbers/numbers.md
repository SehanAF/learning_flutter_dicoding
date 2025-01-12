### Numbers (Tipe Data Angka)

Dalam Dart, tipe data angka dikelompokkan ke dalam dua jenis utama, yaitu **int** (integer) dan **double**. Kedua tipe data ini digunakan untuk merepresentasikan angka dalam berbagai konteks, seperti perhitungan matematis, logika aplikasi, atau manipulasi data numerik lainnya.

---

#### **Tipe Data Integer (int)**
Integer adalah bilangan bulat yang tidak memiliki nilai desimal. Nilai bilangan ini memiliki batasan tergantung pada platform yang digunakan.  
- Pada **Dart VM**, integer memiliki rentang nilai dari **-2^63** hingga **2^63 - 1**.  
- Jika Dart dikompilasi ke **JavaScript**, integer memiliki rentang dari **-2^53** hingga **2^53 - 1**.  

Contoh variabel integer:  
```dart
var year = 2025; // Integer dalam desimal
var hexValue = 0xFF; // Integer dalam heksadesimal
```

Karena integer hanya mencakup bilangan bulat, angka seperti 1, 0, -5, dan 1024 termasuk dalam kategori ini. Bilangan dengan nilai desimal (misalnya 1.5) **tidak dapat** direpresentasikan dengan tipe integer.

---

#### **Tipe Data Double (double)**
Double digunakan untuk menyimpan bilangan desimal atau bilangan dengan titik desimal. Tipe data ini berukuran **64 bit** dan digunakan untuk perhitungan yang lebih presisi.  

Contoh variabel double:  
```dart
var pi = 3.14159; // Bilangan desimal
var percentage = 99.9; // Persentase dalam bentuk double
```

Sejak **Dart versi 2.1**, angka desimal dapat didefinisikan tanpa menambahkan angka di belakang koma secara eksplisit. Dart secara otomatis menganggap bilangan tersebut sebagai double.  
```dart
double withoutDecimal = 7; // Secara otomatis dianggap 7.0
```

---

#### **Tipe Data num**
Tipe data **num** adalah induk dari tipe **int** dan **double**. Artinya, variabel bertipe **num** dapat menyimpan nilai bilangan bulat maupun bilangan desimal. Tipe data ini berguna ketika kita tidak yakin apakah angka yang digunakan merupakan integer atau double.  

Contoh:  
```dart
num flexibleNumber = 10; // Nilai awal berupa integer
flexibleNumber = 3.14;  // Dapat diubah menjadi double
```

---

#### **Operasi Dasar pada Numbers**
Tipe data angka mendukung berbagai operasi dasar, seperti:
- Penjumlahan (`+`)
- Pengurangan (`-`)
- Perkalian (`*`)
- Pembagian (`/`)
- Modulo (`%`)  

Selain itu, Dart menyediakan **fungsi bawaan** untuk manipulasi angka, seperti:
- **`abs()`**: Mengembalikan nilai absolut (nilai positif).  
- **`ceil()`**: Membulatkan angka ke atas (ke integer terdekat).  
- **`floor()`**: Membulatkan angka ke bawah (ke integer terdekat).  
- **`toStringAsFixed(n)`**: Membulatkan angka menjadi string dengan `n` angka desimal.  

Contoh:  
```dart
var number = -12.345;
print(number.abs()); // Output: 12.345
print(number.ceil()); // Output: -12
print(number.floor()); // Output: -13
print(number.toStringAsFixed(2)); // Output: '-12.35'
```

Jika Anda membutuhkan operasi matematika lebih lanjut, Anda bisa menggunakan library **`dart:math`**.

---

#### **Konversi Tipe Data**
Dart memungkinkan konversi antar tipe data angka maupun dari dan ke tipe string. Ini sangat membantu dalam mengolah data dari input pengguna atau API.

1. **String → int**
   ```dart
   var age = int.parse('25');
   print(age.runtimeType); // Output: int
   ```

2. **String → double**
   ```dart
   var price = double.parse('19.99');
   print(price.runtimeType); // Output: double
   ```

3. **int → String**
   ```dart
   var count = 100.toString();
   print(count.runtimeType); // Output: String
   ```

4. **double → String**
   ```dart
   var pi = 3.14159.toStringAsFixed(3); // Membulatkan hingga 3 angka desimal
   print(pi); // Output: '3.142'
   ```

---

#### **Contoh Program**
Berikut adalah contoh program sederhana yang menunjukkan berbagai operasi dan konversi tipe data angka:  
```dart
void main() {
  // Deklarasi variabel angka
  int quantity = 10;
  double price = 15.75;

  // Operasi matematika
  double total = quantity * price;
  print('Total harga: $total');

  // Konversi tipe data
  String totalAsString = total.toStringAsFixed(2);
  print('Total harga (string): $totalAsString');

  // Input pengguna (String → int)
  var input = '2025';
  int year = int.parse(input);
  print('Tahun: $year');
}
```

---

#### **Catatan Penting**
- Gunakan tipe data yang sesuai untuk mengoptimalkan performa aplikasi. Misalnya, gunakan **int** jika angka yang digunakan tidak memiliki nilai desimal.  
- Saat mengolah input pengguna, selalu periksa validitas data untuk menghindari kesalahan.  
- Manfaatkan **type inference** Dart untuk menulis kode yang lebih bersih, tetapi tetap eksplisit jika diperlukan untuk debugging.
