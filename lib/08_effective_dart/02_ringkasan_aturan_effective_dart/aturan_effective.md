### **Ringkasan Aturan Effective Dart**

Berikut adalah beberapa aturan penting dalam **Effective Dart** yang dapat membantu Anda menulis kode Dart yang lebih bersih, konsisten, dan mudah dipelihara:

---

### **1. Aturan Penamaan**
- **Gunakan UpperCamelCase untuk tipe (DO):**  
  Tipe seperti *class*, *enum*, *typedef*, dan *type parameter* harus menggunakan huruf kapital di setiap kata.  
  **Contoh:**  
  ```dart
  abstract class Hewan {}
  class Mamalia extends Hewan {}
  mixin Flyable {}
  class Cat extends Mammal with Walkable {}
  ```

- **Hindari awalan untuk nama variabel atau properti (DON'T):**  
  Tidak perlu menambahkan awalan seperti `m_` pada nama variabel. Dart sudah menyediakan tipe dan cakupan yang cukup jelas.  
  **Contoh:**  
  ```dart
  var instance; // Benar
  var mInstance; // Salah
  ```

---

### **2. Komentar dan Dokumentasi**
- **Mulai komentar fungsi dengan kata kerja orang ketiga (PREFER):**  
  Fokus pada menjelaskan apa yang dilakukan fungsi atau metode.  
  **Contoh:**  
  ```dart
  /// Mengembalikan `true` jika username dan password valid.
  bool isValid(String username, String password) {}
  ```

- **Gunakan frasa kata benda untuk properti non-boolean (PREFER):**  
  Properti atau variabel harus mendeskripsikan apa yang dimilikinya, bukan tindakan.  
  **Contoh:**  
  ```dart
  var calculator = Calculator();
  print(calculator.firstNumber); // Benar
  ```

  Untuk properti boolean, gunakan kata kerja non-imperatif seperti `is` atau `has`.  
  **Contoh:**  
  ```dart
  list.isEmpty; // Benar
  dialog.isOpen; // Benar
  ```

---

### **3. Interpolasi String**
- **Hindari penggunaan kurung kurawal jika tidak diperlukan (AVOID):**  
  Gunakan interpolasi string yang lebih sederhana jika hanya menyisipkan satu identifier.  
  **Contoh:**  
  ```dart
  print('Hai, $name!'); // Benar
  print('Hai, ${name}!'); // Salah jika hanya menyisipkan satu identifier
  ```

---

### **4. Penanganan Null**
- **Gunakan operator `??` untuk nilai default (DO):**  
  Jika sebuah nilai berpotensi null, gunakan operator `??` untuk menyediakan nilai pengganti.  
  **Contoh:**  
  ```dart
  bool isStockAvailable = stock?.isAvailable ?? false;
  ```

---

### **5. Penulisan Kode Asynchronous**
- **Lebih suka async/await daripada raw futures (PREFER):**  
  Gunakan sintaks async/await untuk menulis kode asynchronous agar terlihat seperti kode synchronous.  
  **Contoh:**  
  ```dart
  // Menggunakan async-await
  void main() async {
    print('Getting your order...');
    try {
      var order = await getOrder();
      print('Your order: $order');
    } catch (error) {
      print('Sorry. $error');
    }
  }

  Future<String> getOrder() async {
    return Future.delayed(Duration(seconds: 3), () => 'Coffee Boba');
  }
  ```

---

### **6. Penamaan Variabel dan Fungsi**
- **Pertimbangkan untuk membuat kode terbaca seperti kalimat (CONSIDER):**  
  Penamaan variabel atau fungsi harus memungkinkan kode dibaca seperti kalimat.  
  **Contoh:**  
  ```dart
  if (store.isOpen) {
    print('The store is open');
  }

  garfield.eat();
  ```

  Hindari ambiguitas:  
  ```dart
  if (store.close) // Salah: Tidak jelas apakah ini memeriksa status atau menutup toko
  ```

---

### **7. Tipe Fungsi pada Parameter**
- **Gunakan sintaks tipe fungsi untuk parameter (CONSIDER):**  
  Dart memiliki sintaks untuk mendefinisikan parameter yang tipenya adalah fungsi.  
  **Contoh:**  
  ```dart
  List filterList(List items, bool Function(item) predicate) {
    return items.where(predicate).toList();
  }
  ```

---

### **Kesimpulan**
Aturan dalam **Effective Dart** memberikan panduan untuk menulis kode yang lebih baik, baik dari segi gaya, dokumentasi, penggunaan, maupun desain. Meskipun ada banyak aturan, fokus utamanya adalah:
- **Konsistensi**: Buat kode yang mudah dimengerti oleh tim.
- **Kesederhanaan**: Gunakan pendekatan yang jelas dan tidak rumit.
- **Pemeliharaan**: Pastikan kode mudah diperbarui dan diperbaiki di masa depan.

Untuk aturan lebih lengkap, Anda dapat mempelajari langsung dokumentasi resmi **Effective Dart**.