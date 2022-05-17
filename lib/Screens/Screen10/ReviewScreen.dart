import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:laza/Model/Others/ReviewModel.dart';
import 'package:laza/Screens/Screen10/Widgets/ReviewCard.dart';
import 'package:laza/Screens/Widgets/CustomAppBarSingle.dart';
import 'package:laza/Screens/screen11/screen11.dart';

class ReviewScreen extends StatefulWidget {
  // String name;
  // String comment;
  // double rating;
  //
  // // Review review;
  // ReviewScreen(
  //     {required this.name,
  //     required this.comment,
  //     required this.rating,
  //     Key? key})
  //     : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  List<Review> review = Review.reviewGenerated();

  @override
  Widget build(BuildContext context) {
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
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "${review.length} Reviews",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
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
                  Container(
                    height: 60,
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffFF7043),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: TextButton.icon(
                        label: const Text(
                          "Add New Review",
                          style: TextStyle(fontSize: 14.0, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => const screen11()));
                        },
                        icon: const Icon(
                          Icons.open_in_new,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Flexible(
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => ReviewCard(
                        "assets/images/reviewOne.png",
                        review[index].name,
                        DateFormat('dd MMMM, yyyy').format(DateTime.now()),
                        "4.8",
                        review[index].experiences),
                    separatorBuilder: (_, varIndex) =>
                        const SizedBox(height: 1),
                    itemCount: review.length),
              ),
              // Expanded(
              //   child: ListView(
              //     physics: const BouncingScrollPhysics(),
              //     children: const [
              //       ReviewCard(
              //           "assets/images/reviewOne.png",
              //           "Jenny Wilson",
              //           "13 Sep, 2020",
              //           "4.8",
              //           "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
              //       ReviewCard(
              //           "assets/images/reviewtwo.png",
              //           "Ronald Richards",
              //           "16 Sep, 2022",
              //           "4.3",
              //           "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
              //       ReviewCard(
              //           "assets/images/reviewthree.png",
              //           "Guy Hawkins",
              //           "13 Sep, 2020",
              //           "3.5",
              //           "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
              //       ReviewCard(
              //           "assets/images/reviewfour.png",
              //           "Savannah Nguyen",
              //           "20 Sep, 2021",
              //           "4.8",
              //           "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
              //       ReviewCard(
              //           "assets/images/reviewthree.png",
              //           "Ronald Richards",
              //           "16 Sep, 2022",
              //           "4.3",
              //           "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
              //     ],
              //   ),
              // )
            ],
          ),
        ));
  }
}
