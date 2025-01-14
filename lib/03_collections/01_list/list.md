# List dalam Dart

## Pengertian List
List, sesuai namanya, adalah struktur data yang digunakan untuk menyimpan banyak elemen ke dalam satu objek. Dalam kehidupan sehari-hari, kita sering menggunakan list untuk menyimpan daftar belanja, nomor telepon, dan lain sebagainya. Dalam Dart, List dapat menyimpan berbagai tipe data seperti **String**, **int**, dan **boolean**.

### Contoh List
```dart
List<int> numberList = [1, 2, 3, 4, 5];
```
Kode di atas adalah contoh objek List yang berisi kumpulan data dengan tipe **int**. Jika kita tidak secara eksplisit menyebutkan tipe data, Dart akan menganggap List sebagai **dynamic**.

```dart
var numberList = [1, 2, 3, 4, 5];
var stringList = ['Hello', 'Dicoding', 'Dart'];
```
Jika List berisi elemen dengan tipe data campuran:

```dart
List dynamicList = [1, 'Dicoding', true];
print(dynamicList.runtimeType);
```
**Output:**
```
List<dynamic>
```

## Mengakses Elemen List
Untuk mengakses elemen List, kita menggunakan **indexing**:

```dart
void main() {
  List dynamicList = [1, 'Dicoding', true];
  print(dynamicList[1]);
}
```
**Output:**
```
Dicoding
```
Index dimulai dari **0**, jadi `dynamicList[1]` mengakses elemen kedua.

Jika kita mencoba mengakses indeks di luar jangkauan, maka akan menghasilkan error:

```dart
print(dynamicList[3]);
```
**Output Error:**
```
Unhandled exception: RangeError (index): Invalid value: Not in range 0..2, inclusive: 3
```

## Iterasi List
Kita dapat menampilkan semua elemen List menggunakan perulangan:

### Menggunakan `for` Loop
```dart
void main() {
  List<String> stringList = ["Hello", "Dicoding", "Dart"];
  for (int i = 0; i < stringList.length; i++) {
    print(stringList[i]);
  }
}
```
**Output:**
```
Hello
Dicoding
Dart
```

### Menggunakan `forEach`
```dart
void main() {
  List<String> stringList = ["Hello", "Dicoding", "Dart"];
  stringList.forEach((s) => print(s));
}
```
**Output:**
```
Hello
Dicoding
Dart
```

## Manipulasi List
### Menambahkan Elemen ke List
#### Menambahkan di Akhir List
```dart
void main() {
  List<String> stringList = ["Hello", "Dicoding", "Dart"];
  stringList.add('Flutter');
  print(stringList);
}
```
**Output:**
```
[Hello, Dicoding, Dart, Flutter]
```

#### Menambahkan di Posisi Tertentu
Gunakan fungsi `insert`:

```dart
void main() {
  List<String> stringList = ["Hello", "Dicoding", "Dart"];
  stringList.insert(0, 'Programming');
  print(stringList);
}
```
**Output:**
```
[Programming, Hello, Dicoding, Dart]
```

### Mengubah Elemen List
```dart
stringList[1] = 'Application';
```

### Menghapus Elemen dari List
Dart menyediakan beberapa metode untuk menghapus elemen:

- **Menghapus berdasarkan nilai**:
  ```dart
  stringList.remove('Programming');
  ```

- **Menghapus berdasarkan indeks**:
  ```dart
  stringList.removeAt(1);
  ```

- **Menghapus elemen terakhir**:
  ```dart
  stringList.removeLast();
  ```

- **Menghapus rentang elemen**:
  ```dart
  stringList.removeRange(0, 2);
  ```

## Spread Operator
Spread operator memungkinkan kita untuk menyebarkan elemen dari satu List ke List lainnya.

### Contoh Tanpa Spread Operator
```dart
void main() {
  var favorites = ['Seafood', 'Salad', 'Nugget'];
  var others = ['Cake', 'Pie', 'Donut'];
  var allFavorites = [favorites, others];
  print(allFavorites);
}
```
**Output:**
```
[[Seafood, Salad, Nugget], [Cake, Pie, Donut]]
```

### Contoh Dengan Spread Operator
```dart
void main() {
  var favorites = ['Seafood', 'Salad', 'Nugget'];
  var others = ['Cake', 'Pie', 'Donut'];
  var allFavorites = [...favorites, ...others];
  print(allFavorites);
}
```
**Output:**
```
[Seafood, Salad, Nugget, Cake, Pie, Donut]
```

### Null-Aware Spread Operator
```dart
void main() {
  List<dynamic>? list;
  List<dynamic> list2 = [0, ...?list];
  print(list2);
}
```
**Output:**
```
[0]
```

Dengan **null-aware spread operator** (`...?`), kita dapat menghindari error jika List bernilai null.

## Kesimpulan
- **List** adalah struktur data untuk menyimpan banyak elemen.
- Elemen dalam List diakses menggunakan indeks yang dimulai dari 0.
- Dart menyediakan berbagai cara untuk iterasi, manipulasi, dan penanganan List.
- **Spread operator** adalah fitur untuk menggabungkan elemen dari beberapa List dengan cara yang lebih sederhana.

Dengan memahami List, Anda dapat mengelola data dalam program Dart secara lebih efisien dan fleksibel. Selamat mencoba!

