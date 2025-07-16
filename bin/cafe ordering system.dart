import 'dart:io';

class MenuItem
{
  final String name;
  double price;
  int stock;

  static double totalSales = 0;

  MenuItem(this.name, this.price, this.stock);

  void order()
  {
    if(stock > 0)
    {
      print("Ordering $name for ₹$price");
      totalSales = totalSales + price;
      stock = stock - 1;
    }
    else
    {
      print("$name is out of stock");
    }
  }

  void applyDiscount(double percent)
  {
    price = price - (price * percent / 100);
    print("Discount applied. New price of $name is ₹$price");
  }
}

class Drink extends MenuItem
{
  Drink(String name, double price, int stock) : super(name, price, stock);
}

class Food extends MenuItem
{
  Food(String name, double price, int stock) : super(name, price, stock);
}

void main()
{
  int choice = 0;
  List<MenuItem> menu = [];

  Drink d1 = Drink("Coffee", 100, 5);
  Drink d2 = Drink("Tea", 50, 10);
  Food f1 = Food("Sandwich", 80, 8);
  Food f2 = Food("Burger", 120, 6);

  menu.add(d1);
  menu.add(d2);
  menu.add(f1);
  menu.add(f2);

  while(choice != 5)
  {
    print("----- Cafe Menu -----");
    for(int i = 0; i < menu.length; i++)
    {
      print("${i + 1}. ${menu[i].name} - ₹${menu[i].price} (Stock: ${menu[i].stock})");
    }

    print("5. Exit");
    print("Enter your choice to order:");
    choice = int.parse(stdin.readLineSync()!);

    if(choice >= 1 && choice <= 4)
    {
      menu[choice - 1].order();

      if(menu[choice - 1].name == "Burger")
      {
        menu[choice - 1].applyDiscount(10);
      }
    }
    else if(choice != 5)
    {
      print("Invalid choice");
    }
  }

  print("Total Sales: ₹${MenuItem.totalSales}");
}