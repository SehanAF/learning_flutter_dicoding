# If and Else dalam Dart

Ketika mengembangkan sebuah program, sering kali kita harus membuat keputusan berdasarkan kondisi tertentu. Pada Dart, kita menggunakan pernyataan `if` untuk memeriksa kondisi tersebut. Berikut ini adalah penjelasan detail dan panduan tentang cara menggunakan `if`, `else`, dan ekspresi kondisional lainnya.

## Pernyataan `if`

Pernyataan `if` digunakan untuk menguji sebuah kondisi. Jika kondisi tersebut bernilai `true`, maka blok kode di dalamnya akan dijalankan. Jika kondisi bernilai `false`, blok kode tersebut dilewati.

Contoh:

```dart
void main() {
  var isRaining = true;

  print('Prepare before going to the office.');
  if (isRaining) {
    print("Oh. It's raining, bring an umbrella.");
  }
  print('Going to the office.');
}
```

Output:
```
Prepare before going to the office.
Oh. It's raining, bring an umbrella.
Going to the office.
```
Jika variabel `isRaining` diubah menjadi `false`, maka pernyataan di dalam blok `if` tidak akan dieksekusi, dan program akan langsung melanjutkan ke perintah berikutnya.

## Pernyataan `else`

Ketika kita ingin melakukan sesuatu jika kondisi tidak terpenuhi, kita bisa menggunakan pernyataan `else`.

Contoh:

```dart
void main() {
  var openHours = 8;
  var closedHours = 21;
  var now = 22;

  if (now > openHours && now < closedHours) {
    print("Hello, we're open");
  } else {
    print("Sorry, we've closed");
  }
}
```

Output jika `now` bernilai `22`:
```
Sorry, we've closed
```

## Pernyataan `else if`

Untuk memeriksa lebih dari satu kondisi, kita bisa menggunakan `else if`. Hal ini berguna ketika ada beberapa kemungkinan hasil yang harus diperiksa.

Contoh:

```dart
void main() {
  var score = 85;

  print('Nilai Anda: ${calculateScore(score)}');
}

String calculateScore(num score) {
  if (score > 90) {
    return 'A';
  } else if (score > 80) {
    return 'B';
  } else if (score > 70) {
    return 'C';
  } else if (score > 60) {
    return 'D';
  } else {
    return 'E';
  }
}
```

Output:
```
Nilai Anda: B
```

## Ekspresi Kondisional

Dart mendukung ekspresi kondisional yang memungkinkan kita menulis pernyataan `if-else` dalam satu baris kode.

### Operator Ternary

Operator ternary digunakan untuk menulis pernyataan `if-else` dalam satu baris:

```dart
// condition ? trueExpression : falseExpression
var shopStatus = now > openHours ? "Hello, we're open" : "Sorry, we've closed";
```

### Null-aware Operator

Operator ini digunakan untuk memeriksa apakah suatu nilai `null`. Jika nilai tersebut `null`, maka akan mengembalikan nilai alternatif.

```dart
// expression1 ?? expression2
var buyer = name ?? 'user';
```

Jika `name` tidak `null`, maka `buyer` akan berisi nilai dari `name`. Jika `name` adalah `null`, maka `buyer` akan berisi `'user'`.

## Tips dan Best Practices

1. **Gunakan Komentar untuk Kondisi Kompleks**:
   Tambahkan komentar pada kondisi yang kompleks agar lebih mudah dipahami.
   ```dart
   if (now > openHours && now < closedHours) { // Cek apakah toko sedang buka
     print("Hello, we're open");
   }
   ```

2. **Hindari Nested If Terlalu Dalam**:
   Gunakan pendekatan seperti `else if` atau refactoring ke dalam fungsi untuk mengurangi kedalaman.

3. **Manfaatkan Ekspresi Kondisional untuk Sederhana**:
   Untuk kasus sederhana, gunakan operator ternary atau null-aware operator.

Dengan memahami dan mengimplementasikan pernyataan `if`, `else`, dan ekspresi kondisional lainnya, Anda dapat membuat alur program yang lebih fleksibel dan mudah dipahami. Pastikan selalu memeriksa logika kondisi dengan baik untuk menghindari bug yang sulit ditemukan.

