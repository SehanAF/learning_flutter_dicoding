# Rangkuman Materi: List, Set, dan Map di Dart

Untuk menyelesaikan masalah yang lebih kompleks dengan efisien, kita membutuhkan struktur data yang lebih canggih dibandingkan tipe data biasa. Berikut adalah tiga struktur data utama di Dart yang dapat digunakan untuk menyimpan banyak data sekaligus: **List**, **Set**, dan **Map**.

---

## **1. List**
**List** digunakan untuk menyimpan banyak data yang disusun secara berurutan. Data dalam List diakses menggunakan indeks (*zero-based indexing*). Artinya, indeks dimulai dari 0 untuk elemen pertama, dan elemen terakhir dapat diakses menggunakan `list.length - 1`.

### Contoh:
```dart
var numberList = [1, 2, 3, 4, 5];
var stringList = ['Hello', 'Dicoding', 'Dart'];
```

---

## **2. Set**
**Set** digunakan untuk menyimpan data yang bersifat **unik** (tidak ada duplikasi), tidak memiliki urutan tertentu, dan tidak diakses menggunakan indeks.

### Contoh:
```dart
var numberSet = {1, 4, 6};
```

### Fungsi-fungsi yang tersedia pada Set:
- **`add(value)`**: Menambahkan nilai baru ke dalam Set.
- **`remove(value)`**: Menghapus nilai tertentu dari Set.
- **`union(other)`**: Membuat Set baru dengan gabungan elemen dari dua Set.
- **`intersection(other)`**: Membuat Set baru dengan elemen yang merupakan irisan dari dua Set.

---

## **3. Map**
**Map** adalah struktur data yang menyimpan data dalam format pasangan **key-value**, di mana key digunakan untuk mengakses value.

### Contoh:
```dart
var capital = {
  'Jakarta': 'Indonesia',
  'London': 'England',
  'Tokyo': 'Japan',
};
```

### Properti dan Metode pada Map:
- **`keys`**: Menampilkan semua key dalam Map.
- **`values`**: Menampilkan semua nilai (value) dalam Map.
- **`clear()`**: Menghapus semua pasangan key-value dalam Map.
- Jika key yang diakses tidak ada, maka nilai yang dikembalikan adalah `null`.

### Contoh:
```dart
print(capital['New Delhi']); // null
```

---

Dengan memahami struktur data **List**, **Set**, dan **Map**, kita dapat menyimpan dan mengelola data secara lebih efisien sesuai kebutuhan. Struktur data ini menjadi fondasi penting dalam pengembangan aplikasi menggunakan Dart.