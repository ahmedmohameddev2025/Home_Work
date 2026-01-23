// Question 16
// Write a Dart program that evaluates three integer variables with different logical and comparison
// expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
// one of the expressions.
void main() {
  int a = 10;
  int b = 20;
  int c = 30;

  bool ex1 = a < b && b < c;
  bool ex2 = a + b == c;
  bool ex3 = c > a;

  print(ex1);
  print(ex2);
  print(ex3);

  if (ex1) {
    print("Rule passed");
  } else {
    print("Rule failed");
  }
}
