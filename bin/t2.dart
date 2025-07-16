import 'dart:io';

void main()
{
  int? ch;
  double? temp;

  print("1. Celsius to Fahrenheit");
  print("2. Fahrenheit to Celsius");
  print("Enter your choice:");
  ch = int.parse(stdin.readLineSync()!);

  if(ch == 1)
  {
    print("Enter Celsius:");
    temp = double.parse(stdin.readLineSync()!);
    double f = (temp * 9/5) + 32;
    print("Fahrenheit: $f");
  }
  else if(ch == 2)
  {
    print("Enter Fahrenheit:");
    temp = double.parse(stdin.readLineSync()!);
    double c = (temp - 32) * 5/9;
    print("Celsius: $c");
  }
  else
  {
    print("Invalid choice");
  }
}