### Cascade Notation dalam Dart

Cascade notation atau **cascade operator** adalah fitur dalam Dart yang memungkinkan kita melakukan beberapa operasi pada objek yang sama secara langsung. Dengan menggunakan cascade operator, kita dapat:

- Mengakses properti dari objek.
- Menjalankan metode di dalam objek.
- Melakukan semuanya dalam satu ekspresi.

Operator ini ditulis menggunakan dua tanda titik (`..`) atau tanda tanya diikuti dua titik (`?..`) untuk objek yang bersifat opsional.

---

#### **Contoh Penggunaan Cascade Notation**

Perhatikan kode berikut:

```dart
void main() {
  var dicodingCat = Animal('', 2, 4.2)
    ..name = 'Gray'
    ..eat();
}
```

Kode di atas setara dengan:

```dart
var dicodingCat = Animal('', 2, 4.2);
dicodingCat.name = 'Gray';
dicodingCat.eat();
```

Dengan menggunakan cascade notation, kita dapat menulis kode lebih ringkas dan langsung melakukan operasi berurutan pada objek tanpa perlu menyimpan nilai sementara.

---

#### **Penjelasan Kode**
1. Objek `Animal` diinstansiasi menggunakan constructor `Animal('', 2, 4.2)`.
2. Cascade operator (`..`) digunakan untuk:
   - Mengatur properti `name` menjadi `'Gray'`.
   - Memanggil metode `eat()`.

---

#### **Manfaat Cascade Notation**
- Menghemat langkah dalam menulis kode.
- Membuat kode lebih ringkas dan mudah dibaca.
- Menghindari penggunaan variabel sementara yang tidak diperlukan.

---

#### **Contoh Implementasi**

**Tanpa Cascade Notation:**

```dart
void main() {
  var dicodingCat = Animal('', 2, 4.2);
  dicodingCat.name = 'Gray';
  dicodingCat.age = 3;
  dicodingCat.weight = 4.5;
  dicodingCat.eat();
}
```

**Dengan Cascade Notation:**

```dart
void main() {
  var dicodingCat = Animal('', 2, 4.2)
    ..name = 'Gray'
    ..age = 3
    ..weight = 4.5
    ..eat();
}
```

---

#### **Cascade Notation dengan Builder Pattern**

Cascade notation sangat berguna ketika digunakan dengan pola desain **builder pattern**. Contoh:

```dart
final addressBook = (AddressBookBuilder()
      ..name = 'Jenny'
      ..email = 'jenny@example.com'
      ..phone = '415-555-0100')
    .build();
```

Pada contoh ini:
1. `AddressBookBuilder` digunakan untuk membangun objek `AddressBook`.
2. Cascade notation (`..`) digunakan untuk mengatur berbagai properti dalam satu ekspresi.
3. Objek akhir dihasilkan melalui metode `.build()`.

---

#### **Menggunakan Null-Aware Cascade Notation**

Jika objek bisa bernilai `null`, gunakan `?..` untuk menghindari kesalahan:

```dart
void main() {
  Animal? dicodingCat;

  dicodingCat
    ?..name = 'Gray'
    ..eat(); // Tidak akan dijalankan jika `dicodingCat` bernilai null
}
