import 'package:coffee_shop/models/coffee.dart';

class CoffeeShop {
  // coffee available for sale

  final List<Coffee> _shop = [
    //black coffee
    Coffee(
        name: 'Long Black',
        price: 'Ksh.800',
        imagePath: 'assets/images/coffee.png'),

    //latte
    Coffee(
        name: 'Latte',
        price: 'Ksh.1200',
        imagePath: 'assets/images/latte-art.png'),

    //espresso
    Coffee(
        name: 'Espresso',
        price: 'Ksh.1000',
        imagePath: 'assets/images/coffee-cup.png'),

    //iced coffee
    Coffee(
        name: 'Iced Coffee',
        price: 'Ksh.1500',
        imagePath: 'assets/images/ice-coffee.png'),

    //americano
    Coffee(
        name: 'Americano', price: 'Ksh.500', imagePath: 'assets/images/mug.png')
  ];

  // user cart
  List<Coffee> _userCart = [];

  //get user cart
  List<Coffee> get userCart => _userCart;

  //get coffee list
  List<Coffee> get coffeeShop => _shop;

  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
  }

  //remove item from cart
  void removeItemFromCart(Coffee coffee) {
    userCart.remove(coffee);
  }
}
