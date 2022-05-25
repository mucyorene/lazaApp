import 'package:flutter/cupertino.dart';
import 'package:laza/Model/Others/WishModel.dart';

class ProviderController extends ChangeNotifier {
  final List<WishModels> _wishList = [];

  void addToWishList(WishModels wishModels) {
    _wishList.add(wishModels);
    notifyListeners();
  }
}
