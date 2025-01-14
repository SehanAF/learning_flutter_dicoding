### **Belajar Mixin di Dart**

**Mixin** adalah cara untuk berbagi kode antara beberapa kelas tanpa menggunakan pewarisan langsung (inheritance). Dengan mixin, kita bisa membuat kelas "berbagi kemampuan" tanpa harus memikirkan masalah kompleks seperti *multiple inheritance*.

---

### **Kenapa Kita Perlu Mixin?**
Dart tidak mendukung **multiple inheritance** (di mana satu kelas mewarisi lebih dari satu kelas). Sebagai gantinya, Dart menyediakan **mixin** untuk mengatasi kebutuhan berbagi kemampuan antar kelas tanpa konflik.

Contohnya:
- Hewan seperti **kucing** dan **bebek** sama-sama bisa berjalan.
- Hewan seperti **bebek** bisa terbang dan berenang.

Menggunakan **mixin**, kita bisa memberikan kemampuan ini tanpa membuat hierarki kelas yang rumit.

---

### **Cara Membuat Mixin**

1. **Mendefinisikan Mixin**  
   Gunakan keyword `mixin` untuk membuat kemampuan spesifik seperti `Flyable`, `Walkable`, dan `Swimmable`.

```dart
mixin Flyable {
  void fly() {
    print("I'm flying");
  }
}

mixin Walkable {
  void walk() {
    print("I'm walking");
  }
}

mixin Swimmable {
  void swim() {
    print("I'm swimming");
  }
}
```

2. **Menggunakan Mixin**  
   Gunakan keyword `with` untuk menambahkan mixin ke sebuah kelas. 

```dart
class Cat extends Mammal with Walkable {}

class Duck extends Bird with Walkable, Flyable, Swimmable {}
```

---

### **Contoh Penggunaan**

Berikut contoh kode untuk memahami konsep mixin:

```dart
void main() {
  var donald = Duck();
  var garfield = Cat();

  garfield.walk();  // Output: I'm walking
  donald.walk();    // Output: I'm walking
  donald.fly();     // Output: I'm flying
  donald.swim();    // Output: I'm swimming
}

mixin Flyable {
  void fly() {
    print("I'm flying");
  }
}

mixin Walkable {
  void walk() {
    print("I'm walking");
  }
}

mixin Swimmable {
  void swim() {
    print("I'm swimming");
  }
}

class Mammal {}

class Bird {}

class Cat extends Mammal with Walkable {}

class Duck extends Bird with Walkable, Flyable, Swimmable {}
```

---

### **Menghindari *Diamond Problem***  
Masalah *diamond problem* terjadi saat satu kelas mewarisi dua kelas induk yang memiliki metode dengan nama sama, sehingga terjadi kebingungan tentang metode mana yang harus dijalankan.

Dengan mixin, Dart tidak mengalami masalah ini karena mixin bersifat **stack** (bertumpuk). Metode pada mixin terakhir yang digunakan akan menggantikan metode sebelumnya.

---

### **Contoh *Stacking* pada Mixin**

Misalnya kita memiliki dua mixin:

```dart
mixin Dancer {
  void perform() {
    print('Dancing');
  }
}

mixin Singer {
  void perform() {
    print('Singing');
  }
}
```

Lalu, kita membuat kelas `Musician` yang menggunakan kedua mixin ini:

```dart
class Musician with Dancer, Singer {
  void showTime() {
    perform();
  }
}
```

Ketika kita menjalankan kode:

```dart
void main() {
  var musician = Musician();
  musician.perform(); // Output: Singing
}
```

**Kenapa yang keluar "Singing"?**
- Dart menjalankan metode `perform()` dari mixin terakhir, yaitu `Singer`. Urutan mixin **sangat penting**.

---

### **Kesimpulan**

1. **Mixin** mempermudah berbagi kode tanpa hierarki yang rumit.
2. **Urutan mixin penting** karena metode di mixin terakhir akan menggantikan metode sebelumnya.
3. Mixin membantu kita menghindari *diamond problem* dalam pewarisan.
