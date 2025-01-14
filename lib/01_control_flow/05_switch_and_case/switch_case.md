# Switch dan Case dalam Dart

Ketika Anda membuat aplikasi yang memerlukan pengambilan keputusan berdasarkan banyak kondisi, penggunaan pernyataan `if` yang bertumpuk dapat menyebabkan kode menjadi sulit dibaca dan dikelola. Untuk mengatasi masalah ini, Dart menyediakan pernyataan `switch` yang memungkinkan pengecekan kondisi dengan lebih ringkas dan terorganisasi.

## Struktur Dasar Switch

Pernyataan `switch` digunakan untuk membandingkan suatu variabel atau ekspresi dengan beberapa nilai yang mungkin. Berikut adalah sintaks dasar:

```dart
switch (variable/expression) {
  case value1:
    // lakukan sesuatu
    break;
  case value2:
    // lakukan sesuatu
    break;
  ...
  default:
    // lakukan sesuatu jika tidak ada case yang cocok
}
```

### Penjelasan:
- **Variable/Expression**: Variabel atau ekspresi yang ingin diuji.
- **Case**: Setiap `case` mewakili nilai yang akan dibandingkan dengan variabel.
- **Break**: Digunakan untuk keluar dari blok `switch` setelah suatu kondisi terpenuhi.
- **Default**: Opsional, digunakan jika tidak ada nilai yang cocok dengan variabel. Mirip dengan `else` pada kontrol alur `if-else`.

## Contoh Implementasi

Berikut adalah contoh program kalkulator sederhana yang menggunakan `switch-case` untuk melakukan operasi aritmatika:

```dart
void main() {
  final firstNumber = 13;
  final secondNumber = 18;
  final operator = "+";

  switch (operator) {
    case '+':
      print('$firstNumber $operator $secondNumber = ${firstNumber + secondNumber}');
      break;
    case '-':
      print('$firstNumber $operator $secondNumber = ${firstNumber - secondNumber}');
      break;
    case '*':
      print('$firstNumber $operator $secondNumber = ${firstNumber * secondNumber}');
      break;
    case '/':
      if (secondNumber != 0) {
        print('$firstNumber $operator $secondNumber = ${firstNumber / secondNumber}');
      } else {
        print('Error: Division by zero is not allowed.');
      }
      break;
    default:
      print('Operator tidak dikenali.');
  }
}
```

### Output:
Jika `operator` bernilai `+`, maka output yang dihasilkan adalah:

```
13 + 18 = 31
```

Jika `operator` bernilai tidak valid, misalnya `^`, maka output yang dihasilkan adalah:

```
Operator tidak dikenali.
```

## Catatan Penting:
1. **Break**: Jika Anda tidak menyertakan keyword `break`, eksekusi akan terus berlanjut ke case berikutnya, meskipun kondisi tidak terpenuhi. Hal ini disebut "fall-through behavior".
2. **Tipe Data**: Pada Dart, nilai pada `case` harus memiliki tipe data yang sama dengan variabel pada `switch`. Nilai yang valid meliputi konstanta seperti `int`, `String`, dan `enum`.

## Studi Kasus Tambahan

### Aplikasi Hari dalam Seminggu
Program untuk menampilkan nama hari berdasarkan angka:

```dart
void main() {
  final day = 3;

  switch (day) {
    case 1:
      print('Senin');
      break;
    case 2:
      print('Selasa');
      break;
    case 3:
      print('Rabu');
      break;
    case 4:
      print('Kamis');
      break;
    case 5:
      print('Jumat');
      break;
    case 6:
      print('Sabtu');
      break;
    case 7:
      print('Minggu');
      break;
    default:
      print('Hari tidak valid.');
  }
}
```

Jika `day` bernilai `3`, output yang dihasilkan adalah:

```
Rabu
```

Jika `day` bernilai `8`, output yang dihasilkan adalah:

```
Hari tidak valid.
```

### Menggunakan Enum pada Switch
Dart mendukung penggunaan `enum` pada `switch`, yang berguna untuk meningkatkan kejelasan kode. Berikut contohnya:

```dart
enum TrafficLight { red, yellow, green }

void main() {
  final light = TrafficLight.red;

  switch (light) {
    case TrafficLight.red:
      print('Berhenti!');
      break;
    case TrafficLight.yellow:
      print('Bersiap.');
      break;
    case TrafficLight.green:
      print('Jalan.');
      break;
  }
}
```

Output berdasarkan nilai `light`:
- Jika `TrafficLight.red`: `Berhenti!`
- Jika `TrafficLight.yellow`: `Bersiap.`
- Jika `TrafficLight.green`: `Jalan.`

## Kesimpulan
- `Switch` adalah alat yang sangat berguna untuk menangani logika bercabang dengan banyak kondisi.
- Gunakan `switch` untuk membuat kode lebih bersih, terutama jika ada banyak kondisi yang perlu diperiksa.
- Pastikan Anda menggunakan `break` untuk mencegah eksekusi berlanjut ke case berikutnya.

Dengan memahami `switch` dan `case`, Anda dapat membuat aplikasi yang lebih terstruktur dan mudah dikelola. Happy coding! 🚀