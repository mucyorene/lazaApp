import 'package:flutter/cupertino.dart';
import 'package:laza/Model/Others/CartModel.dart';

class ShoppingCart extends ChangeNotifier {
  final List<Cart> _cartList = [];

  List<Cart> get allInCart => _cartList;

  void addToCart(Cart cartItem) {
    _cartList.add(cartItem);
    notifyListeners();
  }

  void deleteItem(index) {
    allInCart.removeWhere((element) => element.name == allInCart[index].name);
    notifyListeners();
  }

  void totalPrice(price, itemNumber, index) {
    double total = itemNumber * price;
  }
}
