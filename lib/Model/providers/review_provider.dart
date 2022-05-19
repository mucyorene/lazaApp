import 'dart:collection';

import 'package:flutter/cupertino.dart';

import '../Others/ReviewModel.dart';

class ReviewNotifier extends ChangeNotifier {
  final List<Review> _reviewList = [];

  UnmodifiableListView<Review> get reviewList =>
      UnmodifiableListView(_reviewList);

  addReview(Review review) {
    _reviewList.add(review);

    notifyListeners();
  }
}
