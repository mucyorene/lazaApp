import 'package:flutter/cupertino.dart';
import 'package:laza/Model/ProductModel/Product.dart';

class ProviderController extends ChangeNotifier {
  final List<Product> _wishList = [];

  List<Product> get wishList => _wishList;

  void addToWishList(Product singleItem) {
    _wishList.add(singleItem);
    notifyListeners();
  }

  void removeFromList(int index) {
    _wishList.removeWhere((_product) => _product.name == _wishList[index].name);
  }
}
