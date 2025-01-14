# While dan Do-While Loops

Perulangan merupakan salah satu elemen penting dalam pemrograman untuk menjalankan suatu blok kode berulang kali. Dart menyediakan metode perulangan **while** dan **do-while** yang sangat berguna untuk kasus di mana kita tidak tahu pasti jumlah iterasi yang diperlukan.

---

## While Loop

Perulangan **while** mengevaluasi ekspresi boolean sebelum menjalankan blok kode di dalamnya. Blok kode hanya akan dijalankan jika kondisi bernilai `true`.

### Contoh
Kode berikut menampilkan angka dari 1 hingga 100 menggunakan **while**:

```dart
void main() {
  var i = 1;

  while (i <= 100) {
    print(i);
    i++;
  }
}
```

### Penjelasan:
1. Variabel `i` diinisialisasi dengan nilai `1`.
2. Selama nilai `i` kurang dari atau sama dengan 100, blok kode di dalam **while** akan dijalankan.
3. Variabel `i` akan bertambah 1 setiap iterasi, sehingga akhirnya kondisi `i <= 100` akan bernilai `false` dan perulangan berhenti.

**While** sangat berguna untuk perulangan di mana jumlah iterasi tidak diketahui sebelumnya.

---

## Do-While Loop

Berbeda dengan **while**, perulangan **do-while** menjalankan blok kode terlebih dahulu sebelum mengevaluasi kondisi boolean. Hal ini berarti blok kode di dalam **do-while** akan selalu dijalankan setidaknya sekali.

### Contoh
Kode berikut menampilkan angka dari 1 hingga 100 menggunakan **do-while**:

```dart
void main() {
  var i = 1;

  do {
    print(i);
    i++;
  } while (i <= 100);
}
```

### Penjelasan:
1. Variabel `i` diinisialisasi dengan nilai `1`.
2. Blok kode di dalam **do** akan dijalankan terlebih dahulu, kemudian kondisi `i <= 100` dievaluasi.
3. Jika kondisi bernilai `true`, maka perulangan akan terus berlanjut.

---

## Infinite Loops

Salah satu hal yang harus dihindari saat menggunakan perulangan adalah **infinite loop** (perulangan tak berujung). Hal ini terjadi ketika kondisi perulangan tidak pernah bernilai `false`.

### Contoh
Berikut adalah contoh kode yang mengakibatkan **infinite loop**:

```dart
void main() {
  var i = 1;

  while (i < 5) {
    print(i);
  }
}
```

**Masalah**:
- Variabel `i` tidak pernah berubah nilainya, sehingga kondisi `i < 5` selalu bernilai `true`.
- Program akan mencetak angka `1` secara terus-menerus hingga aplikasi mengalami crash.

### Solusi
Pastikan ada mekanisme untuk mengubah kondisi sehingga perulangan akan berhenti pada saat yang tepat. Contoh revisi kode:

```dart
void main() {
  var i = 1;

  while (i < 5) {
    print(i);
    i++;
  }
}
```

---

## Challenge

Sekarang, mari kita uji pemahaman Anda. Buatlah program Dart yang menghasilkan output seperti berikut menggunakan **while** atau **do-while**:

```
**********
*********
********
*******
******
*****
****
***
**
*
```

### Solusi
Berikut adalah salah satu implementasi menggunakan **while**:

```dart
void main() {
  var rows = 10;

  while (rows > 0) {
    print('*' * rows);
    rows--;
  }
}
```

### Penjelasan:
1. Variabel `rows` diinisialisasi dengan nilai `10`.
2. Selama nilai `rows` lebih besar dari 0, blok kode di dalam **while** akan dijalankan.
3. Pada setiap iterasi, `rows` akan berkurang 1 hingga kondisi tidak terpenuhi.

### Alternatif Menggunakan Do-While

```dart
void main() {
  var rows = 10;

  do {
    print('*' * rows);
    rows--;
  } while (rows > 0);
}
```

Keduanya menghasilkan output yang sama.

---

## Kesimpulan
- **While** cocok digunakan ketika Anda tidak tahu pasti jumlah iterasi tetapi memiliki kondisi berhenti yang jelas.
- **Do-while** digunakan jika Anda ingin memastikan blok kode dijalankan setidaknya sekali.
- Hindari **infinite loop** dengan memastikan kondisi perulangan dapat menjadi `false`.

Dengan memahami kedua jenis perulangan ini, Anda dapat menangani berbagai kebutuhan perulangan dalam program Anda dengan lebih fleksibel dan efisien.

