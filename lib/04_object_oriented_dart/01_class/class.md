# Pengenalan Class dalam Dart

Class adalah salah satu fitur utama dari Object-Oriented Programming (OOP) yang digunakan untuk membuat blueprint objek. Dengan menggunakan class, kita dapat mendefinisikan **atribut** (properties) dan **perilaku** (methods) dari objek yang akan dibuat. Class memungkinkan kita untuk mengorganisir kode secara modular dan meningkatkan keterbacaan.

---

## Apa itu Class?

Class adalah kerangka kerja yang mendeskripsikan sifat (attribute) dan perilaku (behaviour) dari sebuah objek. Sebagai contoh, class **Animal** dapat memiliki:

- **Atribut:**
  - `String name`: Nama dari hewan.
  - `int age`: Umur hewan.
  - `double weight`: Berat hewan.

- **Perilaku:**
  - `eat()`: Perilaku makan.
  - `sleep()`: Perilaku tidur.
  - `poop()`: Perilaku buang air.

Ilustrasi struktur class **Animal**:

```plaintext
Animal
+ String name
+ int age
+ double weight
- eat()
- sleep()
- poop()
```

---

## Cara Mendefinisikan Class

Gunakan keyword `class` diikuti dengan nama kelas untuk mendefinisikan sebuah class:

```dart
class Animal {
  String name;
  int age;
  double weight;

  Animal(this.name, this.age, this.weight);

  void eat() {
    print('🐱 $name is eating.');
    weight += 0.2;
  }

  void sleep() {
    print('🐱 $name is sleeping.');
  }

  void poop() {
    print('🐱 $name is pooping.');
    weight -= 0.1;
  }
}
```

### Penjelasan Kode:
1. **Atribut:**
   - `name`, `age`, dan `weight` adalah properti yang menggambarkan state dari objek.

2. **Constructor:**
   - `Animal(this.name, this.age, this.weight)` adalah constructor untuk menginisialisasi properti class saat objek dibuat.

3. **Method:**
   - `eat()`, `sleep()`, dan `poop()` adalah perilaku yang dapat dilakukan oleh objek.

---

## Membuat Objek dari Class

Untuk membuat objek (instance) dari sebuah class, gunakan sintaks berikut:

```dart
var nameOfObject = NameOfClass(property1, property2);
```

Sebagai contoh:

```dart
var dicodingCat = Animal('Gray', 2, 4.2);
```

Objek `dicodingCat` memiliki properti dan metode yang dapat diakses.

---

## Menggunakan Objek

Setelah objek dibuat, kita dapat mengakses properti atau memanggil metode yang ada di dalamnya:

### Contoh Program Lengkap:

```dart
void main() {
  var dicodingCat = Animal('Gray', 2, 4.2);

  dicodingCat.eat();
  dicodingCat.poop();

  print('Weight: ${dicodingCat.weight.toStringAsFixed(2)} kg');
}

class Animal {
  String name;
  int age;
  double weight;

  Animal(this.name, this.age, this.weight);

  void eat() {
    print('$name is eating.');
    weight += 0.2;
  }

  void sleep() {
    print('$name is sleeping.');
  }

  void poop() {
    print('$name is pooping.');
    weight -= 0.1;
  }
}
```

### Output:
```
Gray is eating.
Gray is pooping.
Weight: 4.30 kg
```

---

## Kesimpulan

- **Class** adalah blueprint untuk membuat objek.
- Atribut mendeskripsikan properti dari objek.
- Metode merepresentasikan perilaku dari objek.
- Objek dibuat menggunakan constructor dan dapat digunakan untuk mengakses atribut atau menjalankan metode.

Class memungkinkan kita menulis kode yang lebih terstruktur, modular, dan mudah untuk dipelihara.

