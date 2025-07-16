class Book
{
  var title;
  var author;
  var year;

  void display()
  {
    print("Title: $title");
    print("Author: $author");
    print("Year: $year");
  }

  void checkOld()
  {
    if(2025 - year > 10)
    {
      print("Book is older than 10 years");
    }
    else
    {
      print("Book is not that old");
    }
  }
}

void main()
{
  Book b = Book();
  b.title = "Flutter for Beginners";
  b.author = "Alex";
  b.year = 2011;

  b.display();
  b.checkOld();
}