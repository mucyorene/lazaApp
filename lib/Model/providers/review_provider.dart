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

  delereReview(index) {
    _reviewList
        .removeWhere((_review) => _review.name == reviewList[index].name);

    notifyListeners();
  }

  updateReview(index, Review review) {
    _reviewList[index] = review;

    // _reviewList.updateR
    notifyListeners();
  }
}
