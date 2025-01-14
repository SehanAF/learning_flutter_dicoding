# Rangkuman Materi: Percabangan dan Perulangan dalam Pemrograman Dart

Pada modul ini, Anda telah mempelajari berbagai konsep penting yang berkaitan dengan percabangan alur program dan perulangan. Berikut adalah rangkuman dari materi yang telah dipelajari:

---

## 1. **Percabangan dengan `if` dan `else`**
Percabangan digunakan untuk menjalankan blok kode tertentu berdasarkan kondisi yang diberikan.
- **Ekspresi `if`:** Digunakan untuk mengevaluasi suatu kondisi. Jika kondisi bernilai `true`, maka blok kode di dalamnya akan dijalankan.
- **Ekspresi `else`:** Digunakan jika kondisi pada `if` bernilai `false`.
- **Ekspresi `else if`:** Digunakan untuk mengevaluasi beberapa kondisi tambahan.

### Contoh Kode:
```dart
String calculateScore(num score) {
  if (score > 90) {
    return 'A';
  } else if (score > 80) {
    return 'B';
  } else if (score > 70) {
    return 'C';
  } else if (score > 60) {
    return 'D';
  } else {
    return 'E';
  }
}
```

---

## 2. **Perulangan (Looping)**
Perulangan memungkinkan Anda menjalankan blok kode yang sama berulang kali tanpa menulis kode secara manual.

### **2.1. Perulangan dengan `for`**
- Cocok digunakan jika Anda mengetahui jumlah iterasi yang diperlukan.
- Format dasar:
  ```dart
  for (initialization; condition; increment/decrement) {
    // blok kode
  }
  ```

#### Contoh:
```dart
for (int i = 1; i <= 100; i++) {
  print(i);
}
```

### **2.2. Perulangan dengan `while`**
- Digunakan jika jumlah iterasi belum diketahui dan tergantung pada suatu kondisi.
- Format dasar:
  ```dart
  while (condition) {
    // blok kode
  }
  ```

#### Contoh:
```dart
var i = 1;
while (i <= 100) {
  print(i);
  i++;
}
```

### **2.3. Perulangan dengan `do-while`**
- Sama seperti `while`, tetapi memastikan bahwa blok kode dijalankan setidaknya satu kali.
- Format dasar:
  ```dart
  do {
    // blok kode
  } while (condition);
  ```

#### Contoh:
```dart
var i = 1;
do {
  print(i);
  i++;
} while (i <= 100);
```

### **2.4. Infinite Loops (Perulangan Tak Berujung)**
- Perulangan tanpa kondisi akhir yang benar dapat menyebabkan aplikasi crash.
- Contoh:
  ```dart
  var i = 1;
  while (i < 5) {
    print(i); // Infinite loop karena nilai `i` tidak berubah.
  }
  ```

---

## 3. **Pengendalian Perulangan**

### **3.1. Menggunakan `break`**
- **Fungsi:** Menghentikan perulangan lebih awal sebelum mencapai akhir iterasi.
- Contoh:
  ```dart
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      break;
    }
    print(i);
  }
  ```
  **Output:** 1, 2, 3, 4

### **3.2. Menggunakan `continue`**
- **Fungsi:** Melewatkan iterasi saat ini dan melanjutkan ke iterasi berikutnya.
- Contoh:
  ```dart
  for (int i = 1; i <= 10; i++) {
    if (i % 3 == 0) {
      continue;
    }
    print(i);
  }
  ```
  **Output:** 1, 2, 4, 5, 7, 8, 10

---

## 4. **Percabangan dengan `switch-case`**
Digunakan untuk mengevaluasi suatu variabel/ekspresi terhadap beberapa kemungkinan nilai yang telah ditentukan sebelumnya.

### **Format Dasar:**
```dart
switch (variable/expression) {
  case value1:
    // do something
    break;
  case value2:
    // do something
    break;
  default:
    // do something else
}
```

### **Poin Penting:**
- **`case`:** Digunakan untuk mendefinisikan kondisi yang perlu dicek.
- **`break`:** Menghentikan eksekusi di dalam blok `switch` setelah suatu kondisi terpenuhi.
- **`default`:** Blok yang dijalankan jika tidak ada kondisi yang sesuai.

#### Contoh Kode:
```dart
final firstNumber = 13;
final secondNumber = 18;
final operator = "*";

switch (operator) {
  case '+':
    print('$firstNumber + $secondNumber = ${firstNumber + secondNumber}');
    break;
  case '-':
    print('$firstNumber - $secondNumber = ${firstNumber - secondNumber}');
    break;
  case '*':
    print('$firstNumber * $secondNumber = ${firstNumber * secondNumber}');
    break;
  case '/':
    print('$firstNumber / $secondNumber = ${firstNumber / secondNumber}');
    break;
  default:
    print('Operator tidak dikenal');
}
```

---

## Kesimpulan
Dengan memahami konsep percabangan dan perulangan, Anda dapat:
1. Mengontrol alur program berdasarkan kondisi tertentu.
2. Menyederhanakan proses yang membutuhkan pengulangan dengan berbagai jenis loop.
3. Menghentikan atau melewatkan iterasi menggunakan `break` dan `continue`.
4. Menangani banyak kondisi dengan lebih terstruktur menggunakan `switch-case`.

Latihlah kemampuan Anda dengan membuat proyek kecil yang memanfaatkan konsep-konsep ini untuk memperkuat pemahaman Anda. Selamat belajar dan terus eksplorasi Dart!

