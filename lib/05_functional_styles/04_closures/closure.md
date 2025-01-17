### **Closure pada Dart**

**Closure** adalah fungsi yang dapat mengakses variabel di dalam **lexical scope**-nya, bahkan setelah eksekusi fungsi induknya selesai. Ini memungkinkan fungsi yang bersarang untuk tetap "menghidupkan" lingkup variabel induknya.

---

### **Lexical Scope**
Lexical scope artinya fungsi bersarang memiliki akses ke:
1. Variabel lokal di dalam dirinya.
2. Variabel yang didefinisikan di lingkup fungsi induknya.

---

### **Contoh Closure**
Perhatikan kode berikut:
```dart
void main() {
  var closureExample = calculate(2);
  closureExample();
  closureExample();
}

Function calculate(int base) {
  var count = 1;

  return () => print("Value is ${base + count++}");
}
```

#### **Penjelasan:**
1. **Fungsi `calculate`**:
   - Menerima parameter `base`.
   - Mendefinisikan variabel `count` dengan nilai awal 1.
   - Mengembalikan fungsi anonim (lambda) yang mencetak nilai `base + count++`.

2. **Fungsi lambda yang dikembalikan**:
   - Memiliki akses ke variabel `count` dari lingkup fungsi `calculate`.
   - Variabel `count` tetap terjaga meskipun fungsi `calculate` sudah selesai dieksekusi.

#### **Output:**
```
Value is 3
Value is 4
```

---

### **Bagaimana Closure Bekerja?**
Closure menyimpan referensi ke variabel di lingkup induknya, bukan nilai statis. Oleh karena itu, perubahan pada variabel tersebut tetap dapat dilacak oleh closure.

---

### **Contoh Variasi Closure**
**Menambahkan Akses Return Fungsi:**
```dart
void main() {
  var addCounter = counter();
  print(addCounter()); // Output: 1
  print(addCounter()); // Output: 2
}

Function counter() {
  var count = 0;

  return () {
    count++;
    return count;
  };
}
```

---

### **Manfaat Closure**
1. **Menyimpan State:**
   Closure dapat digunakan untuk menyimpan dan melacak data antar pemanggilan fungsi, seperti pada contoh counter di atas.
   
2. **Fungsi yang Lebih Modular:**
   Closure memungkinkan pembungkusan logika kompleks menjadi fungsi kecil yang tetap memiliki akses ke variabel induknya.

3. **Mengurangi Ketergantungan Global:**
   Closure memanfaatkan variabel lokal daripada variabel global, sehingga kode menjadi lebih aman dan modular.

---

### **Catatan Penting**
1. Variabel di dalam closure akan tetap ada selama closure itu sendiri masih memiliki referensi yang aktif.
2. Closure sering digunakan dalam **event handling**, **callback functions**, atau operasi asinkron seperti **future** atau **stream**.

Dengan pemahaman tentang closure, Anda dapat menulis kode Dart yang lebih efisien dan fleksibel, khususnya untuk kasus di mana state perlu dipertahankan di antara pemanggilan fungsi.