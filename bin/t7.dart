import 'dart:io';

void main()
{
  int? num;

  print("Enter number:");
  num = int.parse(stdin.readLineSync()!);

  bool isPrime = true;

  if(num < 2)
  {
    isPrime = false;
  }
  else
  {
    for(int i = 2; i < num; i++)
    {
      if(num % i == 0)
      {
        isPrime = false;
        break;
      }
    }
  }
  if(isPrime)
  {
    print("Prime");
  }
  else
  {
    print("Not Prime");
  }
}
