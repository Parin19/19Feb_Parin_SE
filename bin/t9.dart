import 'dart:io';

void main()
{
  int? num;
  int fact = 1;

  print("Enter a number:");
  num = int.parse(stdin.readLineSync()!);

  for(int i = 1; i <= num; i++)
  {
    fact = fact * i;
  }

  print("Factorial is: $fact");
}
