// Exercise 7:
// 7. a) Start with List numbers = [4, 4, 5, 6, 6, 7].
// b) Convert it to a Set to remove duplicates and print it.
// c) Use add(), remove(), and contains() with the set, printing each result.
void main() {
  List<int> numbers = [4, 4, 5, 6, 6, 7];
  Set<int> uniqueNumbers = numbers.toSet();
  print(uniqueNumbers);
  uniqueNumbers.add(1);
  print(uniqueNumbers);
  uniqueNumbers.remove(7);
  print(uniqueNumbers);
  print(uniqueNumbers.contains(4));
}
