# Dart: Mengenal Set

## Pendahuluan
`Set` adalah salah satu jenis koleksi di Dart yang hanya dapat menyimpan nilai-nilai unik. Hal ini menjadikannya sangat berguna saat Anda ingin menghindari adanya data duplikat dalam sebuah koleksi.

Berikut adalah beberapa fitur utama dari `Set`:
- Menyimpan elemen unik.
- Tidak mempertahankan urutan elemen.
- Menyediakan metode untuk manipulasi elemen seperti penambahan, penghapusan, serta operasi himpunan (union dan intersection).

Mari kita eksplorasi lebih lanjut dengan contoh-contoh kode.

---

## Deklarasi Set
Set dapat dideklarasikan dengan beberapa cara. Contoh berikut menunjukkan bagaimana mendeklarasikan `Set` dan bagaimana Dart secara otomatis menghapus nilai yang duplikat:

```dart
void main() {
  Set<int> anotherSet = Set.from([1, 4, 6, 4, 1]);

  print(anotherSet);
}

// Output:
// {1, 4, 6}
```

Pada contoh di atas:
- Set dibuat menggunakan `Set.from()`.
- Nilai duplikat (1 dan 4) otomatis dihapus oleh `Set`.

---

## Menambahkan Elemen ke Dalam Set
Untuk menambahkan elemen baru ke dalam `Set`, Anda dapat menggunakan metode `add()` untuk satu elemen atau `addAll()` untuk menambahkan beberapa elemen sekaligus.

```dart
void main() {
  var numberSet = {1, 4, 6};

  // Menambahkan elemen tunggal.
  numberSet.add(6); // Tidak akan ditambahkan karena sudah ada.

  // Menambahkan beberapa elemen sekaligus.
  numberSet.addAll({2, 2, 3});

  print(numberSet);
}

// Output:
// {1, 4, 6, 2, 3}
```

Pada contoh di atas:
- Nilai duplikat (6 dan 2) diabaikan saat ditambahkan.

---

## Menghapus Elemen dari Set
Untuk menghapus elemen tertentu dari `Set`, gunakan metode `remove()`.

```dart
void main() {
  var numberSet = {1, 4, 6, 2, 3};

  // Menghapus elemen tertentu.
  numberSet.remove(3);

  print(numberSet);
}

// Output:
// {1, 4, 6, 2}
```

Perhatikan bahwa metode `remove()` menghapus elemen berdasarkan nilainya, bukan berdasarkan indeks.

---

## Mengakses Elemen Berdasarkan Indeks
Untuk mengakses elemen berdasarkan indeks, gunakan metode `elementAt()`.

```dart
void main() {
  var numberSet = {1, 4, 6, 2, 3};

  // Mengakses elemen pada indeks ke-2.
  print(numberSet.elementAt(2));
}

// Output:
// 6
```

Catatan: Urutan elemen dalam `Set` tidak dijamin tetap sama.

---

## Operasi Himpunan: Union dan Intersection
Dart menyediakan metode `union` dan `intersection` untuk melakukan operasi himpunan:

- **Union**: Menggabungkan elemen dari dua `Set`.
- **Intersection**: Mengambil elemen yang sama dari kedua `Set`.

```dart
void main() {
  var setA = {1, 2, 4, 5};
  var setB = {1, 5, 7};

  var union = setA.union(setB);
  var intersection = setA.intersection(setB);

  print("Union: $union");
  print("Intersection: $intersection");
}

// Output:
// Union: {1, 2, 4, 5, 7}
// Intersection: {1, 5}
```

Pada contoh di atas:
- `union` menghasilkan gabungan elemen unik dari kedua `Set`.
- `intersection` menghasilkan elemen yang ada di kedua `Set`.

---

## Kesimpulan
Set adalah koleksi yang sangat berguna saat Anda perlu memastikan bahwa elemen-elemen dalam koleksi bersifat unik. Dengan fitur seperti `add()`, `remove()`, `elementAt()`, serta operasi himpunan seperti `union` dan `intersection`, Set menjadi salah satu struktur data yang esensial di Dart.

Cobalah berbagai operasi dengan `Set` untuk memahami penggunaannya lebih lanjut!

