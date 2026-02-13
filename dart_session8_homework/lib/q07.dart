// Q7
// Ask the user to input a list of integers.- Print the largest number, the smallest number, and their difference.- Calculate the average of the list.- Print all numbers that are above the average.- Finally, print how many numbers are even and how many are odd in the list.
import 'dart:io';

void main() {
  List<int> numbers = [];

  print("Enter numbers (enter 0 to stop):");
  while (true) {
    int number = int.parse(stdin.readLineSync()!);
    if (number == 0) break;
    numbers.add(number);
  }

  int max = numbers[0];
  int min = numbers[0];
  int sum = 0;
  int even = 0;
  int odd = 0;

  for (var number in numbers) {
    if (number > max) max = number;
    if (number < min) min = number;
    sum += number;
    if (number % 2 == 0) {
      even++;
    } else {
      odd++;
    }
  }

  double avg = sum / numbers.length;

  print("Max: $max");
  print("Min: $min");
  print("Difference: ${max - min}");
  print("Average: $avg");

  print("Above average:");
  for (var number in numbers) {
    if (number > avg) print(number);
  }

  print("Even count: $even");
  print("Odd count: $odd");
}
