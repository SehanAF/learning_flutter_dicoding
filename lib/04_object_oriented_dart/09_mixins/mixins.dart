// Kode ini mendemonstrasikan penggunaan mixin di Dart.
// Mixin adalah kelas yang dapat di-extend oleh kelas lain
// tanpa menggunakan inheritance.
// Dalam contoh ini, kita memiliki kelas Musician yang
// meng-implementasikan mixin Dancer dan Singer.
// Kita juga memiliki kelas Performer yang di-extend
// oleh mixin Dancer dan Singer.
// Dengan menggunakan mixin, kita dapat membuat kelas
// Musician yang dapat melakukan dua hal sekaligus, yaitu
// menari dan menyanyi.

import 'package:learning_flutter_dicoding/04_object_oriented_dart/09_mixins/class_family.dart';

void main() {
  var LadyGaga = Musician();

  LadyGaga.perform();
}

mixin Dancer implements Performer {
  @override
  void perform() {
    print('Dancing');
  }
}

mixin Singer implements Performer {
  @override
  void perform() {
    print('Singing');
  }
}

class Musician extends Performer with Dancer, Singer {
  void showTime() {
    perform();
  }
}
