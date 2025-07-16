class BankAccount
{
  var accNo;
  var holder;
  var balance = 0.0;

  void deposit(double amt)
  {
    balance = balance + amt;
    print("Amount deposited");
  }

  void withdraw(double amt)
  {
    if(amt <= balance)
    {
      balance = balance - amt;
      print("Amount withdrawn");
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

void main()
{
  BankAccount b = BankAccount();
  b.accNo = 12345;
  b.holder = "Parin";

  b.deposit(1000);
  b.withdraw(500);
  b.withdraw(600);
  b.showBalance();
}
