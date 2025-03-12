import 'dart:io';

void main(){
  ShoppingCart cart = new ShoppingCart();
  cart.showMenu();
}

class Product{
  String name;
  double price;

  Product(this.name,this.price);
}

class ShoppingCart{
  List<Product> products = [Product('laptop', 200),Product('MacBook', 2000)];
  List cart = [];

  void showMenu(){
    print("Menu");
    print("1. Add Product to cart: ");
    print("2. view Product in cart: ");
    stdout.write("Enter Choice: ");
    String? choice = stdin.readLineSync();
    int? input = int.tryParse(choice ?? "") ?? 0;
    if(input == 1){
      showProduct();
    }
    else if(input == 2){
      viewCart();
    }
    else{
      print("invalid choice");
    }
  }

  void showProduct(){
    var count = 0;
    for (var prod in products){
      print("${count+1}. ${prod.name} ${prod.price}");
    }
  }
  void addToCart(){
    showProduct();
    stdout.write("Enter Choice: ");
    String? choice = stdin.readLineSync();
    int? input = int.tryParse(choice ?? "") ?? 0;
    if(input>0 && input<=products.length){
      cart.add(products[input]);
    }
    else{

    }
  }

  void viewCart(){
    for(var c in cart){
      print("${c.name} ${c.price}");
    }
    // double total += c.price;
  }
}