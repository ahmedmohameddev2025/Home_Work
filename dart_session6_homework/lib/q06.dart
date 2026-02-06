// Q6. Sentence Analyzer - Ask the user to input a sentence. - Print how many words it contains.
// Then print the shortest word and the longest word from the sentence.

import 'dart:io';

void main() {
  print('Input a sentence:');
  String sentence = stdin.readLineSync()!.trim();

  // List<String> wordsSplit = sentence.split(' '); //لما يكون بين كل كلمتين مسافة واحدة فقط
  List<String> wordsSplit = sentence.split(RegExp(r'\s+'));//لما المستخد يدخل اكثر من مسافة بين كلمتين
  print(wordsSplit);

  print('it contains ${wordsSplit.length} words');

  String shortest = wordsSplit[0];
  String longest = wordsSplit[0];

  for (var word in wordsSplit) {
    if (word.length > longest.length) {
      longest = word;
    } else if (word.length < shortest.length) {
      shortest = word;
    }
  }
  print('Longest: $longest');
  print('Shortest: $shortest');

}
