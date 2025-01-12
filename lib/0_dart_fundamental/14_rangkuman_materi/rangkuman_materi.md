# Rangkuman Materi Pemrograman Dart

Selamat! Anda telah menyelesaikan materi fundamental dalam pemrograman dengan Dart. Sebelum melanjutkan ke sub-modul berikutnya, mari kita rangkum poin-poin penting yang telah Anda pelajari:

## 1. **Komentar (Comments)**
Komentar digunakan untuk memberikan penjelasan atau dokumentasi terhadap kode. Komentar ini akan diabaikan oleh compiler, sehingga tidak akan memengaruhi alur program. Ada tiga jenis komentar dalam Dart:

- **Single-line comment**: Komentar satu baris yang diawali dengan `//`.
  ```dart
  // Ini adalah komentar satu baris
  ```

- **Multi-line comment**: Komentar yang mencakup beberapa baris, diawali dengan `/*` dan diakhiri dengan `*/`.
  ```dart
  /*
  Ini adalah komentar
  beberapa baris
  */
  ```

- **Documentation comment**: Digunakan untuk mendokumentasikan kode, diawali dengan `///` (satu baris) atau `/** ... **/` (beberapa baris).
  ```dart
  /// Ini adalah dokumentasi fungsi
  void myFunction() {
    // kode fungsi
  }
  ```

## 2. **Variabel dan Tipe Data**
Variabel digunakan untuk menyimpan nilai. Dalam Dart, Anda dapat mendeklarasikan variabel secara implisit menggunakan keyword `var` atau secara eksplisit dengan menentukan tipe datanya. Berikut tipe data yang didukung oleh Dart:

- **int**: Untuk bilangan bulat.
  ```dart
  int age = 25;
  ```

- **double**: Untuk bilangan desimal.
  ```dart
  double price = 19.99;
  ```

- **num**: Untuk bilangan bulat maupun desimal.
  ```dart
  num value = 42.5;
  ```

- **bool**: Untuk nilai logika, yaitu `true` atau `false`.
  ```dart
  bool isActive = true;
  ```

- **String**: Untuk teks atau karakter.
  ```dart
  String name = "Dart";
  ```

- **Collection**: Untuk menyimpan beberapa objek sekaligus, misalnya dalam bentuk List, Set, atau Map.
  ```dart
  List<String> fruits = ["Apple", "Banana", "Cherry"];
  ```

- **dynamic**: Untuk variabel yang dapat menyimpan nilai dengan tipe data apapun.
  ```dart
  dynamic anything = 42; // Bisa berubah menjadi tipe lain
  ```

## 3. **Operator Logika**
Operator logika digunakan untuk menggabungkan atau memodifikasi pernyataan boolean:

- **OR (`||`)**: Mengembalikan `true` jika salah satu ekspresi bernilai `true`.
  ```dart
  bool result = true || false; // true
  ```

- **AND (`&&`)**: Mengembalikan `true` jika semua ekspresi bernilai `true`.
  ```dart
  bool result = true && false; // false
  ```

- **NOT (`!`)**: Membalik nilai boolean.
  ```dart
  bool result = !true; // false
  ```

## 4. **Fungsi (Functions)**
Fungsi adalah blok kode yang menerima input (parameter), melakukan operasi, dan mengembalikan output. Contoh:

```dart
int addNumbers(int a, int b) {
  return a + b;
}

void main() {
  print(addNumbers(3, 4)); // Output: 7
}
```

### Parameter Default dan Opsional
Dart mendukung parameter opsional dan default:

- **Opsional dengan tanda kurung siku**:
  ```dart
  void greet(String name, [String? title]) {
    print("Hello, $title $name");
  }
  ```

- **Default value**:
  ```dart
  void greet(String name, [String title = "Mr."]) {
    print("Hello, $title $name");
  }
  ```

## 5. **Konstanta (const) dan Final**

- **Const**: Nilainya ditentukan saat kompilasi dan tidak dapat diubah.
  ```dart
  const pi = 3.14;
  ```

- **Final**: Nilainya ditentukan saat runtime tetapi tidak dapat diubah setelah diinisialisasi.
  ```dart
  final currentTime = DateTime.now();
  ```

Gunakan `const` untuk nilai konstan yang sudah diketahui sebelum program dijalankan, dan `final` jika nilai diketahui saat runtime.

## 6. **Null Safety**
Fitur Null Safety membantu menghindari Null Pointer Exception (NPE) dengan membatasi nilai null hanya pada variabel nullable.

- **Non-nullable variable**:
  ```dart
  int age = 25; // Tidak boleh null
  ```

- **Nullable variable**:
  ```dart
  String? favoriteFood = null; // Boleh null
  ```

- **Pengecekan Null**:
  ```dart
  void greet(String? name) {
    if (name == null) {
      print("Hello, Guest!");
    } else {
      print("Hello, $name!");
    }
  }
  ```

- **Bang Operator (`!`)**: Menjamin bahwa variabel tidak null.
  ```dart
  String? name = "Dart";
  print(name!); // Output: Dart
  ```

## 7. **Best Practices**
- Gunakan komentar untuk menjelaskan kode yang kompleks.
- Pilih tipe data yang sesuai untuk efisiensi dan keterbacaan.
- Gunakan `const` dan `final` untuk variabel yang tidak perlu diubah.
- Pastikan memanfaatkan Null Safety untuk mencegah crash akibat null.

Selamat melanjutkan ke sub-modul berikutnya dan semoga sukses dalam perjalanan belajar pemrograman Anda! 🎉

