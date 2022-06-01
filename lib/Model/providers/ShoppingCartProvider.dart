import 'package:flutter/cupertino.dart';
import 'package:laza/Model/Others/CartModel.dart';
import 'package:laza/Model/ProductModel/Product.dart';

class ShoppingCart extends ChangeNotifier {
  final List<Cart> _cartList = [];
  final List<Product> _wishList = [];

  int get itemLenth => _cartList.length;

  List<Product> get wishList => _wishList;

  void incrementItem(indexIncrement) {
    _cartList[indexIncrement].itemNumber++;
    notifyListeners();
  }

  void decrementItemNumber(itemIndex) {
    _cartList[itemIndex].itemNumber--;
    notifyListeners();
  }

  double summation(int index) {
    double totalItemPrice =
        _cartList[index].price * _cartList[index].itemNumber;
    return totalItemPrice;
  }

  // void summation(int index) {
  //   _cartList[index].price * _cartList[index].itemNumber;
  //   notifyListeners();
  // }

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
    notifyListeners();
  }

  void addToWishList(Product product) {
    _wishList.add(product);
    notifyListeners();
  }

  void removeToWishList(index) {
    _wishList.removeWhere((element) => element.name == _wishList[++index].name);
    notifyListeners();
  }
}
