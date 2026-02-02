// Q7. Sentence Word Counter - Ask the user for a short sentence. - Print how many words it contains
// and how many characters (excluding spaces).
import 'dart:io';

void main() {
  print("Enter your sentence:");
  String sentence = stdin.readLineSync()!;

  List<String> words = sentence.trim().split(RegExp(r'\s+'));
  int chars = sentence.replaceAll(" ", "").length;

  print("Words count = ${words.length}");
  print("Characters[no spaces] = $chars");
}
