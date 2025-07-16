import 'dart:io';

class BankAccount
{
  int accNo = 0;
  final String holderName;
  double balance = 0;

  static double totalBankBalance = 0;

  BankAccount(this.accNo, this.holderName, this.balance)
  {
    totalBankBalance = totalBankBalance + balance;
  }

  void deposit(double amt)
  {
    balance = balance + amt;
    totalBankBalance = totalBankBalance + amt;
    print("Deposited: $amt");
  }

  void withdraw(double amt)
  {
    if(amt <= balance)
    {
      balance = balance - amt;
      totalBankBalance = totalBankBalance - amt;
      print("Withdrawn: $amt");
    }
    else
    {
      print("Not enough balance");
    }
  }

  void showBalance()
  {
    print("Balance: $balance");
  }
}

class SavingsAccount extends BankAccount
{
  SavingsAccount(int accNo, String holderName, double balance) : super(accNo, holderName, balance);
}

class CheckingAccount extends BankAccount
{
  CheckingAccount(int accNo, String holderName, double balance) : super(accNo, holderName, balance);
}

void main()
{
  int choice = 0;
  BankAccount? acc;

  while(choice != 5)
  {
    print("1. Create Savings Account");
    print("2. Create Checking Account");
    print("3. Deposit");
    print("4. Withdraw");
    print("5. Exit");
    print("Enter your choice:");
    choice = int.parse(stdin.readLineSync()!);

    if(choice == 1 || choice == 2)
    {
      print("Enter Account Number:");
      int accNo = int.parse(stdin.readLineSync()!);

      print("Enter Holder Name:");
      String? name = stdin.readLineSync();

      print("Enter Opening Balance:");
      double bal = double.parse(stdin.readLineSync()!);

      if(choice == 1)
      {
        acc = SavingsAccount(accNo, name!, bal);
        print("Savings Account Created");
      }
      else
      {
        acc = CheckingAccount(accNo, name!, bal);
        print("Checking Account Created");
      }
    }
    else if(choice == 3)
    {
      if(acc != null)
      {
        print("Enter amount to deposit:");
        double amt = double.parse(stdin.readLineSync()!);
        acc.deposit(amt);
      }
    }
    else if(choice == 4)
    {
      if(acc != null)
      {
        print("Enter amount to withdraw:");
        double amt = double.parse(stdin.readLineSync()!);
        acc.withdraw(amt);
      }
    }
  }

  print("Total Bank Balance: ${BankAccount.totalBankBalance}");
}