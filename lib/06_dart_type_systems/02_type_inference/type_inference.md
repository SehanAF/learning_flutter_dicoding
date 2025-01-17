### **Type Inference di Dart**

#### **Apa Itu Type Inference?**
Type inference adalah kemampuan Dart untuk secara otomatis menentukan tipe variabel, metode, atau argumen berdasarkan nilai atau konteksnya. Hal ini memungkinkan kode menjadi lebih ringkas tanpa kehilangan keamanan tipe.

---

#### **Contoh Type Inference**
##### **Deklarasi dengan Tipe Eksplisit**
```dart
Map<String, dynamic> company = {'name': 'Dicoding', 'yearsFounded': 2015};
```

##### **Deklarasi dengan `var`**
```dart
var company = {'name': 'Dicoding', 'yearsFounded': 2015}; // Map<String, Object>
```

Pada contoh kedua:
- Dart analyzer menentukan bahwa key bertipe `String` dan value adalah campuran tipe (`String` dan `int`), yang keduanya merupakan turunan dari `Object`.
- Oleh karena itu, tipe variabel **`company`** disimpulkan sebagai **`Map<String, Object>`**.

---

#### **Type Inference pada Consumer dan Producer**
##### **Consumer dan Producer**
1. **Consumer:** Objek yang menerima nilai.
   - **Aman** mengganti consumer bertipe spesifik dengan supertype-nya (tipe lebih umum).
   ```dart
   Animal fish = Fish(); // Aman karena Fish adalah subtype dari Animal.
   ```

2. **Producer:** Objek yang menghasilkan nilai.
   - **Aman** mengganti tipe supertype dengan subtype-nya (tipe lebih spesifik).
   ```dart
   Fish fish = Shark(); // Aman karena Shark adalah subtype dari Fish.
   ```

---

#### **Contoh Kasus: Type Safety**
##### **Hierarchy**
```dart
class Animal {}

class Bird implements Animal {}
class Dove implements Bird {}
class Duck implements Bird {}

class Fish implements Animal {}
class Shark implements Fish {}
class FlyingFish implements Fish {}
```

##### **Penjelasan Tipe Consumer dan Producer**
1. **Consumer**:
   ```dart
   Animal fish = Fish();  // Aman, Fish adalah subtype dari Animal.
   Animal bird = Dove();  // Aman, Dove adalah subtype dari Bird dan Animal.
   ```
   - Consumer dapat ditingkatkan ke tipe yang lebih umum.

2. **Producer**:
   ```dart
   Fish fish = Shark();  // Aman, Shark adalah subtype dari Fish.
   Shark shark = Fish(); // Error, Fish bukan tipe Shark.
   ```
   - Producer tidak dapat diturunkan ke tipe yang lebih spesifik kecuali tipe aslinya cocok.

---

#### **Keuntungan Type Inference**
1. **Kode Lebih Ringkas:** Tidak perlu selalu menyebutkan tipe eksplisit.
2. **Keamanan Tipe:** Meski tidak mendeklarasikan tipe eksplisit, Dart tetap menjaga keamanan tipe.
3. **Peningkatan Produktivitas:** Mempercepat penulisan kode karena analyzer Dart menentukan tipe secara otomatis.

---

#### **Kesimpulan**
- **Type inference** membantu menentukan tipe variabel secara otomatis tanpa kehilangan keamanan tipe.  
- Dart menggunakan **type safety** yang ketat, memastikan bahwa tipe variabel atau objek selalu sesuai dengan hierarkinya.  
- Pahami hierarki objek saat bekerja dengan consumer dan producer untuk menghindari kesalahan tipe.