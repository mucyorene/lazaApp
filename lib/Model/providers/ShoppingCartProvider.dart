import 'package:flutter/cupertino.dart';
import 'package:laza/Model/Others/CartModel.dart';

class Shopping_cart extends ChangeNotifier {
  List<Cart> _cartList = [];

  List<Cart> get allInCart => _cartList;

  void addToCart(Cart cartItem) {
    _cartList.add(cartItem);
    notifyListeners();
  }
}
