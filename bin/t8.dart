import 'dart:io';

void main()
{
  double? a, b;
  String? op;

  print("Enter first number:");
  a = double.parse(stdin.readLineSync()!);

  print("Enter operator (+ - * /):");
  op = stdin.readLineSync();

  print("Enter second number:");
  b = double.parse(stdin.readLineSync()!);

  if(op == "+")
  {
    print("Result: ${a + b}");
  }
  else if(op == "-")
  {
    print("Result: ${a - b}");
  }
  else if(op == "*")
  {
    print("Result: ${a * b}");
  }
  else if(op == "/")
  {
    print("Result: ${a / b}");
  }
  else
  {
    print("Invalid operator");
  }
}