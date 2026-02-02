// Q4. Simple List Analyzer - Let the user enter 5 numbers into a list. - Print the largest and smallest
// numbers, and then calculate the difference between them.
import 'dart:io';

void main() {
  List<int> numbers = [];

  for (int i = 0; i < 5; i++) {
    print("Enter number ${i + 1}:");
    numbers.add(int.parse(stdin.readLineSync()!));
  }

  int max = numbers[0];
  int min = numbers[0];

  for (var number in numbers) {
    if (number > max) max = number;
    if (number < min) min = number;
  }

  print("Largest = $max");
  print("Smallest = $min");
  print("Difference = ${max - min}");
}
