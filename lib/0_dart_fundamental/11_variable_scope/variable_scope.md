### Variable Scope

Ketika Anda memisahkan kode Anda ke dalam blok atau fungsi terpisah, hal ini akan memengaruhi bagaimana variabel dapat digunakan. Setiap variabel memiliki **scope** atau lingkup, yang menentukan bagian kode mana yang dapat membaca dan menggunakannya. Variabel dianggap berada dalam satu scope jika masih berada dalam blok kurung kurawal `{}` yang sama.

#### Contoh Dasar

Berikut adalah contoh sederhana:

```dart
void main() {
  var isAvailableForDiscount = true;
  var price = 300000;
  num discount = 0;

  if (isAvailableForDiscount) {
    discount = 10 / 100 * price;
  }

  print('You need to pay: ${price - discount}');
}
```

Pada kode di atas, variabel `discount` tetap dapat diakses dari dalam blok `if` karena berada dalam satu scope fungsi `main()`. Namun, bagaimana jika kode tersebut dipisahkan menjadi dua fungsi untuk menghitung diskonnya?

#### Membagi Scope ke Dalam Fungsi

Saat variabel dideklarasikan dalam fungsi tertentu, scope-nya hanya mencakup fungsi tersebut. Contoh:

```dart
void main() {
  var price = 300000;
  var discount = checkDiscount(price);
  print('You need to pay: ${price - discount}');
}

num checkDiscount(num price) {
  num discount = 0; // Variabel lokal dengan scope di dalam fungsi checkDiscount
  
  if (price >= 100000) {
    discount = 10 / 100 * price;
  }

  return discount;
}
```

Pada kode di atas, variabel `discount` dalam fungsi `checkDiscount()` hanya berlaku di dalam fungsi tersebut dan berbeda dengan variabel `discount` pada fungsi `main()`.

#### Variabel Global

Variabel global dideklarasikan di luar blok kode apa pun. Variabel ini dapat diakses di mana saja dalam file yang sama.

```dart
var price = 300000;

void main() {
  var discount = checkDiscount(price); // Variabel global price diakses di main()
  print('You need to pay: ${price - discount}');
}

num checkDiscount(num price) {
  num discount = 0;
  
  if (price >= 100000) { // Variabel global price juga diakses di fungsi checkDiscount
    discount = 10 / 100 * price;
  }

  return discount;
}
```

Dengan pendekatan ini, variabel global `price` memiliki cakupan yang cukup luas sehingga dapat diakses bahkan hingga ke level pengondisian `if`.

#### Kesalahan Pemanggilan Variabel di Luar Scope

Pemanggilan variabel harus dilakukan setelah deklarasinya. Jika variabel dipanggil sebelum dideklarasikan, maka akan terjadi error. Berikut contoh kesalahan:

```dart
var price = 300000;

void main() {
  var discount = checkDiscount(price);
  print('You need to pay: ${price - discount}');
}

num checkDiscount(num price) {
  num discount = 0;

  if (!discountApplied) { // Pemanggilan variabel sebelum deklarasi, menyebabkan error
    if (price >= 100000) {
      discount = 10 / 100 * price;
      var discountApplied = true; // Deklarasi variabel terjadi setelah pemanggilan
    }
  }

  return discount;
}
```

Untuk memperbaiki kode tersebut, deklarasi variabel `discountApplied` harus dilakukan sebelum digunakan:

```dart
num checkDiscount(num price) {
  num discount = 0;
  var discountApplied = false; // Deklarasi variabel sebelum pemanggilan

  if (!discountApplied) {
    if (price >= 100000) {
      discount = 10 / 100 * price;
      discountApplied = true;
    }
  }

  return discount;
}
```

### Catatan Penting
- **Scope Lokal**: Variabel dideklarasikan dalam fungsi dan hanya dapat diakses di fungsi tersebut.
- **Scope Global**: Variabel dideklarasikan di luar semua fungsi dan dapat diakses di mana saja dalam file yang sama.
- **Hindari Deklarasi Ulang**: Jangan deklarasikan ulang variabel yang sudah ada di scope yang lebih luas kecuali benar-benar diperlukan.
- **Kesalahan Umum**: Memanggil variabel sebelum dideklarasikan adalah salah satu penyebab umum error dalam pemrograman.

Dengan memahami konsep scope, Anda dapat menulis kode yang lebih modular, terstruktur, dan mudah dipelihara.

