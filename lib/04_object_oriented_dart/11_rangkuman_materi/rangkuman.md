### **Rangkuman Materi Object Oriented Programming (OOP)**

Kita telah menyelesaikan modul **Object Oriented Programming (OOP)**. Berikut adalah poin-poin utama yang telah dipelajari:

---

#### **Apa Itu OOP?**
OOP adalah paradigma pemrograman berbasis objek yang memiliki **atribut** (data) dan mampu menjalankan **operasi/metode** tertentu. Objek menjadi inti dari pendekatan ini.

---

#### **Empat Pilar OOP**
1. **Encapsulation**  
   - Membungkus data dan metode dalam sebuah kelas.
   - Atribut bersifat privat, sehingga objek lain tidak dapat mengaksesnya langsung.
   
2. **Abstraction**  
   - Menyembunyikan detail implementasi.
   - Hanya metode penting yang ditampilkan, sehingga pengguna cukup tahu fungsi yang tersedia.

3. **Inheritance**  
   - **Kelas anak (child class)** mewarisi properti dan metode dari **kelas induk (parent class)**.
   - Memungkinkan penggunaan kembali kode (reuse).

4. **Polymorphism**  
   - Kemampuan objek untuk memiliki berbagai bentuk atau implementasi pada metode yang sama.
   - Contoh: Metode `speak()` bisa berbeda-beda implementasinya di kelas `Cat`, `Dog`, atau `Bird`.

---

#### **Konsep-Konsep Penting OOP**
1. **Class dan Object**  
   - **Class**: Cetak biru (blueprint) untuk membuat objek.  
   - **Object**: Instansiasi dari kelas.  

   *Class memiliki properti (variabel) dan metode (fungsi).*

2. **Abstract Class**  
   - Gambaran umum dari sebuah kelas yang tidak dapat diinstansiasi menjadi objek.
   - Digunakan untuk memberikan kerangka dasar bagi kelas turunannya.

3. **Mixin**  
   - Solusi untuk menggunakan kembali metode/properti dari beberapa kelas.  
   - Tidak termasuk dalam hierarki parent-child, sehingga menghindari masalah *diamond problem*.

4. **Extension Methods**  
   - Menambahkan metode baru pada kelas yang sudah ada, tanpa perlu memodifikasi kode aslinya.
   - Contoh: Menambahkan metode `sortAsc()` untuk tipe `List<int>`.

---

### **Kesimpulan**
OOP membantu kita menulis kode yang:
- **Modular**: Memudahkan pengorganisasian.
- **Reusable**: Kode dapat digunakan kembali melalui inheritance dan mixin.
- **Mudah dipahami**: Karena abstraksi dan encapsulation.

Dengan memahami OOP, Anda dapat membangun aplikasi yang lebih terstruktur, efisien, dan mudah dikembangkan! 🚀