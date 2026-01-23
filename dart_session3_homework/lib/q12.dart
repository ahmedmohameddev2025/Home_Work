// Question 12
// Create a Dart program that safely reads a phone number from a map. If the phone number is null,
// print a default message. Then update the phone number and print its length.
void main() {
  Map<String, String?> phoneNumber = {'phone': null};

  
  print(phoneNumber['phone'] ?? 'No number');

  // if (phoneNumber['phone']==null) {
  //   print('No number');
  // }
  phoneNumber['phone'] = '01022233344';
  print(phoneNumber['phone']!.length);
}
