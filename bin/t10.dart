import 'dart:io';

void main()
{
  String? str;

  print("Enter string:");
  str = stdin.readLineSync();

  String rev = str!.split('').reversed.join();

  if(str == rev)
  {
    print("Palindrome");
  }
  else
  {
    print("Not Palindrome");
  }
}