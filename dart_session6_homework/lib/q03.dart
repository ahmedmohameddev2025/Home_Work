// Q3. Modify Attributes - Create a class Person with attributes name and age. - Create an object and
// set its initial values using a constructor. - Then change the age of the object and print the updated
// details.
void main() {
  Person person = Person(name: 'Ahmed', age: 24);
  person.age = 25;
  person.details();
}

class Person {
  String? name;
  int? age;

  Person({required String name, required int age}) {
    this.name = name;
    this.age = age;
  }

  //او
  // Person({this.name,this.age});

  void details() {
    print('Name; $name, Age: $age');
  }
}
