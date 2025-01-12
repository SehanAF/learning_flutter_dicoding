# Functions pada Dart

## Pendahuluan
Functions pada Dart digunakan untuk menghasilkan output berdasarkan input tertentu yang diberikan, selain itu juga sebagai blok kode atau prosedur yang dapat digunakan kembali. Sadar atau tidak, kita telah mengimplementasikan beberapa functions pada kode kita. Semua program Dart dimulai dari fungsi `main()`, yang merupakan contoh fungsi utama yang selalu digunakan. Selain itu, fungsi seperti `print()` juga termasuk fungsi bawaan.

### Contoh Penggunaan Fungsi
```dart
print('Hello Dart!');
```
Fungsi `print()` mengambil nilai string atau objek lainnya dan menampilkannya ke konsol. Dengan menggunakan fungsi ini, kita tidak perlu menulis instruksi low-level untuk mencetak ke konsol.

---

## Deklarasi Fungsi
Untuk mendeklarasikan fungsi, gunakan format berikut:

```dart
returnType functionName(type param1, type param2, ...) {
  return result;
}
```
Setiap fungsi Dart selalu mengembalikan nilai. Jika fungsi tidak mengembalikan nilai, gunakan tipe data khusus `void`.

### Contoh Fungsi Sederhana
```dart
void main() {
  greet();
}

void greet() {
  print('Hello!');
}
```
**Output:**
```
Hello!
```
Dengan menggunakan fungsi seperti `greet()`, kita dapat mempermudah pembaruan kode jika ada perubahan, tanpa harus memperbarui banyak baris kode.

---

## Parameters pada Fungsi
Fungsi dapat menerima input berupa parameter yang dideklarasikan di dalam tanda kurung. Sebuah fungsi bisa memiliki nol, satu, atau lebih parameter.

### Contoh Fungsi dengan Parameter
```dart
void main() {
  greet('Dicoding', 2015);
}

void greet(String name, int bornYear) {
  var age = 2023 - bornYear;
  print('Halo $name! Tahun ini Anda berusia $age tahun');
}
```
**Output:**
```
Halo Dicoding! Tahun ini Anda berusia 8 tahun
```

### Fungsi dengan Return Value
Fungsi dapat mengembalikan nilai menggunakan keyword `return`.

```dart
void main() {
  var firstNumber = 7;
  var secondNumber = 10;
  print('Rata-rata dari $firstNumber & $secondNumber adalah ${average(firstNumber, secondNumber)}');
}

double average(num num1, num num2) {
  return (num1 + num2) / 2;
}
```
**Output:**
```
Rata-rata dari 7 & 10 adalah 8.5
```

---

## Arrow Syntax
Jika fungsi hanya memiliki satu baris kode, kita bisa menggunakan **arrow syntax**.

```dart
double average(num num1, num num2) => (num1 + num2) / 2;
void greeting() => print('Hello');
```

---

## Optional Parameters
Dart mendukung **optional parameters**, yaitu parameter yang tidak wajib diisi.

### Positional Optional Parameters
Parameter opsional dideklarasikan menggunakan tanda kurung siku `[]`.

```dart
void greetNewUser([String name = 'dico', int age = 10, bool isVerified = true]) {
  print('Halo $name, usia Anda $age tahun, verifikasi: $isVerified');
}

void main() {
  greetNewUser();
  greetNewUser('Widy', 20);
  greetNewUser('Widy', 20, true);
}
```
**Output:**
```
Halo dico, usia Anda 10 tahun, verifikasi: true
Halo Widy, usia Anda 20 tahun, verifikasi: true
Halo Widy, usia Anda 20 tahun, verifikasi: true
```

### Named Optional Parameters
Gunakan tanda kurung kurawal `{}` untuk membuat parameter opsional dengan nama.

```dart
void greetNewUser({String? name, int? age, bool? isVerified}) {
  print('Halo $name, usia Anda $age tahun, verifikasi: $isVerified');
}

void main() {
  greetNewUser(name: 'Widy', age: 20, isVerified: true);
  greetNewUser(name: 'Widy', age: 20);
  greetNewUser(age: 20);
  greetNewUser(isVerified: true);
}
```

### Required Parameters
Untuk memastikan parameter wajib diisi, gunakan keyword `required`.

```dart
void greetNewUser({required String name, required int age, bool isVerified = false}) {
  print('Halo $name, usia Anda $age tahun, verifikasi: $isVerified');
}

void main() {
  greetNewUser(name: 'Widy', age: 20);
}
```
**Output:**
```
Halo Widy, usia Anda 20 tahun, verifikasi: false
```

---

## Catatan Penting
- Gunakan fungsi untuk menghindari pengulangan kode.
- Manfaatkan parameter opsional untuk fleksibilitas.
- Kombinasikan **arrow syntax** untuk fungsi sederhana.

Dengan memahami dan menggunakan fungsi secara efektif, kita dapat menulis kode yang lebih bersih, modular, dan mudah untuk dikelola!

