# Constructor

Ketika suatu objek dibuat, semua properti pada kelas tersebut harus memiliki nilai. Kita dapat langsung menginisialisasi pada properti tertentu atau menginisialisasinya melalui constructor. Constructor adalah fungsi spesial dari sebuah kelas yang digunakan untuk membuat objek.

Sesuai namanya, constructor digunakan untuk mengonstruksi objek baru.

### Perbedaan Constructor dan Fungsi Biasa

Constructor memiliki beberapa perbedaan dengan fungsi biasa, yaitu:
1. Constructor memiliki nama yang sama dengan nama kelas.
2. Constructor tidak memiliki nilai kembalian (return type).
3. Constructor akan secara otomatis dipanggil ketika sebuah objek dibuat.
4. Jika tidak ada constructor yang didefinisikan, Dart akan menyediakan default constructor tanpa argumen.

### Default Constructor

Sebagai contoh, jika kita memiliki kelas `Animal` tanpa constructor:

```dart
class Animal {
  String name = '';
  int age = 0;
  double weight = 0;
}
```

Maka kita dapat membuat objek baru dari kelas tersebut tanpa memberikan argumen apa pun:

```dart
var dicodingCat = Animal();
```

Namun, untuk menghindari properti yang tidak terinisialisasi atau bernilai `null`, kita dapat memberikan nilai secara manual:

```dart
void main() {
  var dicodingCat = Animal();

  dicodingCat.name = 'Gray';
  dicodingCat.age = 2;
  dicodingCat.weight = 4.2;
}
```

### Constructor dengan Parameter

Kita dapat membuat constructor yang menerima parameter untuk menginisialisasi properti:

```dart
class Animal {
  String name = '';
  int age = 0;
  double weight = 0;

  Animal(String name, int age, double weight) {
    this.name = name;
    this.age = age;
    this.weight = weight;
  }
}
```

Penggunaan keyword `this` berguna untuk menghindari ambiguitas antara properti kelas dan parameter constructor yang memiliki nama sama.

### Constructor yang Disingkat

Jika constructor hanya digunakan untuk menginisialisasi nilai properti, kita dapat menyingkat kode menjadi seperti ini:

```dart
class Animal {
  String name;
  int age;
  double weight;

  Animal(this.name, this.age, this.weight);
}
```

### Named Constructor

Dalam beberapa kasus, kita mungkin memerlukan beberapa constructor untuk berbagai skenario. Kita dapat menggunakan named constructor untuk tujuan ini. Named constructor memiliki nama unik yang diikuti dengan tanda titik (`.`):

```dart
class Animal {
  String name = '';
  int age = 0;
  double weight = 0;

  Animal(this.name, this.age, this.weight);

  // Named Constructor
  Animal.name(this.name);
  Animal.age(this.age);
  Animal.weight(this.weight);
}
```

### Initializer List

Kadang-kadang kita ingin mendeklarasikan salah satu properti kelas dengan nilai default. Sebagai contoh:

```dart
class Animal {
  String name;
  int age;
  double weight;

  Animal.cat(this.name, this.weight) {
    age = 2;
  }
}
```

Namun, pendekatan di atas kurang ideal karena variabel `age` seharusnya didefinisikan sebelum constructor body. Sebagai gantinya, kita dapat menggunakan initializer list:

```dart
class Animal {
  String name;
  int age;
  double weight;

  Animal.cat(this.name, this.weight) : age = 2 {
    // Code tambahan jika diperlukan.
  }
}
```

Dengan initializer list, nilai properti dapat diatur sebelum body constructor dijalankan.

