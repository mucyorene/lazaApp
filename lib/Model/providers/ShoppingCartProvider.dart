import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:laza/Model/Others/CartModel.dart';
import 'package:laza/Model/ProductModel/Product.dart';

class ShoppingCart extends ChangeNotifier {
  final List<Cart> _cartList = [];
  final List<Product> _wishList = [];

  int get itemLenth => _cartList.length;
  Map? _facebookUserData;

  List<Product> get wishList => _wishList;

  get fbLoggedUser => _facebookUserData;

  final _googleSignIn = GoogleSignIn();
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
    _loggedUser = null;
    notifyListeners();
  }

  Future facebookLogin() async {
    final results =
    await FacebookAuth.i.login(permissions: ["public_profile", "email"]);
    if (results.status == LoginStatus.success) {
      final userData = await FacebookAuth.i.getUserData(fields: "email, name");
      _facebookUserData = userData;
      notifyListeners();
    }
  }

  Future facebookLogout() async {
    await FacebookAuth.i.logOut();
    _facebookUserData = null;
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
