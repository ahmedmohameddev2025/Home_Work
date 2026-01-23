// Question 20
// Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
// have a parent. Use a switch statement on an area variable (general or restricted) to decide what
// message to print.
void main() {
  int age = 16;
  bool hasParent = true;
  String area = 'restricted';

  if (age < 18 && !hasParent) {
    print("Access denied");
    return;
  }

  switch (area) {
    case 'general':
      print("Welcome to general area");
      break;
    case 'restricted':
      print("Restricted access granted");
      break;
    default:
      print("Unknown area");
  }
}
