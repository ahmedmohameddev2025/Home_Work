// Q3. Word Reversal & Vowel Count - Take a word from the user. - Print the word reversed, and also
// count how many vowels it has.
import 'dart:io';

void main() {
  print("Enter your word:");
  String word = stdin.readLineSync()!;

  String reversed = word.split('').reversed.join('');
  print("Reversed: $reversed");

  int vowels = 0;
  for (var ch in word.toLowerCase().split('')) {
    if ("aeiou".contains(ch)) {
      vowels++;
    }
  }

  print("Vowels count: $vowels");
}
