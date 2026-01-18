// Exercise 10:
// 10. a) Demonstrate var vs dynamic: assign dynamic value first as an int, then as a String, printing
// after each.
// b) Create var greeting = 'Hi'; change it to another String and print.
// c) Declare num pi = 3.14159; print pi.toInt() and pi.toStringAsFixed(3).

//Answer
//var: type is fixed after first value
//dynamic: type can change anytime
void main() {
  dynamic value = 24;
  print(value);
  value = 'Ahmed';
  print(value);
  var greeting = 'Hi';
  greeting = 'اهلا';
  print(greeting);
  num pi = 3.14159;
  print(pi.toInt());
  print(pi.toStringAsFixed(3));
}
