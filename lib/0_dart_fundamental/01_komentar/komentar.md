# Komentar dalam Dart

Sebelum memulai aplikasi yang lebih kompleks, ada satu hal penting yang perlu kita ketahui, yaitu instruksi ke komputer untuk mengabaikan bagian tertentu dari suatu program. Kode yang ditulis dalam program tetapi tidak dijalankan oleh komputer disebut **"comments"**.

Sebuah komentar akan dilewatkan selama proses kompilasi, sehingga tidak memengaruhi alur program yang kita tulis. Komentar sangat berguna sebagai dokumentasi yang menjelaskan kode yang kita tulis.

## Jenis-Jenis Komentar di Dart

Dart mendukung tiga jenis komentar:

### 1. Komentar Satu Baris
Komentar satu baris diawali dengan tanda `//` dan berakhir pada akhir baris tersebut.

```dart
// Ini adalah komentar satu baris
```

### 2. Komentar Multi-Baris
Komentar ini memungkinkan kita menuliskan beberapa baris komentar. Dimulai dengan `/*` dan diakhiri dengan `*/`.

```dart
/*
  Ini adalah komentar multi-baris.
  Kita dapat menuliskan banyak baris komentar di sini.
*/
```

### 3. Komentar Dokumentasi
Komentar ini diawali dengan `///` (untuk satu baris) atau `/**` (untuk multi-baris). Komentar dokumentasi digunakan untuk mendokumentasikan fungsi, kelas, atau elemen lain dalam kode.

- Kompiler Dart akan mengabaikan semua teks kecuali yang terdapat di dalam kurung siku `[ ]`.
- Di dalam kurung siku, Anda dapat merujuk ke nama kelas, variabel, atau fungsi.

**Contoh Komentar Dokumentasi:**

```dart
/// Fungsi [main] akan menampilkan dua output.
/// Output pertama menampilkan teks, dan output kedua menampilkan hasil dari fungsi [hitung].
void main() {
  // Mencetak teks ke konsol
  print('Halo Dart! Dart hebat.');

  // Mencetak hasil dari fungsi hitung
  print('6 * 7 = ${hitung()}');
}

/// Fungsi [hitung] mengembalikan hasil perkalian 6 * 7.
int hitung() {
  return 6 * 7;
}
```

**Output:**
```
Halo Dart! Dart hebat.
6 * 7 = 42
```

## Tips Menulis Komentar yang Baik

Menulis komentar adalah praktik yang baik dalam pengembangan perangkat lunak. Namun, komentar yang buruk dapat lebih merugikan daripada tidak ada komentar sama sekali. Oleh karena itu, pastikan komentar Anda:

1. **Jelas dan Relevan**: Tulis komentar yang memberikan informasi tambahan tentang kode.
2. **Spesifik**: Hindari komentar yang terlalu umum atau tidak menjelaskan tujuan kode.
3. **Diperbarui**: Pastikan komentar tetap relevan saat kode berubah.

### Interaksi dengan IDE
Jika Anda menggunakan IDE seperti VS Code atau IntelliJ IDEA, Anda dapat menekan `Ctrl` (atau `Cmd` di macOS) dan mengklik teks dalam kurung siku `[ ]`. Ini akan membawa Anda langsung ke definisi kode yang dirujuk.

Dengan memahami dan menerapkan komentar dengan baik, Anda dapat meningkatkan keterbacaan dan pemeliharaan kode Anda. Selamat mencoba!

