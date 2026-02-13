// Q4
// Create a class Product with private fields _name and _price.- Reject empty names and negative prices in setters.- Add a computed getter discountedPrice that returns the price with a 10% discount applied.- In main(), demonstrate setting values and printing the original and discounted price.
void main() {
  Product p = Product();

  p.name = "Lap top";
  p.price = 40000;

  print("Original: ${p.price}");
  print("Discount: ${p.discountedPrice}");
}

class Product {
  String _name = "";
  double _price = 0;

  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    } else {
      print("Invalid name");
    }
  }

  set price(double value) {
    if (value >= 0) {
      _price = value;
    } else {
      print("Invalid price");
    }
  }

  String get name => _name;
  double get price => _price;

  double get discountedPrice => _price * 0.9;
}
