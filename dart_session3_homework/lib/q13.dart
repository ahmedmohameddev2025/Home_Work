// Question 13
// Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
// statement to print a message for each grade.
void main() {
  int mark = 90;
  String grade;

  if (mark >= 85) {
    grade = 'A';
  } else if (mark >= 75) {
    grade = 'B';
  } else if (mark >= 60) {
    grade = 'C';
  } else {
    grade = 'D';
  }

  switch (grade) {
    case 'A':
      print("Excellent");
      break;
    case 'B':
      print("Very Good");
      break;
    case 'C':
      print("Good");
      break;
    default:
      print("Weak");
  }
}

