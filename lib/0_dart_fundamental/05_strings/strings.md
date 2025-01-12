# Strings dalam Dart

String adalah tipe data yang digunakan untuk menyimpan data dalam bentuk teks. String pada Dart dapat didefinisikan dengan menggunakan **tanda petik satu** (`'`) maupun **tanda petik dua** (`"`). Dart memungkinkan penggunaan keduanya agar lebih fleksibel dalam berbagai situasi.

```dart
void main() {
  String singleQuote = 'Ini adalah String';
  String doubleQuote = "Ini juga String";

  print(singleQuote);
  print(doubleQuote);
}
```

## Penggunaan Tanda Petik

Anda dapat menggunakan tanda petik secara bergantian, terutama jika teks mengandung tanda petik di dalamnya. Contoh:

```dart
void main() {
  print('"What do you think of Dart?" he asked');
}
```

Namun, bagaimana jika teks Anda mengandung **kedua jenis tanda petik**? Misalnya:

```dart
print('"I think it's great!" I answered confidently');
```

Kode di atas akan menghasilkan **error** karena ambiguitas. Untuk mengatasinya, Anda bisa menggunakan **escape character** (`\`) sebelum tanda petik untuk mengurangi ambiguitas. Contoh:

```dart
void main() {
  print('"I think it\'s great!" I answered confidently');
}
```

Selain tanda petik, backslash (`\`) juga berguna untuk **mengabaikan simbol khusus lainnya**, seperti backslash itu sendiri.

```dart
void main() {
  print("Windows path: C:\\Program Files\\Dart");
}
```

## String Interpolation

Dart menyediakan fitur **String interpolation** untuk memasukkan nilai dari variabel atau ekspresi ke dalam String. Anda bisa menggunakan simbol **`$`** untuk variabel atau **`${}`** untuk ekspresi yang lebih kompleks.

```dart
void main() {
  var name = 'Messi';
  print('Hello $name, nice to meet you.');
  print('1 + 1 = ${1 + 1}');
}
```

### Catatan Penggunaan Simbol Dollar ($)

Jika Anda perlu menampilkan tanda dollar sebagai mata uang, gunakan backslash (`\`) untuk membedakannya dari interpolasi.

```dart
void main() {
  print('Dia baru saja membeli komputer seharga \$1,000.00');
}
```

Atau, Anda juga bisa menggunakan **raw String** dengan menambahkan huruf **`r`** di awal String.

```dart
void main() {
  print(r'Dia baru saja membeli komputer seharga $1,000.00');
}
```

Raw String akan mengabaikan interpolasi atau simbol-simbol khusus lainnya.

## Unicode dan Runes

Dart mendukung penggunaan **Unicode** untuk menyisipkan karakter khusus dalam String. Unicode adalah standar yang mendefinisikan nilai numerik unik untuk setiap huruf, angka, dan simbol yang digunakan di seluruh dunia.

Format Unicode: **`\uXXXX`**, di mana `XXXX` adalah nilai heksadesimal 4 digit. Contoh:

```dart
void main() {
  print('Hi \u2665');
}
```

Output:
```
Hi ♥
```

Jika nilai Unicode lebih panjang dari 4 digit, Anda bisa menggunakan format **`\u{X}`**, di mana `X` adalah panjang heksadesimal variabel. Contoh:

```dart
void main() {
  print('Emoji: \u{1F600}'); // Unicode untuk 😀
}
```

## Multi-line String

Dart juga mendukung **String multi-baris** dengan menggunakan tiga tanda petik (`'''` atau `"""`). Fitur ini sangat berguna untuk teks panjang atau format teks tertentu.

```dart
void main() {
  var multiLineString = '''
  Ini adalah contoh
  String multi-baris
  dalam Dart.
  ''';

  print(multiLineString);
}
```

## Operasi pada String

String di Dart memiliki banyak metode bawaan untuk memanipulasi teks, seperti:

- **`toUpperCase()`**: Mengubah String menjadi huruf besar.
- **`toLowerCase()`**: Mengubah String menjadi huruf kecil.
- **`trim()`**: Menghapus spasi di awal dan akhir String.
- **`contains()`**: Mengecek apakah String mengandung teks tertentu.
- **`replaceAll()`**: Mengganti teks tertentu dalam String.

Contoh:

```dart
void main() {
  var text = '   Dart is Fun!   ';

  print(text.toUpperCase()); // '   DART IS FUN!   '
  print(text.toLowerCase()); // '   dart is fun!   '
  print(text.trim()); // 'Dart is Fun!'
  print(text.contains('Fun')); // true
  print(text.replaceAll('Fun', 'Awesome')); // '   Dart is Awesome!   '
}
```

## Kesimpulan

String di Dart sangat fleksibel dan kuat. Dengan berbagai fitur seperti escape string, interpolation, raw string, Unicode, dan metode bawaan untuk manipulasi teks, Anda dapat dengan mudah mengelola teks dalam aplikasi Anda. Jangan lupa untuk memanfaatkan fitur-fitur ini agar pengelolaan String menjadi lebih efisien!
