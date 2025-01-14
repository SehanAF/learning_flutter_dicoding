### **Belajar Implicit Interface dengan Mudah**

**Interface** itu seperti daftar tugas yang harus dilakukan oleh suatu kelas. Interface memberi tahu kelas apa saja yang harus mereka kerjakan, tanpa menjelaskan bagaimana caranya. Kalau di dunia nyata, bayangkan seperti tombol di remote TV—kita tahu tombol itu bisa digunakan, tapi kita tidak perlu tahu bagaimana cara kerjanya di dalam.

---

### **Apa Itu Implicit Interface di Dart?**
Dart tidak punya kata kunci khusus untuk membuat **interface**, seperti di beberapa bahasa lain (misalnya `interface` di Java).  
Sebaliknya, **semua class di Dart secara otomatis bisa digunakan sebagai interface**. Inilah yang disebut **implicit interface**.

---

### **Cara Menggunakan Interface di Dart**

Kita bisa membuat class bertindak sebagai interface dengan menggunakan kata kunci `implements`.  
Tapi kalau kita menggunakan `implements`, **kelas baru wajib menulis ulang semua metode yang ada di interface**.

---

### **Contoh Sederhana**

#### 1. Membuat Interface  
Misalnya kita punya interface bernama `Flyable`, yang mendefinisikan metode `fly()`.

```dart
class Flyable {
  void fly() {
    // Metode kosong, implementasi dilakukan oleh kelas yang menggunakan interface ini.
  }
}
```

#### 2. Membuat Kelas yang Menggunakan Interface  
Sekarang kita buat kelas `Bird`, yang mewarisi sifat dasar dari `Animal` dan juga menggunakan interface `Flyable`.

```dart
class Bird extends Animal implements Flyable {
  String featherColor;

  Bird(String name, int age, double weight, this.featherColor)
      : super(name, age, weight);

  @override
  void fly() {
    print('$name is flying.');
  }
}
```

#### 3. Menggunakan Kelas dalam Program  
Saat kita membuat objek dari kelas `Bird`, kita harus memastikan bahwa metode `fly()` sudah diimplementasikan. Kalau belum, Dart akan memberikan error.  

Berikut contoh penggunaannya:

```dart
void main() {
  var dicodingBird = Bird('Birdy', 2, 0.8, 'Gray');

  dicodingBird.fly();  // Output: Birdy is flying.
  dicodingBird.eat();  // Output: Birdy is eating.
}
```

---

### **Kenapa Harus Pakai Interface?**
1. **Memaksa Aturan**: Interface memastikan bahwa setiap kelas yang menggunakannya memiliki metode yang harus diimplementasikan.
2. **Mendukung Polimorfisme**: Kelas yang berbeda bisa memiliki implementasi metode yang berbeda, meskipun mereka menggunakan interface yang sama.
3. **Memisahkan Abstraksi dan Implementasi**: Interface hanya menjelaskan *apa yang harus dilakukan*, tanpa memberitahu *bagaimana caranya*.

---

### **Kesimpulan**
Interface di Dart itu seperti *template tugas*—kamu harus mengerjakan tugas yang ada, tapi bebas memilih bagaimana cara melakukannya. Dengan **implicit interface**, kita bisa membuat kode lebih fleksibel dan mendukung prinsip *modular programming*.