import 'animal_implicit_interface.dart';
import 'flyable.dart';

class Bird extends Animal implements Flyable {
  String featherColor;

  Bird(String name, int legCount, double weight, this.featherColor)
      : super(name, legCount, weight);

  @override
  void fly() {
    print('$name is flying');
  }
}
