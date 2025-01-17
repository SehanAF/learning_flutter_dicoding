### **Paradigma Functional Programming di Dart**

Dart mendukung **multiparadigm programming**, yang berarti selain mendukung **Object-Oriented Programming (OOP)**, Dart juga dapat digunakan dengan gaya **Functional Programming (FP)**. Paradigma FP lebih menekankan pendekatan **deklaratif**, fokus pada *“apa yang harus diselesaikan”* dibandingkan *“bagaimana cara menyelesaikannya”* (gaya imperatif). 

---

### **Konsep dan Karakteristik Functional Programming**

Berikut adalah konsep utama yang mendefinisikan FP:

---

#### 1. **Pure Functions**
- **Definisi**: Fungsi murni adalah fungsi yang hasilnya hanya bergantung pada input (argumen) tanpa efek samping (*side effects*).
- **Karakteristik**:
  - Memanggil fungsi dengan argumen yang sama akan selalu menghasilkan nilai yang sama.
  - Tidak mengubah nilai variabel di luar fungsi (*immutable state*).

  **Contoh:**
  ```dart
  int sum(int num1, int num2) {
    return num1 + num2;
  }
  ```
  Jika kita memanggil `sum(2, 3)` kapan pun, hasilnya selalu `5`.

---

#### 2. **Recursion**
- **Definisi**: Iterasi pada FP dilakukan menggunakan **rekursi** (fungsi memanggil dirinya sendiri), bukan dengan *loop* seperti `for` atau `while`.
- Rekursi berhenti ketika mencapai **kasus dasar**.

  **Contoh: Menghitung Fibonacci secara rekursif**
  ```dart
  int fibonacci(int n) {
    if (n <= 0) return 0;
    if (n == 1) return 1;
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
  ```
  Fungsi `fibonacci(5)` akan menghasilkan `5` (urutan: 0, 1, 1, 2, 3, 5).

---

#### 3. **Immutable Variables**
- **Definisi**: Variabel bersifat **immutable**, sehingga nilainya tidak dapat diubah setelah dideklarasikan.
- Untuk menghindari perubahan nilai variabel, kita dapat membuat variabel baru untuk menyimpan data yang diperbarui.
- **Keuntungan**:
  - Mencegah perubahan tak terduga pada *state* aplikasi.
  - Meningkatkan keandalan kode.

  **Contoh Immutable Variabel:**
  ```dart
  final int x = 5;
  // x = x + 1; // Error, karena x bersifat immutable.
  final int y = x + 1; // Membuat variabel baru.
  print(y); // Output: 6
  ```

---

#### 4. **Functions are First-Class Citizen**
- **Definisi**: Fungsi diperlakukan sebagai *first-class citizen*, artinya:
  - Fungsi dapat disimpan dalam variabel.
  - Fungsi dapat digunakan sebagai argumen untuk fungsi lain.
  - Fungsi dapat menjadi nilai kembalian dari fungsi lain.

  **Higher-Order Functions (HOF):**
  - Fungsi yang mengambil fungsi lain sebagai argumen atau mengembalikan fungsi.

  **Contoh Higher-Order Function:**
  ```dart
  void printResult(int Function(int, int) operation, int a, int b) {
    print(operation(a, b));
  }

  int add(int x, int y) => x + y;

  void main() {
    printResult(add, 3, 4); // Output: 7
  }
  ```

---

### **Kesimpulan**
Functional Programming pada Dart memberikan pendekatan yang lebih aman, sederhana, dan elegan dalam menulis kode, terutama untuk aplikasi yang kompleks. Konsep **pure functions**, **recursion**, **immutable variables**, dan **first-class functions** adalah pilar utama yang perlu dikuasai untuk menerapkan paradigma ini.