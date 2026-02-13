// Q5
// Create a class Book with private fields _title and _pages.- Add setters: reject empty titles and pages ≤ 0.- Add a getter title and a computed getter readingTime that assumes 2 minutes per page.- In main(), create a book, print its title and estimated reading time.
void main() {
  Book b = Book();

  b.title = "Ahmed Mohamed";
  b.pages = 120;

  print(b.title);
  print("Reading time: ${b.readingTime} minutes");
}

class Book {
  String _title = "";
  int _pages = 0;

  set title(String value) {
    if (value.isNotEmpty) {
      _title = value;
    } else {
      print("Invalid title");
    }
  }

  set pages(int value) {
    if (value > 0) {
      _pages = value;
    } else {
      print("Invalid pages");
    }
  }

  String get title => _title;
  int get readingTime => _pages * 2;
}
