# Properties dan Methods

Dalam pemrograman berorientasi objek (OOP), kita menggunakan *properties* dan *methods* untuk merepresentasikan atribut dan perilaku dari sebuah objek. Berikut adalah penjelasan lengkap mengenai konsep ini dalam Dart:

## Properties

*Properties* adalah variabel yang dideklarasikan di dalam sebuah *class*. Mereka merepresentasikan atribut dari objek yang dibuat berdasarkan *class* tersebut.

### Deklarasi Properties

```dart
class Animal {
  String _name = '';
  int _age = 0;
  double _weight = 0;
}
```

### Enkapsulasi

Dalam OOP, terdapat konsep enkapsulasi untuk menyembunyikan informasi di dalam objek. Dart tidak memiliki *visibility modifier* seperti `public` atau `private`, tetapi Anda dapat membuat atribut bersifat *private* dengan menambahkan tanda underscore (`_`) sebelum nama properti.

Contoh:

```dart
String _name = '';
int _age = 0;
double _weight = 0;
```

Ketika properti diberi awalan `_`, properti tersebut hanya bisa diakses dalam berkas atau *library* yang sama.

### Mengakses Properti Private

Jika Anda ingin mengakses properti *private* dari luar, gunakan *getter* dan *setter*. *Getter* digunakan untuk membaca nilai, sedangkan *setter* digunakan untuk mengubah nilai.

#### Contoh Getter dan Setter:

```dart
// Setter
set name(String value) {
  _name = value;
}

// Getter
double get weight => _weight;
```

Dengan menggunakan *getter* dan *setter*, Anda dapat mengontrol bagaimana properti diakses dan dimodifikasi dari luar *class*.

## Methods

*Methods* adalah fungsi yang dideklarasikan di dalam sebuah *class*. Mereka merepresentasikan perilaku atau tindakan yang dapat dilakukan oleh objek.

### Deklarasi Methods

Contoh implementasi *methods* dalam *class* `Animal`:

```dart
class Animal {
  String _name = '';
  int _age = 0;
  double _weight = 0;

  Animal(this._name, this._age, this._weight);

  void eat() {
    print('🍪 $_name is eating.');
    _weight = _weight + 0.2;
  }

  void sleep() {
    print('💤 $_name is sleeping.');
  }

  void poop() {
    print('💩 $_name is pooping.');
    _weight = _weight - 0.1;
  }
}
```

### Menggunakan Properti dan Methods

Untuk menggunakan properti dan *methods* dalam sebuah *class*, Anda perlu membuat objek dari *class* tersebut.

#### Contoh Penggunaan:

```dart
import 'animal.dart';

void main() {
  var dicodingCat = Animal('Gray', 2, 4.2);

  dicodingCat.eat();
  dicodingCat.poop();

  print('Weight: ${dicodingCat.weight} kg');
}
```

### Output Program

Ketika kode di atas dijalankan, berikut adalah hasil yang akan ditampilkan di konsol:

```
Gray is eating.
Gray is pooping.
Weight: 4.300000000000001 kg
```

### Keuntungan Menggunakan Methods

- **Abstraksi**: Menyembunyikan detail implementasi.
- **Enkapsulasi**: Mengontrol akses ke properti.
- **Reusability**: Dapat digunakan kembali dalam berbagai konteks.

## Kesimpulan

- *Properties* dan *methods* adalah komponen utama dalam sebuah *class*.
- Properti merepresentasikan atribut, sementara *methods* merepresentasikan perilaku objek.
- Gunakan *getter* dan *setter* untuk mengakses properti *private*.
- Metode dapat digunakan untuk memanipulasi properti secara aman dan sesuai dengan logika bisnis yang diinginkan.

Dengan memahami dan menggunakan konsep ini dengan baik, Anda dapat membuat program yang lebih terstruktur, fleksibel, dan mudah dipelihara.

