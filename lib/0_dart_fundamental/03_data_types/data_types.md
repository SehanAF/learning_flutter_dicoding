# Tipe Data di Dart  

Pada materi sebelumnya, kita telah mempelajari tentang variabel yang dapat menyimpan nilai. Jadi, bagaimana komputer membedakan antara variabel yang bernilai angka atau teks? Dan mengapa penting untuk bisa membedakannya?  

Dart menyediakan berbagai **tipe data** yang mewakili jenis data yang dapat kita gunakan dan bagaimana data tersebut dioperasikan. Dengan adanya tipe data, komputer dapat menghindari operasi yang tidak mungkin (seperti perkalian huruf alfabet) dan membantu meminimalisasi bug dalam program.

---

## **Tipe Data pada Dart**  

Dart mendukung beberapa tipe data utama, antara lain:  

| **Tipe**   | **Deskripsi**                                 | **Contoh**                    |  
|------------|-----------------------------------------------|--------------------------------|  
| **int**    | Bilangan bulat                                | `5`, `-7`, `0`                |  
| **double** | Bilangan desimal                              | `3.14`, `18.0`, `-12.12`      |  
| **num**    | Bilangan bulat dan desimal                   | `5`, `3.14`, `-99.00`         |  
| **bool**   | Nilai boolean                                 | `true`, `false`               |  
| **String** | Teks yang terdiri dari 0 atau lebih karakter  | `'Halo Dart'`, `'A'`, `''`    |  
| **List**   | Koleksi data berbentuk daftar                | `[1, 2, 3]`, `['a', 'b']`     |  
| **Set**    | Koleksi data unik                            | `{1, 2, 3}`, `{‘x’, ‘y’}`     |  
| **Map**    | Pasangan key-value                           | `{'x': 4, 'y': 10}`           |  
| **dynamic**| Tipe data fleksibel yang bisa berubah-ubah    | `x = 10; x = 'Hello'`         |  

---

## **Deklarasi dan Inisialisasi**  

Dart mendukung **type inference**, sehingga ketika kita mendeklarasikan variabel menggunakan kata kunci `var`, Dart akan secara otomatis menentukan tipe data berdasarkan nilai yang diberikan.  

```dart
var greetings = 'Hello Dart!'; // String
var myAge = 20;               // int
```  

Namun, untuk mempermudah proses debugging dan menghindari kebingungan, kita juga dapat mendeklarasikan tipe data secara eksplisit.  

```dart
String greetings = 'Hello Dart!';
int myAge = 20;
```  

### **Variabel Tanpa Inisialisasi**  

Variabel dapat dideklarasikan tanpa langsung memberikan nilai awal:  

```dart
int myNumber;  
myNumber = 10;  
print(myNumber); // Output: 10
```  

Jika variabel tidak diinisialisasi, maka secara default akan memiliki nilai `null`.  

---

## **Perbedaan `final` dan `const`**  

Selain `var` dan deklarasi biasa, Dart memiliki dua jenis variabel khusus untuk nilai konstan:  

- **`final`**: Digunakan untuk nilai yang hanya diinisialisasi sekali saat runtime.  
- **`const`**: Digunakan untuk nilai konstan yang diketahui saat compile time.  

Contoh penggunaan:  

```dart
final currentYear = 2025; // Nilai tetap setelah inisialisasi  
const pi = 3.14;         // Nilai tetap selama runtime dan compile time  
```

Perbedaan utama antara `final` dan `const` adalah kapan nilai tersebut ditentukan.  

---

## **Tipe Data Dynamic**  

Ketika kita tidak mendeklarasikan tipe data secara eksplisit, Dart menetapkan tipe **dynamic**. Ini membuat variabel dapat menyimpan nilai dengan tipe data apa pun.  

```dart
var x; // dynamic  
x = 10;  
x = 'Dart is awesome';  
print(x); // Output: Dart is awesome  
```  

Namun, jika kita mendeklarasikan tipe data tertentu, maka kita tidak dapat mengubahnya:  

```dart
int x = 10;  
x = 'Dart is awesome'; // Error: A value of type 'String' can't be assigned to a variable of type 'int'.
```  

---

## **Input dan Output**  

Dart memungkinkan kita menerima input dari pengguna menggunakan fungsi `stdin.readLineSync()`. Untuk menggunakannya, kita perlu mengimpor pustaka `dart:io`.  

Contoh program sederhana:  

```dart
import 'dart:io';

void main() {
  stdout.write('Masukkan nama Anda: ');  
  String name = stdin.readLineSync()!;  

  stdout.write('Masukkan usia Anda: ');  
  int age = int.parse(stdin.readLineSync()!);  

  print('Halo $name, usia Anda $age tahun');  
}
```  

### **Penjelasan Kode**  

1. **`stdout.write`** digunakan untuk menampilkan teks tanpa membuat baris baru.  
2. **`stdin.readLineSync()`** membaca input pengguna dalam bentuk teks (`String`).  
3. **`int.parse()`** digunakan untuk mengonversi teks menjadi angka.  
4. **`!`** memastikan bahwa input tidak bernilai `null`.  

---

## **Tips dan Best Practices**  

1. **Gunakan tipe data eksplisit jika memungkinkan** untuk meningkatkan keterbacaan kode.  
   ```dart
   int number = 10; // Lebih jelas daripada var number = 10;
   ```  

2. **Gunakan `final` dan `const` untuk nilai yang tidak berubah** agar program lebih aman.  
   ```dart
   final maxScore = 100;
   const pi = 3.14;
   ```  

3. **Hindari penggunaan `dynamic` kecuali benar-benar diperlukan**.  

4. **Tambahkan komentar pada kode Anda** untuk membantu pemahaman:  
   ```dart
   // Menampilkan pesan ke pengguna
   print('Hello, Dart!');
   ```  
