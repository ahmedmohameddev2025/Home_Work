// Q4. Class with Default Attribute Value - Create a class Product with attributes name and price.
// Give price a default value of 0. - Create two objects: one with a custom price and one with the
// default price. Print their details.
void main() {
  Product product1 = Product(name: 'Phone', price: 10000);
  Product product2 = Product(name: 'Laptop');
  product1.details();
  product2.details();
}

class Product {
  String? name;
  double? price;

  Product({required String name, double price = 0}) {
    this.name = name;
    this.price = price;
  }
  // او
  // Product({required this.name, this.price=0});

  void details() {
    print('Name: $name , Price: $price');
  }
}
