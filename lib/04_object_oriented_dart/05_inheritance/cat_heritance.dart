import 'animal_heritance.dart';

class Cat extends Animal {
  final String furColor;

  Cat(String name, int age, double weight, String furColor)
      : this.furColor = furColor,
        super(name, age, weight);

  void meow() {
    print('$name is meowing.');
  }
}
