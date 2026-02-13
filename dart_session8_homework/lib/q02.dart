// Q2
// Create a class Car with private fields _brand and _year.- Add setters that reject empty brand names and years less than 1886 (first car invention).- Add getters for both.- In main(), demonstrate creating two car objects (one valid, one invalid input).
void main() {
  Car car1 = Car();
  car1.brand = "Tesla";
  car1.year = 2024;
  print("${car1.brand}, ${car1.year}");

  Car car2 = Car();
  car2.brand = "";
  car2.year = 2022;
}

class Car {
  String _brand = "";
  int _year = 0;

  set brand(String value) {
    if (value.isNotEmpty) {
      _brand = value;
    } else {
      print("Invalid brand");
    }
  }

  set year(int value) {
    if (value >= 1886) {
      _year = value;
    } else {
      print("Invalid year");
    }
  }

  String get brand => _brand;
  int get year => _year;
}
