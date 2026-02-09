// Q8 Ask the user to input a sentence. Print all the words that appear only once in the sentence. Also
// print the total count of unique words.
import 'dart:io';

void main() {
  print("Enter a sentence:");
  String sentence = stdin.readLineSync()!.toLowerCase();

  List<String> words = sentence.split(RegExp(r'\s+'));
  Map<String, int> count = {};

  for (var w in words) {
    count[w] = (count[w] ?? 0) + 1;
  }

  int uniqueCount = 0;

  for (var entry in count.entries) {
    if (entry.value == 1) {
      print(entry.key);
      uniqueCount++;
    }
  }

  print("Total unique words: $uniqueCount");
}

