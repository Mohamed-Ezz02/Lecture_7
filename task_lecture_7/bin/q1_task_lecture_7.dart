class BankAccount {
  final String _accountNumber;
  double _balance;

  BankAccount(this._accountNumber, this._balance);

  String get accountNumber => _accountNumber;
  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited: \$${amount.toStringAsFixed(2)}. Current Balance: \$${_balance.toStringAsFixed(2)}');
    } else {
      print('Invalid deposit amount.');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrawn: \$${amount.toStringAsFixed(2)}. Remaining Balance: \$${_balance.toStringAsFixed(2)}');
    } else {
      print('Withdrawal denied: Insufficient funds or invalid amount.');
    }
  }
}

void main() {
  BankAccount myAccount = BankAccount("ACC-12345", 500.0);
  
  print('Account Number: ${myAccount.accountNumber}');
  print('Initial Balance: \$${myAccount.balance}');
  
  myAccount.deposit(150.0);
  myAccount.withdraw(200.0);
  myAccount.withdraw(600.0); 
}