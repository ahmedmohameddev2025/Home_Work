// Q8. Digits Operations - Ask the user for a number (e.g., 528). - Print the sum of its digits and also
// print the largest digit.
import 'dart:io';

void main() {
  print("Enter your number:");
  String input = stdin.readLineSync()!;

  int sum = 0;
  int maxDigit = 0;

  for (var ch in input.split('')) {
    int digit = int.parse(ch);
    sum += digit;
    if (digit > maxDigit) {
      maxDigit = digit;
    }
  }

  print("Sum of digits = $sum");
  print("Largest digit = $maxDigit");
}
