### **Panduan Dart Efektif**

Dart memiliki panduan yang dikenal sebagai **Effective Dart**, yang dirancang untuk membantu developer menulis kode yang bersih, konsisten, dan mudah dipahami. Panduan ini terbagi menjadi **empat bagian utama** berdasarkan fungsinya:

---

### **1. Panduan Gaya (Style Guide)**  
Panduan ini mendefinisikan aturan untuk tata letak dan pengaturan kode, termasuk:
- **Format penamaan**:  
  - Gunakan **camelCase** untuk variabel, fungsi, dan parameter.  
    Contoh: `studentName`, `calculateTotal()`.  
  - Gunakan **PascalCase** untuk kelas dan enum.  
    Contoh: `MyClass`, `ColorType`.  
  - Gunakan **underscore (_)** untuk variabel privat.  
    Contoh: `_internalVariable`.
- **Tata letak kode**:  
  - Gunakan indentasi konsisten (2 spasi).  
  - Tempatkan tanda kurung kurawal pada baris yang sama.

---

### **2. Panduan Dokumentasi (Documentation Guide)**  
Panduan ini berfokus pada cara menulis komentar yang jelas dan informatif:
- **Komentar Dokumentasi**:  
  Gunakan `///` untuk mendokumentasikan fungsi, kelas, atau parameter.  
  Contoh:  
  ```dart
  /// Fungsi ini menghitung jumlah total.
  int calculateTotal(int a, int b) => a + b;
  ```
- **Komentar Biasa**:  
  Gunakan `//` untuk menjelaskan bagian spesifik dari kode.  
  Contoh:  
  ```dart
  // Periksa apakah nilai lebih besar dari 10.
  if (value > 10) {
    print('Value is large');
  }
  ```

---

### **3. Panduan Penggunaan (Usage Guide)**  
Panduan ini menjelaskan cara terbaik untuk memanfaatkan fitur Dart:
- Gunakan **null-aware operators** untuk menangani nilai null.  
  Contoh:  
  ```dart
  var name = user?.name ?? 'Guest';
  ```
- Hindari menggunakan **kode redundant**.  
  Contoh buruk:  
  ```dart
  if (value == true) {
    print('Value is true');
  }
  ```  
  Contoh baik:  
  ```dart
  if (value) {
    print('Value is true');
  }
  ```
- Gunakan **collection literals** untuk deklarasi list, set, atau map.  
  Contoh:  
  ```dart
  var fruits = ['apple', 'banana', 'orange'];
  var prices = {'apple': 10, 'banana': 15};
  ```

---

### **4. Panduan Desain (Design Guide)**  
Panduan ini mencakup praktik terbaik dalam merancang kode, terutama saat membuat API atau library:
- **Konsistensi API**:  
  Pastikan nama fungsi dan parameter menggambarkan dengan jelas tujuannya.  
  Contoh:  
  ```dart
  Future<void> fetchData() async {
    // Logika pengambilan data
  }
  ```
- **Gunakan getter untuk akses properti**:  
  Contoh:  
  ```dart
  class Circle {
    final double radius;

    Circle(this.radius);

    double get area => 3.14 * radius * radius;
  }
  ```
- **Hindari fungsi dengan terlalu banyak parameter**. Jika diperlukan, gunakan objek untuk menampung parameter.

---

### **Kata Kunci Panduan Dart Efektif**
Setiap aturan dalam **Effective Dart** diawali dengan kata kunci tertentu untuk menunjukkan tingkat kepentingannya:

1. **MELAKUKAN (DO)**  
   Aturan yang harus selalu diikuti.  
   Contoh:  
   **Do** gunakan `final` untuk variabel yang tidak berubah.  
   ```dart
   final name = 'John';
   ```

2. **JANGAN (DON'T)**  
   Praktik yang harus dihindari karena dapat menyebabkan masalah.  
   Contoh:  
   **Don't** deklarasikan variabel tanpa tipe yang jelas.  
   ```dart
   var value = ''; // Jangan, karena tipe tidak jelas.
   ```

3. **LEBIH MENYUKAI (PREFER)**  
   Praktik yang disarankan, tetapi ada situasi di mana aturan ini bisa dilanggar.  
   Contoh:  
   **Prefer** gunakan `=>` untuk fungsi pendek.  
   ```dart
   int add(int a, int b) => a + b;
   ```

4. **MENGHINDARI (AVOID)**  
   Hal yang tidak dianjurkan, kecuali dalam situasi tertentu.  
   Contoh:  
   **Avoid** menggunakan variabel global secara berlebihan.

5. **MEMPERTIMBANGKAN (CONSIDER)**  
   Praktik opsional yang dapat diikuti tergantung pada preferensi.  
   Contoh:  
   **Consider** tambahkan tipe parameter generik untuk koleksi.  
   ```dart
   List<int> numbers = [1, 2, 3];
   ```

---

### **Kesimpulan**
Meskipun **Effective Dart** memiliki banyak aturan, sebagian besar didasarkan pada **common sense** dalam penulisan kode yang baik. Tujuannya adalah untuk menciptakan kode yang:
- **Mudah dibaca**.
- **Konsisten**.
- **Mudah dipelihara**.

Dengan mengikuti panduan ini, Anda tidak hanya meningkatkan kualitas kode, tetapi juga membuat kolaborasi dalam tim menjadi lebih mudah dan efisien.