// Q2. Class with Constructor - Create a class Car with attributes brand and year. - Add a constructor
// to set the values when creating the object. - In main(), create two car objects with different data and
// print their details.
void main() {
  Car car1 = Car(brand: 'Tesla', year: 2024);
  Car car2 = Car(brand: 'Kia', year: 2026);
  car1.details();
  car2.details();
}

class Car {
  String? brand;
  int? year;

  Car({required String brand, required int year}) {
    this.brand = brand;
    this.year = year;
  }

  // او
  // Car({this.brand, this.year});

  void details() {
    print("Brand: $brand, Year: $year");
  }
}
