### **Belajar Extension Methods di Dart**

**Extension methods** adalah fitur yang diperkenalkan di Dart 2.7 untuk menambahkan fungsi baru pada tipe data yang sudah ada, baik bawaan Dart maupun dari library eksternal. Dengan extension methods, kita bisa menambahkan fungsionalitas tambahan tanpa perlu mengubah kode asli atau membuat subclass.

---

### **Kenapa Perlu Extension Methods?**
Kadang, library bawaan atau milik orang lain terasa kurang lengkap. Dengan extension methods, kita bisa:
- Menambahkan fungsi tambahan pada kelas yang sudah ada.
- Menjaga kode tetap terorganisir tanpa perlu memodifikasi kode asli.
- Menghindari boilerplate dengan subclassing.

---

### **Cara Membuat Extension Method**

Format penulisan extension method adalah:

```dart
extension <NamaEkstensi> on <TipeData> {
  // Fungsi atau metode baru
}
```

Contoh: Menambahkan metode `sortAsc()` pada tipe data `List<int>`.

```dart
extension Sorting on List<int> {
  List<int> sortAsc() {
    var list = this;
    var length = this.length;

    for (int i = 0; i < length - 1; i++) {
      int min = i;
      for (int j = i + 1; j < length; j++) {
        if (list[j] < list[min]) {
          min = j;
        }
      }
      // Tukar nilai
      int tmp = list[min];
      list[min] = list[i];
      list[i] = tmp;
    }

    return list;
  }
}
```

---

### **Menggunakan Extension Methods**

Setelah kita membuat extension method, kita bisa langsung menggunakannya seperti metode bawaan:

```dart
void main() {
  var unsortedNumbers = [2, 5, 3, 1, 4];
  print(unsortedNumbers); // Output: [2, 5, 3, 1, 4]

  var sortedNumbers = unsortedNumbers.sortAsc();
  print(sortedNumbers); // Output: [1, 2, 3, 4, 5]
}
```

---

### **Membuat Extension sebagai Library**

Agar extension bisa digunakan di berbagai file, simpan dalam file terpisah, misalnya `extensions.dart`.

**File `extensions.dart`:**
```dart
extension Sorting on List<int> {
  List<int> sortAsc() {
    var list = this;
    var length = this.length;

    for (int i = 0; i < length - 1; i++) {
      int min = i;
      for (int j = i + 1; j < length; j++) {
        if (list[j] < list[min]) {
          min = j;
        }
      }
      int tmp = list[min];
      list[min] = list[i];
      list[i] = tmp;
    }

    return list;
  }
}
```

**File `main.dart`:**
```dart
import 'extensions.dart';

void main() {
  var unsortedNumbers = [2, 5, 3, 1, 4];
  print(unsortedNumbers); // Output: [2, 5, 3, 1, 4]

  var sortedNumbers = unsortedNumbers.sortAsc();
  print(sortedNumbers); // Output: [1, 2, 3, 4, 5]
}
```

---

### **Kelebihan Extension Methods**

1. **Fleksibilitas**: Menambahkan fungsionalitas tanpa perlu membuat subclass.
2. **Reusabilitas**: Bisa digunakan kembali di berbagai file dan proyek.
3. **Bersih dan Terorganisir**: Kode lebih mudah dibaca dan dikelola.

---

### **Kesimpulan**
- **Extension methods** mempermudah kita menambahkan fungsionalitas pada tipe data yang sudah ada.
- Ini sangat membantu dalam memperluas kemampuan library tanpa memodifikasi kode asli.
- Gunakan extension untuk menjaga kode tetap bersih, modular, dan mudah digunakan kembali! 🎉