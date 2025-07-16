class Product
{
  var name;
  var price;
}

class Cart
{
  List<Product> itemList = [];

  void addProduct(Product p)
  {
    itemList.add(p);
    print("Added ${p.name}");
  }

  double getTotal()
  {
    double total = 0;
    for(int i = 0; i < itemList.length; i++)
    {
      total = total + itemList[i].price;
    }
    return total;
  }
}

void main()
{
  Product p1 = Product();
  p1.name = "T-shirt";
  p1.price = 500;

  Product p2 = Product();
  p2.name = "Cap";
  p2.price = 200;

  Cart c = Cart();
  c.addProduct(p1);
  c.addProduct(p2);

  print("Total: ${c.getTotal()}");
}