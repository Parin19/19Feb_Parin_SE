import 'dart:io';

void main()
{
  double? r;
  const double pi = 3.14;

  print("Enter radius:");
  r = double.parse(stdin.readLineSync()!);

  double area = pi * r * r;
  double circum = 2 * pi * r;

  print("Area: $area");
  print("Circumference: $circum");
}