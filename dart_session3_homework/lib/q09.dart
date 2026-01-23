// Question 9
// Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
// count with the original list length and print a message if duplicates were removed.
void main() {
  List<int> numbers = [1, 1, 2, 2, 3, 3];
  Set<int> Uniquenumbers = numbers.toSet();
  if (numbers.length > Uniquenumbers.length) {
    print('duplicates were removed');
  } else {
    print('duplicates were not removed');
  }
}
