// Question 19
// Write a Dart program that converts a list of names to a set of unique values. Create a map with
// counts of occurrences(عدد اسماء المتكررة). Compare lengths and print a message if a specific name appears more than
// once.
void main() {
  List<String> names = ['Ahmed', 'Salah', 'Ahmed', 'Mohamed'];

  Set<String> uniqueNames = names.toSet();

  Map<String, int> counts = {};

  for (var name in names) {
    counts[name] = (counts[name] ?? 0) + 1;
  }

  if (counts['Ahmed']! > 1) {
    print("Ahmed appears more than once");
  }

  print(uniqueNames.length);
}
