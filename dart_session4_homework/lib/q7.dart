// Q7
// Create a program with the scores [10, 0, 20, 30]. Ignore the zeros, add the other numbers together,
// and print the total.
void main() {
  List<int> scores = [10, 0, 20, 30];
  int sum = 0;

  for (int i = 0; i < scores.length; i++) {
    if (scores[i] != 0) {
      sum += scores[i];
    }
  }

  print(sum);
}

//حل اخر
// void main() {
//   List<int> scores = [10, 0, 20, 30];
//   int sum = 0;

//   for (var score in scores) {
//     if (score != 0) {
//       sum += score;
//     }
//   }

//   print(sum);
// }
