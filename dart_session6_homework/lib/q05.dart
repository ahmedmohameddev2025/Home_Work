// Q5. Find Second Largest Number - Ask the user to enter 6 numbers in a list. - Print the largest
// number and the second largest number (without sorting the list).
import 'dart:io';

void main() {
  List<int> numbers = [];
  for (var i = 0; i < 6; i++) {
    print('Enter 6 numbers:');
    numbers.add(int.parse(stdin.readLineSync()!));
    print(numbers);
  }

  int largestNumber = numbers[0];
  int secondLargestNumber = numbers[0];

  for (var number in numbers) {
    if (number > largestNumber) {
      secondLargestNumber = largestNumber;
      largestNumber = number;
    } else if (number < largestNumber && number > secondLargestNumber) {
      secondLargestNumber = number;
    }
  }
  print("Largest number: $largestNumber");
  print("Second largest number: $secondLargestNumber");
}
