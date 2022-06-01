import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:laza/Model/Others/CartModel.dart';
import 'package:laza/Model/ProductModel/Product.dart';

class ShoppingCart extends ChangeNotifier {
  final List<Cart> _cartList = [];
  final List<Product> _wishList = [];

  int get itemLenth => _cartList.length;

  List<Product> get wishList => _wishList;

  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ["email"]);
  GoogleSignInAccount? _loggedUser;

  GoogleSignInAccount? get user => _loggedUser;

  Future googleLogin() async {
    final singedUser = await _googleSignIn.signIn();
    if (singedUser == null) return;
    _loggedUser = singedUser;
    notifyListeners();
  }

  Future googleLogout() async {
    await _googleSignIn.signOut();
    notifyListeners();
  }

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
