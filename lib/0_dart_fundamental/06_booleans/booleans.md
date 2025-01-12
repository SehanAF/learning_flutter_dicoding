
# Booleans dalam Dart

Setelah mempelajari tipe data angka dan teks, tipe data penting lainnya yang perlu dipahami adalah **boolean**. Nama boolean ini diambil dari matematikawan Inggris, **George Boole**, yang menciptakan aljabar boolean. Aljabar boolean adalah cabang matematika yang berfokus pada nilai variabel yang hanya bisa berupa **benar** atau **salah**.

## Deklarasi Boolean

Pada Dart, boolean dideklarasikan dengan kata kunci **`bool`**. Variabel boolean hanya dapat menyimpan dua nilai:

1. **`true`**: Bernilai benar.
2. **`false`**: Bernilai salah.

Contoh:

```dart
void main() {
  bool alwaysTrue = true;
  var alwaysFalse = false;

  print(alwaysTrue); // Output: true
  print(alwaysFalse); // Output: false
}
```

## Operator Negasi (`!`)

Dart mendukung operator **`!`** (baca: "not" atau "bang") untuk membalik nilai boolean. Operator ini menegasikan nilai **true** menjadi **false** dan sebaliknya.

```dart
void main() {
  var notTrue = !true; // false
  bool notFalse = !false; // true

  print(notTrue); // Output: false
  print(notFalse); // Output: true
}
```

## Penggunaan Boolean dalam Kondisi

Boolean sangat sering digunakan dalam pengembangan aplikasi, terutama pada pengkondisian dan operasi logika. Berikut adalah contoh sederhana:

```dart
void main() {
  if (true) {
    print("It's true");
  } else {
    print("It's false");
  }
}
```

Output:
```
It's true
```

### Contoh dengan Variabel Boolean

```dart
void main() {
  bool isLoggedIn = false;

  if (isLoggedIn) {
    print("Welcome back!");
  } else {
    print("Please log in.");
  }
}
```

Output:
```
Please log in.
```

## Operasi Logika dengan Boolean

Selain negasi (`!`), Dart mendukung beberapa operator logika lainnya yang sering digunakan dalam kombinasi boolean:

### 1. Operator AND (`&&`)

Mengembalikan **true** jika kedua operand bernilai **true**.

```dart
void main() {
  bool result = true && false;
  print(result); // Output: false
}
```

### 2. Operator OR (`||`)

Mengembalikan **true** jika salah satu operand bernilai **true**.

```dart
void main() {
  bool result = true || false;
  print(result); // Output: true
}
```

### 3. Kombinasi Operator

Anda dapat mengombinasikan beberapa operator logika untuk membuat kondisi yang lebih kompleks.

```dart
void main() {
  bool a = true;
  bool b = false;

  print(a && !b); // Output: true
  print(a || b && !a); // Output: true
}
```

## Boolean dalam Operasi Perbandingan

Boolean juga sering digunakan dalam hasil operasi perbandingan, seperti:

1. **Lebih besar dari (`>`)** dan **lebih kecil dari (`<`)**.
2. **Sama dengan (`==`)** dan **tidak sama dengan (`!=`)**.

Contoh:

```dart
void main() {
  int x = 10;
  int y = 20;

  print(x > y);  // Output: false
  print(x < y);  // Output: true
  print(x == y); // Output: false
  print(x != y); // Output: true
}
```

## Boolean dalam Perulangan

Boolean juga digunakan untuk mengontrol perulangan dalam Dart. Contoh penggunaan dalam perulangan **while**:

```dart
void main() {
  int counter = 0;

  while (counter < 5) {
    print("Counter: $counter");
    counter++;
  }
}
```

Output:
```
Counter: 0
Counter: 1
Counter: 2
Counter: 3
Counter: 4
```

## Boolean sebagai Nilai Return

Boolean sering digunakan sebagai nilai kembalian dalam fungsi untuk menentukan suatu kondisi.

```dart
bool isEven(int number) {
  return number % 2 == 0;
}

void main() {
  print(isEven(10)); // Output: true
  print(isEven(7));  // Output: false
}
```

## Kesimpulan

Boolean adalah tipe data yang sederhana namun sangat penting dalam pemrograman Dart. Dengan boolean, Anda dapat:

- Melakukan pengkondisian (if-else).
- Menggunakan logika kompleks dengan operator seperti `&&`, `||`, dan `!`.
- Melakukan perbandingan antar nilai.
- Mengontrol perulangan dan logika aplikasi.

Pemahaman yang baik tentang boolean akan membantu Anda membuat logika aplikasi yang lebih efektif dan efisien.