### **Rangkuman Materi: Pemrograman Asynchronous di Dart**

Pada modul ini, kita telah mempelajari konsep **asynchronous process** dalam Dart, yang memungkinkan kode berjalan secara **tidak berurutan** dan tetap efisien, terutama untuk operasi yang membutuhkan waktu seperti mengambil data dari API atau membaca file. Berikut adalah poin-poin penting yang telah dipelajari:

---

#### **1. Perbedaan Synchronous dan Asynchronous**
- **Synchronous Program**: Kode dijalankan **berurutan** dari atas ke bawah. Operasi berikutnya tidak dimulai sebelum operasi sebelumnya selesai.
- **Asynchronous Program**: Beberapa operasi dapat berjalan **bersamaan**, sehingga kode lain dapat dieksekusi sambil menunggu operasi tertentu selesai.

---

#### **2. Future**
- **Pengertian**: Future adalah objek yang mewakili nilai **potensial** atau **kesalahan** yang akan tersedia di masa mendatang.
- **Kondisi Future**:
  - **Uncompleted**: Ketika operasi asynchronous sedang berjalan atau tertunda, Future belum mengembalikan hasil apa pun.
  - **Completed with Data**: Operasi asynchronous selesai dengan sukses dan mengembalikan data.
  - **Completed with Error**: Operasi asynchronous gagal, dan Future mengembalikan kesalahan atau error.

#### **Contoh Future dengan Delay**:
```dart
var coffee = Future.delayed(Duration(seconds: 3), () {
  return 'Coffee Boba';
});
```
Pada contoh di atas, operasi akan tertunda selama 3 detik sebelum mengembalikan nilai `'Coffee Boba'`.

---

#### **3. Metode pada Future**
Future memiliki beberapa metode untuk menangani kondisi operasinya:

1. **`then()`**  
   Digunakan untuk menangani hasil dari Future ketika operasi selesai dengan sukses.  
   **Contoh**:
   ```dart
   coffee.then((value) {
     print('You ordered: $value');
   });
   ```

2. **`catchError()`**  
   Digunakan untuk menangani error ketika operasi Future gagal.  
   **Contoh**:
   ```dart
   coffee.catchError((error) {
     print('Sorry, an error occurred: $error');
   });
   ```

3. **`whenComplete()`**  
   Digunakan untuk mengeksekusi kode setelah operasi selesai, baik sukses maupun gagal.  
   **Contoh**:
   ```dart
   coffee.whenComplete(() {
     print('Thank you for using our service!');
   });
   ```

---

#### **4. Async dan Await**
- **Fungsi**: Mempermudah penulisan kode asynchronous dengan gaya seperti kode synchronous.
- **Penggunaan**:
  1. Tambahkan **`async`** pada fungsi yang mengandung operasi asynchronous.
  2. Gunakan **`await`** untuk menunggu hasil dari Future.

**Contoh**:
```dart
void main() async {
  print('Getting your order...');
  var order = await coffee;
  print('Your order: $order');
}
```

---

#### **5. Menangani Error dengan Try-Catch**
Error dalam operasi asynchronous dapat ditangani dengan **try-catch**.  
**Contoh**:
```dart
void main() async {
  try {
    var order = await coffee;
    print('Your order: $order');
  } catch (error) {
    print('Sorry, an error occurred: $error');
  } finally {
    print('Thank you!');
  }
}
```

---

### **Kesimpulan**
- Pemrograman asynchronous memungkinkan operasi besar berjalan tanpa menghalangi kode lain.
- **Future** adalah objek utama untuk menangani proses asynchronous, dengan tiga kondisi utama: **uncompleted**, **completed with data**, dan **completed with error**.
- Metode seperti **`then()`**, **`catchError()`**, dan **`whenComplete()`** digunakan untuk menangani berbagai kondisi Future.
- Keyword **`async`** dan **`await`** membuat penulisan kode asynchronous lebih mudah dibaca dan dikelola.

Dengan pemahaman ini, Anda kini dapat menulis aplikasi Dart yang efisien, terutama ketika berhadapan dengan operasi yang membutuhkan waktu seperti membaca API atau file.