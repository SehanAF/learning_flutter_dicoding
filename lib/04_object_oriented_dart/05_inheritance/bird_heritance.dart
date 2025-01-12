import 'animal_heritance.dart';

class Bird extends Animal {
  final String featherColor;

  Bird(String name, int age, double weight, String featherColor)
      : this.featherColor = featherColor,
        super(name, age, weight);

  void fly() {
    print('$name is flying');
  }
}
