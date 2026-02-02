// Q6. Number Guessing (3 Tries) - Generate a random number between 1 and 20. - Let the user
// guess up to 3 times. If they fail, reveal the correct number.
import 'dart:io';
import 'dart:math';

void main() {
  int secret = Random().nextInt(20) + 1;

  for (int i = 1; i <= 3; i++) {
    print("Guess your number (try $i):");
    int guess = int.parse(stdin.readLineSync()!);

    if (guess == secret) {
      print("Correct");
      return;
    }
  }

  print("Failed, The correct number was $secret");
}
