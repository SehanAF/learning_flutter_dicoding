### **Belajar Pewarisan (Inheritance): Seperti Anak dan Orang Tua!**

Halo, teman-teman kecil! 👋  
Hari ini kita akan belajar tentang **pewarisan** atau yang sering disebut **inheritance** dalam dunia pemrograman. Yuk, bayangkan ini seperti hubungan **anak dan orang tua**. Anak bisa mewarisi sifat-sifat dari orang tua mereka, seperti warna rambut, bentuk wajah, atau bahkan cara berbicara. Keren, kan? Nah, di komputer, kita bisa membuat hubungan seperti itu juga!

---

### **Apa Itu Pewarisan?**
**Inheritance** adalah cara kita membuat sebuah "kelas anak" (child class) yang mewarisi sifat dan kemampuan dari "kelas induk" (parent class).  
**Kelas induk** adalah tempat kita menuliskan sifat-sifat dasar yang nantinya bisa digunakan oleh **kelas anak**. Dengan begitu, kita tidak perlu menuliskan ulang sifat-sifat yang sama.

---

### **Contoh Hewan:**
Bayangkan kamu punya 3 hewan: kucing 🐱, ikan 🐟, dan burung 🐦. Semua hewan ini punya beberapa sifat yang sama:  
- Mereka punya nama.
- Mereka punya berat badan.
- Mereka punya umur.  

Dan semua hewan bisa:  
- Makan 🍴.  
- Tidur 💤.  
- Buang air besar 🚽.  

Tetapi, ada juga perbedaan di antara mereka:
- **Kucing** bisa berjalan 🚶.  
- **Ikan** bisa berenang 🏊.  
- **Burung** bisa terbang 🕊️.  

---

### **Bagaimana Pewarisan Bekerja?**
Daripada menuliskan sifat yang sama di setiap hewan, kita bisa membuat **kelas induk** bernama `Animal`. Semua sifat dasar, seperti nama, berat, umur, makan, dan tidur, kita tulis di `Animal`.  
Lalu, kucing, ikan, dan burung akan menjadi **kelas anak** yang mewarisi sifat dari `Animal`.

---

### **Contoh Kode:**

#### **Kelas Induk: Animal**
```dart
class Animal {
  String name;
  int age;
  double weight;

  Animal(this.name, this.age, this.weight);

  void eat() {
    print('$name is eating.');
    weight += 0.2;
  }

  void sleep() {
    print('$name is sleeping.');
  }

  void poop() {
    print('$name is pooping.');
    weight -= 0.1;
  }
}
```

#### **Kelas Anak: Cat**
```dart
class Cat extends Animal {
  String furColor;

  Cat(String name, int age, double weight, this.furColor) 
      : super(name, age, weight);

  void walk() {
    print('$name is walking.');
  }
}
```

---

### **Cara Menggunakan Pewarisan**

Sekarang, kita buat objek dari kelas `Cat` di file utama (`main.dart`) seperti ini:
```dart
void main() {
  var myCat = Cat('Luna', 2, 4.5, 'Gray');

  myCat.walk(); // Luna is walking.
  myCat.eat();  // Luna is eating.
  myCat.sleep(); // Luna is sleeping.

  print(myCat.weight); // Beratnya bertambah karena makan!
}
```

---

### **Kenapa Pewarisan Itu Berguna?**
1. **Menghemat Waktu**: Kita tidak perlu menulis kode yang sama berulang-ulang.  
2. **Mudah Diubah**: Kalau ada perubahan pada sifat dasar, cukup ubah di kelas induk, maka semua kelas anak akan otomatis ikut berubah.  
3. **Lebih Rapi**: Kode terlihat lebih terorganisir.  

---

### **Kesimpulan**
Pewarisan itu seperti orang tua dan anak: anak-anak bisa mewarisi sifat dari orang tua, tetapi mereka tetap punya kemampuan unik masing-masing. Dengan pewarisan, kamu bisa membuat kode yang lebih efisien dan keren!  

Sudah siap mencoba membuat kelas kucing, ikan, dan burungmu sendiri? 😊  