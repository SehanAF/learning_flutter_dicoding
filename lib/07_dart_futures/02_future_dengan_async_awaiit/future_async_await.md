### **Future dengan async-await di Dart**

Pada pembahasan sebelumnya, kita telah mempelajari bagaimana menggunakan **Future** untuk menangani proses **asynchronous**. Namun, kode asynchronous seringkali lebih sulit dibaca dibanding kode synchronous karena melibatkan callback seperti `then()` dan `catchError()`. Untuk mengatasi ini, Dart menyediakan **`async`** dan **`await`**, yang memungkinkan kita menuliskan proses asynchronous dengan gaya yang menyerupai kode synchronous.

---

### **1. Perbandingan Asynchronous dan Synchronous**

#### **Kode Synchronous**
Berikut adalah contoh kode synchronous untuk simulasi pemesanan kopi:

```dart
void main() {
  print('Getting your order...');
  var order = getOrder();
  print('Your order: $order');
}
```

**Output:**
```
Getting your order...
Your order: Instance of 'Future<String>'
```

Karena `getOrder()` adalah fungsi asynchronous yang mengembalikan objek Future, nilai yang ditampilkan adalah representasi Future, bukan hasil akhirnya.

---

### **2. Menggunakan `async` dan `await`**

#### **Langkah 1: Menjadikan Fungsi Asynchronous**
Tambahkan **`async`** sebelum tubuh fungsi:

```dart
void main() async {
  ...
}
```

#### **Langkah 2: Menunggu Future dengan `await`**
Gunakan **`await`** sebelum memanggil fungsi asynchronous:

```dart
var order = await getOrder();
```

Dengan perubahan ini, kode asynchronous ditulis seperti synchronous, namun tetap berjalan secara asynchronous di latar belakang.

---

### **Contoh: Menggunakan `async` dan `await`**

Berikut adalah kode pemesanan kopi menggunakan `async` dan `await`:

```dart
void main() async {
  print('Getting your order...');
  var order = await getOrder();
  print('Your order: $order');
}

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Coffee Boba';
  });
}
```

**Output:**
```
Getting your order...
Your order: Coffee Boba // Muncul setelah 3 detik
```

---

### **3. Menangani Error dengan Try-Catch**

Ketika sebuah Future gagal, kita dapat menangani error menggunakan blok **`try-catch`**. Ini lebih rapi dibandingkan `catchError()`.

#### **Contoh dengan Try-Catch**

```dart
void main() async {
  print('Getting your order...');
  try {
    var order = await getOrder();
    print('Your order: $order');
  } catch (error) {
    print('Sorry. $error');
  } finally {
    print('Thank you!');
  }
}

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    throw 'Stock is not available';
  });
}
```

**Output:**
```
Getting your order...
Sorry. Stock is not available
Thank you!
```

---

### **4. Perbedaan Finally dan whenComplete**

Blok **`finally`** pada **try-catch-finally** memiliki fungsi yang sama seperti **`whenComplete()`** pada Future. Keduanya dijalankan setelah proses selesai, baik berhasil maupun gagal.

#### **Contoh dengan Finally**

Kode di atas sudah menggunakan blok **`finally`**, sehingga kita tidak perlu lagi menambahkan `whenComplete()`. Berikut adalah struktur lengkapnya:

```dart
void main() async {
  print('Getting your order...');
  try {
    var order = await getOrder();
    print('Your order: $order');
  } catch (error) {
    print('Sorry. $error');
  } finally {
    print('Thank you!');
  }
}

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvailable = false;
    if (isStockAvailable) {
      return 'Coffee Boba';
    } else {
      throw 'Stock is not available';
    }
  });
}
```

---

### **Kesimpulan**

#### **Keuntungan Menggunakan `async` dan `await`:**
1. **Lebih mudah dibaca:** Kode asynchronous dapat ditulis seperti synchronous.
2. **Struktur rapi:** Tidak memerlukan callback chaining seperti pada `then()` dan `catchError()`.

#### **Kombinasi `async-await` dengan Try-Catch-Finally:**
- Gunakan **`try-catch`** untuk menangani error.
- Gunakan **`finally`** untuk menjalankan aksi cleanup.

Dengan memahami `async` dan `await`, Anda dapat menulis kode asynchronous Dart yang lebih bersih, terorganisir, dan mudah dipahami.