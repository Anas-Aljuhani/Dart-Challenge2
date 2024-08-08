import 'bank.dart';

void main() {
  BankAccount account = BankAccount();

  account.deposit(50);
  account.withdraw(7);
  account.history();
  account.currentBalance();
}
