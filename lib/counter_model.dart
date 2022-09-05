import 'package:flutter/cupertino.dart';

class CounterModel with ChangeNotifier {
  int _counter = 0;
  String _name = "";
  String _family = "";

  getCounter() => _counter;

  getName() => _name;

  getFamily() => _family;

  // setCounter(int counter) => _counter = counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void decrementCounter() {
    _counter--;
    notifyListeners();
  }

  void readName(String value) {
    _name = value;
    notifyListeners();
  }

  void readFamily(String value) {
    _family = value;
    notifyListeners();
  }
}
