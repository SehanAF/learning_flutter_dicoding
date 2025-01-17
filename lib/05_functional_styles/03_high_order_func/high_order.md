### **Higher-Order Functions di Dart**

**Higher-Order Function** adalah fungsi yang:
1. Menerima fungsi lain sebagai parameter.
2. Mengembalikan fungsi sebagai nilai kembalian.
3. Atau keduanya.

Higher-order functions memungkinkan penulisan kode yang lebih modular dan fleksibel. Mereka juga sering digunakan dalam operasi seperti manipulasi koleksi data atau penanganan event.

---

### **Contoh Higher-Order Function**
Perhatikan contoh berikut:
```dart
void myHigherOrderFunction(String message, Function myFunction) {
  print(message);
  print(myFunction(3, 4));
}
```
Fungsi ini adalah **higher-order function** karena menerima fungsi lain sebagai parameter (`myFunction`). Cara memanggilnya:
1. Dengan variabel fungsi:
   ```dart
   int Function(int num1, int num2) sum = (int num1, int num2) => num1 + num2;
   myHigherOrderFunction('Hello', sum);
   ```
2. Dengan lambda langsung sebagai argumen:
   ```dart
   myHigherOrderFunction('Hello', (num1, num2) => num1 + num2);
   ```

**Output:**
```
Hello
7
```

---

### **Deklarasi Parameter dengan Tipe Spesifik**
Menggunakan tipe `Function` sebagai parameter umum memang fleksibel, tetapi berisiko karena Dart tidak akan memberikan kesalahan pada saat kompilasi jika fungsi tidak sesuai dengan yang diharapkan.

**Contoh Masalah:**
```dart
void myHigherOrderFunction(String message, Function myFunction) {
  print(message);
  print(myFunction(4)); // Ini akan error jika myFunction memerlukan dua parameter
}
```
**Solusi:**
Deklarasikan fungsi dengan tipe yang lebih spesifik:
```dart
void myHigherOrderFunction(String message, int Function(int num1, int num2) myFunction) {
  print(message);
  print(myFunction(3, 4));
}
```

---

### **Higher-Order Function pada Koleksi**
Fungsi seperti `forEach`, `map`, dan `where` di Dart adalah contoh **higher-order function**. Misalnya, `forEach` menerima fungsi sebagai parameter untuk dioperasikan pada setiap elemen dalam koleksi.

**Contoh:**
```dart
void main() {
  var fibonacci = [0, 1, 1, 2, 3, 5, 8, 13];

  fibonacci.forEach((item) {
    print('Fibonacci number: $item');
  });
}
```
**Output:**
```
Fibonacci number: 0
Fibonacci number: 1
Fibonacci number: 1
...
```

---

### **Contoh Penggunaan map()**
Fungsi `map` digunakan untuk memproses setiap elemen dalam koleksi dan mengembalikan koleksi baru dengan elemen yang sudah dimodifikasi.

**Contoh:**
```dart
void main() {
  var numbers = [1, 2, 3, 4];
  var squaredNumbers = numbers.map((number) => number * number).toList();

  print(squaredNumbers); // Output: [1, 4, 9, 16]
}
```

---

### **Kesimpulan**
- **Higher-order functions** adalah fungsi yang menerima fungsi lain sebagai parameter atau mengembalikan fungsi.
- Gunakan deklarasi parameter fungsi dengan tipe yang spesifik untuk menghindari kesalahan runtime.
- Fungsi bawaan Dart seperti `forEach`, `map`, dan `where` memanfaatkan konsep higher-order functions untuk manipulasi koleksi data.
- Kombinasi **lambda** dan higher-order functions membuat kode Dart lebih singkat, modular, dan mudah dibaca.