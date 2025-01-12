# Null Safety

## Pengantar Null Safety
Sejak versi 2.12, Dart menghadirkan fitur **Null Safety** untuk membantu mencegah kesalahan yang disebabkan oleh nilai null. Null Safety adalah fitur yang membuat program lebih aman dengan memastikan bahwa nilai **null** hanya digunakan ketika memang diperlukan.

### Apa itu Nilai Null?
Dalam Dart, variabel digunakan untuk menyimpan nilai tertentu. Nilai null adalah nilai "tidak ada" yang terjadi ketika variabel tidak diinisialisasi atau secara eksplisit diberikan nilai null.

```dart
String name = 'John Doe';
int age = 23;
String? favoriteFood = null; // Variabel nullable
```

Namun, nilai null dapat menyebabkan kesalahan yang dikenal sebagai **Null Pointer Exception (NPE)**, yaitu ketika program mencoba mengakses sesuatu yang tidak ada. Null Safety mencegah hal ini dengan memastikan nilai null ditangani dengan benar.

## Memulai dengan Null Safety
Untuk menggunakan fitur Null Safety, pastikan Anda menggunakan Dart versi 2.12 atau lebih baru. Konfigurasikan versi SDK di file `pubspec.yaml` sebagai berikut:

```yaml
environment:
  sdk: '>=2.12.0 <3.0.0'
```

Dengan Null Safety:
1. **Variabel secara default tidak dapat bernilai null** (non-nullable).
2. Jika variabel bisa bernilai null, Anda harus mendeklarasikannya sebagai nullable dengan menambahkan tanda tanya `?`.

```dart
int age = null;               // Kesalahan kompilasi
String? favoriteFood = null; // Variabel nullable
```

## Manfaat Null Safety
- **Keamanan:** Kesalahan terkait null dapat ditemukan lebih awal saat kompilasi.
- **Konsistensi:** Membantu developer mengetahui variabel mana yang dapat bernilai null.
- **Meningkatkan performa:** Mengurangi pemeriksaan nilai null yang tidak perlu.

## Null Safety pada Parameter Fungsi
Dengan Null Safety, argumen nullable tidak dapat digunakan pada parameter non-nullable. Hal ini akan menghasilkan kesalahan saat kompilasi.

### Contoh
```dart
void main() {
  String? favoriteFood = null;
  buyAMeal(favoriteFood); // Kesalahan kompilasi
}

void buyAMeal(String favoriteFood) {
  print('I bought a $favoriteFood');
}
```

Untuk mengatasi ini, Anda dapat:

### 1. Mengubah Parameter Menjadi Nullable
Ubah parameter fungsi agar menerima nilai null dan tambahkan pengecekan null:

```dart
void buyAMeal(String? favoriteFood) {
  if (favoriteFood == null) {
    print('Bought Nasi Goreng');
  } else {
    print('Bought $favoriteFood');
  }
}
```

### 2. Menggunakan Bang Operator (!)
Jika Anda yakin variabel tidak bernilai null, gunakan bang operator `!` untuk memaksa konversi ke non-nullable:

```dart
void main() {
  String? favoriteFood = 'Mie Ayam';
  buyAMeal(favoriteFood!); // Menjamin bahwa nilai tidak null
}

void buyAMeal(String favoriteFood) {
  print('I bought a $favoriteFood');
}
```
> **Catatan:** Penggunaan bang operator harus hati-hati, karena jika variabel bernilai null, program akan crash.

## Null Safety pada Variabel
Jika Anda ingin variabel memiliki nilai default saat null, gunakan operator `??` untuk memberikan fallback value:

```dart
void main() {
  String? favoriteFood;
  print(favoriteFood ?? 'Nasi Goreng'); // Output: Nasi Goreng
}
```

Anda juga dapat menginisialisasi variabel nullable dengan cara aman menggunakan null-aware assignment (`??=`):

```dart
void main() {
  String? favoriteFood;
  favoriteFood ??= 'Bakso';
  print(favoriteFood); // Output: Bakso
}
```

## Kombinasi Null Safety dengan Late Initialization
Terkadang, Anda ingin mendeklarasikan variabel tanpa segera menginisialisasinya tetapi tetap memastikan nilainya tidak null saat diakses. Gunakan keyword `late`:

```dart
late String favoriteFood;

void main() {
  favoriteFood = 'Soto';
  print(favoriteFood); // Output: Soto
}
```

> **Catatan:** Jika variabel late diakses sebelum diinisialisasi, program akan melempar kesalahan.

## Null Assertion pada Konstruktor
Saat menggunakan Null Safety dengan objek, Anda bisa memastikan bahwa nilai yang nullable tidak akan null dengan null assertion (`!`) pada konstruktor:

```dart
class Person {
  String? name;

  Person(String? name) : name = name!;
}

void main() {
  var person = Person('John');
  print(person.name); // Output: John
}
}
```

## Kesimpulan
Fitur Null Safety di Dart adalah alat yang sangat penting untuk membantu developer menulis kode yang lebih aman dan bebas dari kesalahan terkait null. Dengan memahami cara kerja nullable dan non-nullable, serta memanfaatkan berbagai alat seperti null-aware operator, bang operator, dan late initialization, Anda dapat mengoptimalkan kualitas kode Anda.

