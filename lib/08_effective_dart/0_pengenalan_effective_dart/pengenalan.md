### **Pengenalan Effective Dart**

Kita telah mencapai modul terakhir dalam kelas *Memulai Pemrograman dengan Dart*. Di sini, kita akan mempelajari **Effective Dart**, yaitu panduan untuk menulis kode Dart yang konsisten, kuat, dan cepat. Sebagai programmer, terutama dalam tim, sebagian besar waktu kita dihabiskan untuk **membaca kode** daripada menulisnya. Oleh karena itu, **coding convention** sangat penting untuk meningkatkan kualitas kode.

---

### **Apa Itu Coding Convention?**
Coding convention adalah **panduan gaya penulisan kode** dalam bahasa pemrograman tertentu yang mencakup praktik terbaik untuk aspek-aspek berikut:
- **Indentasi**
- **Penulisan komentar**
- **Deklarasi variabel dan fungsi**
- **Penamaan variabel, fungsi, dan kelas**
- **Arsitektur kode**

### **Mengapa Coding Convention Penting?**
1. **Efisiensi Pemeliharaan (Maintenance)**  
   Sekitar **40% - 80% biaya perangkat lunak** digunakan untuk proses pemeliharaan.
   
2. **Kode yang Bisa Dipahami Programmer Lain**  
   Jarang sekali perangkat lunak dipelihara oleh penulis kode aslinya, sehingga konsistensi gaya penulisan membantu programmer lain untuk memahami kode dengan cepat.
   
3. **Meningkatkan Keterbacaan Kode**  
   Dengan gaya penulisan yang konsisten, programmer bisa membaca kode lebih mudah, memahami alur logika, dan menemukan kesalahan lebih cepat.

4. **Source Code yang Tertata**  
   Kode yang tertata rapi menunjukkan kualitas profesional dari produk perangkat lunak.

---

### **Effective Dart: Panduan Gaya Penulisan Dart**
Dart memiliki panduan khusus yang dikenal dengan **Effective Dart**. Tujuannya adalah agar kode yang ditulis menjadi:
1. **Konsisten (Be Consistent)**  
   Konsistensi dalam gaya penulisan mengurangi perdebatan subjektif, seperti format atau struktur kode. Dengan konsistensi, kode lebih mudah dibaca dan dipahami.

2. **Ringkas (Be Brief)**  
   Dart dirancang untuk terlihat familiar dengan bahasa lain seperti C, Java, atau JavaScript, namun memiliki fitur tambahan untuk menyederhanakan penulisan kode. Jika ada beberapa cara untuk menulis logika yang sama, gunakan yang paling ringkas dan efisien.

---

### **Contoh Penerapan Effective Dart**

#### **1. Penamaan Variabel**
Gunakan nama variabel yang jelas dan deskriptif.
**Contoh Baik**:
```dart
var studentName = 'John Doe';
```

**Contoh Buruk**:
```dart
var sn = 'John Doe'; // Tidak jelas maksudnya.
```

#### **2. Gunakan Format Konsisten**
Gunakan spasi dan indentasi yang seragam, misalnya 2 spasi untuk setiap blok kode.
**Contoh Baik**:
```dart
void main() {
  if (true) {
    print('Consistent formatting is important');
  }
}
```

**Contoh Buruk**:
```dart
void main(){
    if (true){
       print('Inconsistent formatting makes code harder to read');
    }
}
```

#### **3. Hindari Kode Redundant**
Kurangi penggunaan kode yang berulang-ulang.
**Contoh Baik**:
```dart
void greet(String name) => print('Hello, $name!');
```

**Contoh Buruk**:
```dart
void greet(String name) {
  print('Hello, $name!');
}
```

#### **4. Gunakan Fitur Dart untuk Keringkasan**
Manfaatkan fitur Dart seperti **null-aware operators** dan **collection literals**.
**Contoh Baik**:
```dart
String? name;
print(name ?? 'Guest'); // Null-aware operator
```

**Contoh Buruk**:
```dart
String? name;
if (name != null) {
  print(name);
} else {
  print('Guest');
}
```

---

### **Kesimpulan**
Effective Dart adalah panduan gaya penulisan yang dirancang agar kode Dart lebih mudah dibaca, konsisten, dan efisien. Dengan menerapkan coding convention seperti yang tercantum dalam **Effective Dart**, Anda dapat menghasilkan kode yang lebih profesional dan mudah dipelihara oleh tim.

Dua prinsip utama dalam Effective Dart:
1. **Konsisten (Be Consistent)**  
   Pilih satu gaya penulisan dan gunakan secara seragam di seluruh proyek.
   
2. **Ringkas (Be Brief)**  
   Gunakan fitur-fitur Dart untuk menyederhanakan penulisan kode tanpa mengorbankan keterbacaan.

Dengan mengikuti panduan ini, Anda akan lebih siap untuk berkolaborasi dalam tim dan mengembangkan perangkat lunak yang andal!