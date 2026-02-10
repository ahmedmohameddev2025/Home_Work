// Q1 Create a class City with attributes name and population. In main(), create two city objects and
// print their details.
void main() {
  City city1 = City("Sharkia", 100000);
  City city2 = City("Cairo", 100000);

  city1.details();
  city2.details();
}

class City {
  String name;
  int population;

  City(this.name, this.population);

  void details() {
    print("City: $name, Population: $population");
  }
}
