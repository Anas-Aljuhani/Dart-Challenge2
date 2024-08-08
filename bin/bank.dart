class BankAccount {
  double balance = 0;
  List<String> tranHistory = [];

  void deposit(double amount) {
    if (amount <= 0) {
      print('must be above 0');
    }
    balance = amount + balance;
    tranHistory.add('Deposited: $amount');
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('must be above 0');
    }
    if (amount > balance) {
      print('above limit');
    }
    balance -= amount;
    tranHistory.add('Withdrew: $amount');
  }

  void display() {
    print('Current balance: $balance');
  }

  void history() {
    print('Transaction history:');
    for (var transaction in tranHistory) {
      print(transaction);
    }
  }

  void currentBalance() {
    print(balance);
  }
}
