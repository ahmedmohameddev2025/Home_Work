// Q1
// Create a class BankAccount with a private field _balance.- Add a getter balance that returns the balance.- Add a setter balance that prevents setting it to a negative value (print 'Invalid balance' if attempted).- In main(), demonstrate creating an account, updating the balance, and trying to set a negative
// balance.
void main() {
  BankAccount account = BankAccount();

  account.balance = 10000;
  print(account.balance);

  account.balance = -1000;
}

class BankAccount {
  double _balance = 0;
  set balance(double value) {
    if (value >= 0) {
      _balance = value;
    } else {
      print('Invalid balance');
    }
  }

  double get balance => _balance;
}
