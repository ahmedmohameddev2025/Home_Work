// Exercise 2:
// 2. a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.
// b) Print a sentence that includes all values using string interpolation.
// c) Change weight to a different value and print only the updated one.
void main() {
  String country = 'Egypt';
  int year = 2026;
  double weight = 100;
  bool likesCoding = true;
  print(
    'I\'m from $country.this year is $year.My weight is $weight,like coding: $likesCoding',
  );
  weight = 101;
  print(weight);
}
