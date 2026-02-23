// 2. Food Delivery App – Orders & Menu
// Imagine you are building a food delivery app.- The app has a menu of food items (each with a name, price, and category like "Pizza" or "Drinks").- A user can add multiple items to an order.- The app should calculate the total price of the order.
void main() {
  FoodDeliveryApp app = FoodDeliveryApp();

  app.addMenuItem(MenuItem("Orange Juice", 20, "Drinks"));
  app.addMenuItem(MenuItem("Ice Cream", 40, "Desserts"));
  app.addMenuItem(MenuItem("French Fries", 30, "Fast Food"));
  app.addMenuItem(MenuItem("Water", 10, "Drinks"));


  print("Menu:");
  app.showMenu();


  Order order = Order();
  order.addItem(app.menu[0]);
  order.addItem(app.menu[2]);
  order.addItem(app.menu[3]);


  print("\nOrder Details:");
  order.showOrder();

  print("Total Price: ${order.totalPrice()}");
}

class MenuItem {
  String name;
  double price;
  String category;

  MenuItem(this.name, this.price, this.category);

  @override
  String toString() {
    return "$name ($category) - $price";
  }
}

class Order {
  List<MenuItem> _items = [];


  void addItem(MenuItem item) {
    _items.add(item);
  }


  double totalPrice() {
    double total = 0;
    for (var item in _items) {
      total += item.price;
    }
    return total;
  }


  void showOrder() {
    for (var item in _items) {
      print(item);
    }
  }
}

class FoodDeliveryApp {
  List<MenuItem> menu = [];

  void addMenuItem(MenuItem item) {
    menu.add(item);
  }

  void showMenu() {
    for (var item in menu) {
      print(item);
    }
  }
}
