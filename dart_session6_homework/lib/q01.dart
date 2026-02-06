// Q1. Class with Method - Create a class Calculator with two attributes: num1 and num2. - Add a
// method addNumbers() that prints the sum of the two numbers. - Create an object in main() and call
// the method.
void main() {
  Calculator calc = Calculator();
  calc.num1 = 5;
  calc.num2 = 5;

  calc.addNumbers();
}

class Calculator {
  int? num1;
  int? num2;
  void addNumbers() {
    int sum = num1! + num2!;
    print(sum);
  }
}
