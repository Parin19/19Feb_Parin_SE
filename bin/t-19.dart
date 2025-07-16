class Vehicle
{
  void show()
  {
    print("This is a vehicle");
  }
}

class Car extends Vehicle
{
  void show()
  {
    print("Type: Car");
    print("Fuel: Petrol");
    print("Speed: 180");
  }
}

class Bike extends Vehicle
{
  void show()
  {
    print("Type: Bike");
    print("Fuel: Petrol");
    print("Speed: 120");
  }
}

void main()
{
  Car c = Car();
  Bike b = Bike();

  c.show();
  b.show();
}