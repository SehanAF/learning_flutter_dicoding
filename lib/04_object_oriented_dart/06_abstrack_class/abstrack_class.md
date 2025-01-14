### **Belajar Abstract Class: Gambaran Umum, Bukan Objek Nyata**

Bayangkan kamu sedang memikirkan tentang **hewan**. Hewan itu sifatnya umum, bukan sesuatu yang bisa langsung kita lihat atau sentuh. Kita tahu hewan bisa makan, tidur, atau buang air, tapi kita tidak bisa mengatakan "Ini hewan!" tanpa tahu bentuknya, seperti kucing, ikan, atau burung. Nah, konsep ini yang dijelaskan oleh **abstract class**.

---

### **Apa Itu Abstract Class?**
**Abstract class** adalah kelas yang hanya berisi **gambaran umum** tentang sifat atau perilaku, tetapi **tidak bisa langsung dijadikan objek**.  

Contohnya:  
Kelas `Animal` hanya menjelaskan sifat dasar semua hewan, seperti:
- Nama
- Umur
- Berat badan  

Tapi kita **tidak bisa membuat objek langsung dari kelas `Animal`** karena hewan itu terlalu umum. Kita hanya bisa membuat objek dari kelas-kelas turunannya, seperti `Cat`, `Fish`, atau `Bird`.

---

### **Cara Membuat Abstract Class**

Untuk membuat kelas abstrak, kita cukup menambahkan kata kunci `abstract` di depan `class`. Contohnya:

```dart
abstract class Animal {
  String name;
  int age;
  double weight;

  void eat() {
    print('$name is eating.');
  }

  void sleep() {
    print('$name is sleeping.');
  }
}
```

---

### **Kelas Abstract Tidak Bisa Dijadikan Objek**

Jika kita mencoba membuat objek dari kelas `Animal`, akan muncul error seperti ini:  

```dart
void main() {
  var dicodingAnimal = Animal('Gray', 2, 4.2); 
  // Error: The class 'Animal' is abstract and can't be instantiated.
}
```

Kenapa muncul error? Karena `Animal` adalah **abstract class**—ia hanya memberikan "template" untuk kelas turunannya. 

---

### **Mengapa Menggunakan Abstract Class?**
1. **Memberi Gambaran Umum**: Abstract class membantu kita membuat kerangka dasar yang bisa digunakan oleh semua kelas turunannya.  
2. **Tidak Membuat Objek Langsung**: Abstract class memastikan kita hanya bisa membuat objek dari kelas yang lebih spesifik, seperti `Cat` atau `Bird`.  
3. **Menerapkan Aturan**: Abstract class bisa memaksa semua kelas turunannya untuk memiliki properti atau metode tertentu.

---

### **Kesimpulan**
Abstract class itu seperti cetak biru. Kamu tidak bisa menggunakan cetak biru secara langsung, tapi kamu bisa membuat sesuatu darinya. Misalnya, cetak biru rumah tidak bisa langsung jadi rumah, tapi dari cetak biru itulah rumah bisa dibuat.

Dalam kode, **abstract class** hanya memberi gambaran umum, seperti sifat dasar hewan (`Animal`), tetapi tidak bisa digunakan langsung. Hanya kelas turunannya (`Cat`, `Fish`, `Bird`) yang bisa menjadi objek nyata.