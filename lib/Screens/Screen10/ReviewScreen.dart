import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen10/Widgets/ReviewCard.dart';
import 'package:laza/Screens/Widgets/CustomAppBarSingle.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              CustomAppBarSingle("Review"),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "245 Reviews",
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
                              "4.8",
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
                      decoration: BoxDecoration(
                          color: const Color(0xffFF7043),
                          borderRadius: BorderRadius.circular(10.0)),
                      alignment: Alignment.center,
                      child: TextButton.icon(
                        label: const Text(
                          "Add New Review",
                          style: TextStyle(fontSize: 15.0, color: Colors.white),
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.open_in_new,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    ReviewCard(
                        "assets/images/reviewOne.png",
                        "Jenny Wilson",
                        "13 Sep, 2020",
                        "4.8",
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
                    ReviewCard(
                        "assets/images/reviewtwo.png",
                        "Ronald Richards",
                        "16 Sep, 2022",
                        "4.3",
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
                    ReviewCard(
                        "assets/images/reviewthree.png",
                        "Guy Hawkins",
                        "13 Sep, 2020",
                        "3.5",
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
                    ReviewCard(
                        "assets/images/reviewfour.png",
                        "Savannah Nguyen",
                        "20 Sep, 2021",
                        "4.8",
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
                    ReviewCard(
                        "assets/images/reviewthree.png",
                        "Ronald Richards",
                        "16 Sep, 2022",
                        "4.3",
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
