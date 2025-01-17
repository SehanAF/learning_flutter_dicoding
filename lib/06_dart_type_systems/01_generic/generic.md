### **Pengenalan Generic di Dart**

#### **Apa Itu Generic?**
Generic adalah konsep pemrograman yang memungkinkan kita untuk menentukan tipe data pada sebuah struktur atau fungsi secara dinamis. Dart mendukung penggunaan generic, yang dapat dilihat pada tipe-tipe seperti `List<E>`, di mana `E` adalah parameter generik yang dapat diubah sesuai kebutuhan, misalnya menjadi `int`, `String`, atau tipe lain.

---

#### **Penggunaan Generic dalam Dart**
Generic digunakan untuk membuat struktur data dan fungsi yang lebih fleksibel dan **type-safe**, sekaligus mengurangi duplikasi kode.

##### **Contoh 1: List**
```dart
List<int> numberList = [1, 2, 3, 4, 5];      // List dengan tipe parameter int
List<String> stringList = ['Dart', 'Flutter']; // List dengan tipe parameter String
List dynamicList = [1, 'dua', 3.0];           // List dengan tipe dynamic
```
- **List<int>** hanya dapat menyimpan nilai `int`.  
- **List<String>** hanya dapat menyimpan nilai `String`.  
- **List<dynamic>** dapat menyimpan semua tipe data, tetapi kehilangan keamanan tipe.

---

#### **Manfaat Generic**
1. **Type Safety:** 
   Memastikan hanya tipe data tertentu yang dapat digunakan, sehingga mengurangi bug.  
   Contoh:
   ```dart
   List<int> numberList = [1, 2, 3];
   numberList.add('empat'); // Compile-time error
   ```

2. **Kode yang Lebih Efisien:** 
   Menghindari duplikasi kode dengan memanfaatkan parameter generik.
   ```dart
   abstract class Cache<T> {
     T getByKey(String key);
     void setByKey(String key, T value);
   }
   ```

3. **Kemampuan untuk Menyesuaikan Tipe Data:** 
   Kita dapat membuat struktur yang lebih fleksibel tanpa mengorbankan keamanan tipe.

---

#### **Hierarki Objek dengan Generic**
Dart mendukung penggunaan generic yang sesuai dengan hierarki objek.

##### **Contoh Hierarki**
```dart
class Animal {}

class Bird implements Animal {}

class Dove implements Bird {}

class Duck implements Bird {}
```

Dengan hierarki ini:
```dart
List<Bird> birdList = [Bird(), Dove(), Duck()]; // Valid
List<Bird> birdListError = [Bird(), Dove(), Animal()]; // Compile-time error
```
- **`List<Bird>`** hanya dapat diisi dengan objek bertipe `Bird` atau turunannya (`Dove`, `Duck`).
- **`Animal`** tidak dapat dimasukkan ke dalam **`List<Bird>`** karena `Animal` bukan turunan langsung dari `Bird`.

---

#### **Kesalahan pada Kompilasi dan Runtime**
##### **List<Bird> vs List<Animal>**
```dart
List<Bird> myBird = List<Animal>(); // Tidak akan terdeteksi oleh kompiler
```
Pada runtime, ini menghasilkan error karena:
- **`List<Animal>`** bukan subtype dari **`List<Bird>`**.
- Generic di Dart **tidak mendukung kovarians penuh** pada tipe parameter koleksi. 

##### **Error yang Muncul:**
```plaintext
Unhandled exception:
type 'List<Animal>' is not a subtype of type 'List<Bird>'
```

---

#### **Kesimpulan**
- **Generic** memberikan fleksibilitas untuk menentukan tipe data saat runtime, namun tetap menjaga keamanan tipe.  
- Penggunaan generic mencegah kesalahan runtime dengan mendeteksi kesalahan tipe pada compile-time.  
- Saat bekerja dengan hierarki objek, pastikan parameter generik sesuai dengan tipe yang diharapkan untuk menghindari kesalahan tipe.