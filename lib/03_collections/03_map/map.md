# Map dalam Dart: Penjelasan Detail dan Penerapannya

## Apa itu Map?

**Map** adalah salah satu jenis *collection* dalam Dart yang menyimpan data dalam format **key-value**. Hal ini memungkinkan kita untuk mengakses nilai (*value*) menggunakan sebuah *key* unik. *Map* sangat berguna ketika kita ingin menyimpan data yang memiliki hubungan antara *key* dan *value*, seperti pasangan nama kota dengan negara.

Contoh sederhana penggunaan *Map*:

```dart
void main() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  print(capital['Jakarta']); // Output: Indonesia
}
```

Pada kode di atas:
- `'Jakarta'` adalah **key**.
- `'Indonesia'` adalah **value** yang berhubungan dengan key `'Jakarta'`.

## Properti dan Metode pada Map

Dart menyediakan berbagai properti dan metode untuk mengelola *Map*. Berikut beberapa properti yang sering digunakan:

### 1. **Mengakses Semua Key**
Kita bisa mendapatkan daftar semua *key* dalam sebuah *Map* menggunakan properti `keys`. Hasilnya berupa iterable.

```dart
void main() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  print(capital.keys); // Output: (Jakarta, London, Tokyo)
}
```

### 2. **Mengakses Semua Value**
Untuk mendapatkan daftar semua *value* dalam *Map*, kita bisa menggunakan properti `values`. Hasilnya juga berupa iterable.

```dart
void main() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  print(capital.values); // Output: (Indonesia, England, Japan)
}
```

### 3. **Menambahkan Key-Value Baru**
Untuk menambahkan pasangan key-value baru, cukup gunakan sintaks berikut:

```dart
void main() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  capital['New Delhi'] = 'India';

  print(capital);
  // Output: {Jakarta: Indonesia, London: England, Tokyo: Japan, New Delhi: India}
}
```

### 4. **Memeriksa Keberadaan Key atau Value**
Kita dapat memeriksa apakah sebuah *Map* memiliki key atau value tertentu menggunakan metode `containsKey()` dan `containsValue()`.

```dart
void main() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  print(capital.containsKey('Jakarta')); // Output: true
  print(capital.containsValue('France')); // Output: false
}
```

### 5. **Menghapus Data**
Untuk menghapus pasangan key-value, gunakan metode `remove()`.

```dart
void main() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  capital.remove('London');
  print(capital);
  // Output: {Jakarta: Indonesia, Tokyo: Japan}
}
```

### 6. **Mengubah Nilai (Value)**
Kita bisa memperbarui nilai berdasarkan *key* yang sudah ada.

```dart
void main() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  capital['Tokyo'] = 'Nippon';
  print(capital);
  // Output: {Jakarta: Indonesia, London: England, Tokyo: Nippon}
}
```

## Iterasi pada Map

Kita bisa melakukan iterasi pada setiap pasangan key-value dalam *Map* menggunakan loop. Ada beberapa cara untuk melakukannya:

### 1. **Iterasi Menggunakan forEach**
Metode `forEach()` memungkinkan kita untuk mengakses setiap pasangan key-value.

```dart
void main() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  capital.forEach((key, value) {
    print('Kota: $key, Negara: $value');
  });
}
```

**Output:**
```
Kota: Jakarta, Negara: Indonesia
Kota: London, Negara: England
Kota: Tokyo, Negara: Japan
```

### 2. **Iterasi dengan for-in**
Gunakan `for-in` untuk mengiterasi *key* atau *value* saja.

```dart
void main() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  // Iterasi key
  for (var key in capital.keys) {
    print('Key: $key');
  }

  // Iterasi value
  for (var value in capital.values) {
    print('Value: $value');
  }
}
```

**Output:**
```
Key: Jakarta
Key: London
Key: Tokyo
Value: Indonesia
Value: England
Value: Japan
```

## Map dengan Tipe Data Spesifik

Secara default, *Map* di Dart bersifat dinamis, artinya *key* dan *value* dapat berupa tipe data apa saja. Namun, kita juga bisa menentukan tipe data untuk *key* dan *value* agar lebih aman.

Contoh *Map* dengan tipe data spesifik:

```dart
void main() {
  Map<String, String> capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  print(capital);
}
```

Dengan menentukan tipe data, Dart akan memberikan peringatan jika kita mencoba memasukkan *key* atau *value* dengan tipe data yang tidak sesuai.

## Kesimpulan

*Map* adalah koleksi yang fleksibel dan sangat berguna untuk menyimpan data dengan pasangan *key-value*. Dengan memahami properti, metode, dan cara iterasi pada *Map*, kita dapat memanfaatkannya secara maksimal dalam pengembangan aplikasi.
