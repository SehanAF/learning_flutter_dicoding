### **Apa itu Future di Dart?**

**Future** adalah objek yang mewakili hasil potensial (data) atau error yang akan tersedia di masa mendatang. Konsep Future dapat dianalogikan sebagai **paket kiriman**:
1. **Uncompleted:** Paket sedang dalam perjalanan.
2. **Completed with data:** Paket tiba sesuai pesanan.
3. **Completed with error:** Paket tiba, tetapi isinya salah atau rusak.

---

### **1. Cara Kerja Future**

#### **a. Uncompleted State**
Ketika Future dibuat, status awalnya adalah *uncompleted*. Contoh sederhana:

```dart
Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Coffee Boba';
  });
}
```

Kode di atas membuat Future dengan penundaan 3 detik sebelum mengembalikan nilai `'Coffee Boba'`.

---

#### **b. Completed with Data**
Untuk menangani nilai yang dihasilkan Future, gunakan **`then()`**:

```dart
void main() {
  getOrder().then((value) {
    print('Your order: $value');
  });
  print('Getting your order...');
}
```

**Output:**
```
Getting your order...
Your order: Coffee Boba  // Muncul setelah 3 detik
```

---

#### **c. Completed with Error**
Jika Future menghasilkan error, gunakan **`catchError()`** untuk menanganinya:

```dart
Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvailable = false;
    if (isStockAvailable) {
      return 'Coffee Boba';
    } else {
      throw 'Stock not available';
    }
  });
}

void main() {
  getOrder()
    .then((value) => print('Your order: $value'))
    .catchError((error) => print('Sorry. $error'));
  print('Getting your order...');
}
```

**Output:**
```
Getting your order...
Sorry. Stock not available  // Setelah 3 detik
```

---

### **2. Menangani Semua Keadaan dengan `whenComplete()`**
Method **`whenComplete()`** akan selalu dipanggil setelah Future selesai, baik berhasil maupun gagal:

```dart
void main() {
  getOrder()
    .then((value) => print('Your order: $value'))
    .catchError((error) => print('Sorry. $error'))
    .whenComplete(() => print('Thank you.'));
  print('Getting your order...');
}
```

**Output:**
```
Getting your order...
Sorry. Stock not available
Thank you.
```

---

### **Kesimpulan**
Future memiliki tiga status:
1. **Uncompleted:** Fungsi Future belum selesai dieksekusi.
2. **Completed with Data:** Future berhasil dieksekusi dan menghasilkan data.
3. **Completed with Error:** Future gagal dieksekusi dan menghasilkan error.

Method utama untuk menangani Future:
- **`then()`**: Menangani hasil data.
- **`catchError()`**: Menangani error.
- **`whenComplete()`**: Menjalankan aksi setelah Future selesai, apa pun hasilnya.