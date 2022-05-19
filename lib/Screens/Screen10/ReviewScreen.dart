import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:laza/Model/Others/Review.dart';
import 'package:laza/Model/Others/ReviewModel.dart';
import 'package:laza/Model/providers/review_provider.dart';
import 'package:laza/Screens/Screen10/Widgets/ReviewCard.dart';
import 'package:laza/Screens/Widgets/CustomAppBarSingle.dart';
import 'package:laza/Screens/screen11/Screen11.dart';
import 'package:provider/provider.dart';

class ReviewScreen extends StatefulWidget {
  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  // List<Review> reviews = Review.reviewGenerated();

  // addReview(Review review) {
  //   setState(() {
  //     reviews.add(review);
  //   });
  // }

  // ReviewModel rev = [];

  // addReview(Review newReview) {
  //   setState(() {
  //     review.add(newReview);
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    ReviewNotifier reviewNotifier = Provider.of<ReviewNotifier>(context);

    return Scaffold(
        appBar: AppBarCustom.appBarCustom(
            0.0,
            Colors.transparent,
            true,
            50.0,
            40,
            const CircleAvatar(
                backgroundColor: Color(0xffF5F6FA),
                child: BackButton(
                  color: Colors.black,
                )),
            const Text("Review",
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            null),
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            children: [
              // CustomAppBarSingle("Review"),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "5 Reviews",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "4.3",
                              style: TextStyle(),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 11,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 11,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 11,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 11,
                                ),
                                Icon(
                                  Icons.star_outline,
                                  color: Colors.grey,
                                  size: 11,
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 60,
                      alignment: Alignment.centerRight,
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffFF7043),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: TextButton.icon(
                          label: const Text(
                            "Add New Review",
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (ctxs) => Screen11(
                                        )));
                          },
                          icon: const Icon(
                            Icons.open_in_new,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Flexible(
                child: reviewNotifier.reviewList.isEmpty
                    ? const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("There's no review yet"),
                      )
                      : ReviewCard("assets/images/reviewOne.png", DateFormat('dd MMM, yyyy').format(DateTime.now()), '4.2')
                    // : ListView.separated(
                    //     shrinkWrap: true,
                    //     itemBuilder: (context, index) => ReviewCard(
                    //         "assets/images/reviewOne.png",
                    //         // '${notifier}'
                    //         // reviews[index].name,
                    //         DateFormat('dd MMM, yyyy').format(DateTime.now()),
                    //         "4.8",
                    //         reviews[index].experiences),
                    //     separatorBuilder: (_, varIndex) =>
                    //         const SizedBox(height: 1),
                    //     itemCount: reviewNotifier.reviewList.length,
              ),
            ],
          ),
        ));
  }
}
