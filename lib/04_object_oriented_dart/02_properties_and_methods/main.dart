// lihat library animal.dart, and ini sebagai main.dart.

import 'animal.dart';

void main() {
  var dicodingCat = Animal('Gray', 2, 4.2);
  dicodingCat.eat();
  dicodingCat.sleep();
  dicodingCat.poop();

  print(dicodingCat.weight);
}
