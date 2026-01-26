// Question 17
// Write a Dart program that formats a price tag string with a currency. Apply string methods such as
// toString, padLeft, and length to format and compare the results.
void main() {
  double price = 7.5;

  String tag = price.toString().padLeft(6, '\$') + " USD";

  print(tag);
  print(tag.length);
}
