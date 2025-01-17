### **Pengenalan Dart Type System**

#### **Apa itu Type System?**
Type system dalam bahasa pemrograman adalah serangkaian aturan logis yang menentukan **tipe** atau **kategori** pada berbagai konstruksi program, seperti variabel, ekspresi, fungsi, atau modul. Sistem ini membantu memverifikasi bahwa operasi dilakukan pada tipe data yang sesuai.

---

#### **Sound Type System pada Dart**
Dart menggunakan **sound type system**, yang berarti:

1. **Program tidak dapat memasuki keadaan di mana ekspresi mengevaluasi nilai yang tidak sesuai dengan tipenya.**  
   Ini memastikan bahwa tipe data yang didefinisikan tidak akan berubah atau menghasilkan perilaku tak terduga.

2. **Kombinasi pemeriksaan statis dan runtime:**  
   - **Pemeriksaan statis (compile-time):** Kesalahan terdeteksi sebelum program dijalankan.  
     *Contoh:* Menetapkan nilai `String` ke variabel `int` menghasilkan kesalahan saat kompilasi.  
     ```dart
     int number = "hello"; // Compile-time error
     ```
   - **Pemeriksaan runtime:** Kesalahan terdeteksi saat eksekusi jika tipe tidak cocok, seperti saat melakukan **casting**.
     ```dart
     Object obj = 123;
     String text = obj as String; // Runtime error
     ```

---

#### **Manfaat Sound Type System**
1. **Mengurangi Bug terkait Tipe:**  
   - Bug ditemukan lebih awal pada compile time, sebelum program dijalankan.
   - Menyediakan keamanan tipe yang kuat untuk mencegah perilaku tak terduga.

2. **Kode Lebih Mudah Dibaca:**  
   - Programmer dapat mengandalkan tipe yang ditentukan dalam kode.
   - Membantu kolaborasi tim dengan dokumentasi eksplisit melalui tipe.

3. **Meningkatkan Kemudahan Pemliharaan:**  
   - Jika Anda mengubah tipe di satu bagian kode, sound type system memberikan peringatan tentang bagian lain yang terkena dampak perubahan tersebut.

4. **Optimisasi Kompilasi AOT (Ahead of Time):**  
   - Kompilator dapat menghasilkan kode mesin yang lebih efisien karena tipe sudah diketahui secara pasti.

