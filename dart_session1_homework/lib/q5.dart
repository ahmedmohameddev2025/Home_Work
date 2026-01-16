// Question 5
// What is the difference between var and dynamic in Dart? Provide an example of
// each.
void main() {
  var name = 'Ahmed'; //var: type is fixed after first value.
  dynamic value = 24;
  value = true; //dynamic: type can change anytime.
  print(name);
  print(value);
}
