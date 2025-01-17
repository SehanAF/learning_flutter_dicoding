### **Anonymous Functions (Lambda) di Dart**

**Anonymous Function**, atau dikenal dengan nama **lambda**, adalah fungsi tanpa nama yang biasa digunakan untuk kebutuhan sementara. Lambda sangat berguna ketika Anda membutuhkan fungsi yang singkat dan hanya digunakan sekali atau di tempat tertentu.

---

### **Deklarasi Anonymous Function**

Pada umumnya, fungsi memiliki nama seperti `sum()` atau `main()`. Untuk membuat fungsi tanpa nama, cukup tuliskan parameter dalam tanda kurung `()` dan *body function* dalam `{}`. 

**Contoh Anonymous Function:**
```dart
void main() {
  (int num1, int num2) {
    return num1 + num2;
  };
}
```
Namun, fungsi di atas belum dapat digunakan karena belum disimpan dalam variabel.

---

### **Menyimpan Anonymous Function ke dalam Variabel**

Karena fungsi di Dart adalah **first-class citizen**, fungsi dapat disimpan ke dalam variabel. Gunakan `var` atau deklarasikan secara eksplisit dengan tipe data `Function`.

**Contoh:**
```dart
void main() {
  var sum = (int num1, int num2) {
    return num1 + num2;
  };
  
  Function printLambda = () {
    print('This is a lambda function');
  };
  
  printLambda();            // Output: This is a lambda function
  print(sum(3, 4));         // Output: 7
}
```

---

### **Menggunakan Function Expression dengan Fat Arrow**

Dart mendukung **function expression** untuk membuat kode lebih ringkas menggunakan operator **fat arrow (`=>`)**. Fat arrow digunakan untuk fungsi dengan satu pernyataan (statement) yang mengembalikan nilai secara langsung tanpa perlu menuliskan kata kunci `return`.

**Contoh:**
```dart
void main() {
  var sum = (int num1, int num2) => num1 + num2;

  Function printLambda = () => print('This is a lambda function');

  print(sum(3, 4));          // Output: 7
  printLambda();             // Output: This is a lambda function
}
```

---

### **Kegunaan Lambda**
Lambda sering digunakan dalam:
1. **Callbacks**: Sebagai parameter dalam fungsi yang memerlukan callback.
2. **Event Handlers**: Untuk menangani aksi tertentu seperti klik tombol dalam GUI.
3. **Pengolahan Data**: Digunakan bersama fungsi seperti `map()`, `forEach()`, atau `filter()`.

**Contoh dengan `forEach`:**
```dart
void main() {
  var numbers = [1, 2, 3, 4, 5];

  // Menggunakan lambda untuk mencetak angka
  numbers.forEach((number) => print('Number: $number'));
}
```

---

### **Kesimpulan**
- **Anonymous functions (lambda)** adalah fungsi tanpa nama yang biasanya digunakan untuk operasi sederhana.
- Dapat disimpan dalam variabel atau digunakan langsung sebagai parameter fungsi lain.
- Mendukung **fat arrow (`=>`)** untuk membuat kode lebih ringkas.
- Cocok digunakan untuk callback, event handling, dan manipulasi data.