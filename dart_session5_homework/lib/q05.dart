// Q5. Multiplication Table with Sum - Ask the user for a number. - Print its multiplication table up to
// 10, then calculate the sum of all results.
import 'dart:io';

void main() {
  print("Enter your number:");
  int number = int.parse(stdin.readLineSync()!);

  int sum = 0;

  for (int i = 1; i <= 10; i++) {
    int result = number * i;
    print("$number x $i = $result");
    sum += result;
  }

  print("Sum of table = $sum");
}
