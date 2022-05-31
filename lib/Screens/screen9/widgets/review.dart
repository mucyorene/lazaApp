// import 'package:flutter/material.dart';
// import 'package:laza/Model/Others/Review.dart';
// import 'package:laza/Screens/Screen10/Widgets/ProductReview.dart';

// class Reviews extends StatelessWidget {
//   // ReviewModel review;
//   Reviews({Key? key}) : super(key: key);

//   List<ReviewModel> review = ReviewModel.generateReview();

//   @override
//   Widget build(BuildContext context) {
//     return ProductReview(
//       review.first.image,
//       review.first.name,
//       'no comment',
//       '23rd, may 2022',
//     );
    // ProductReview(review.first.image, "13 Sep, ", '4.8');

    // Column(children: [
    //   Row(
    //     children: [
    //       Row(
    //         children: [
    //           CircleAvatar(
    //               backgroundColor: const Color(0XffF2F2F2),
    //               radius: 30,
    //               child: Image.asset(
    //                 'assets/screen9_images/circ1.png',
    //                 fit: BoxFit.contain,
    //               )),
    //           Column(
    //             children: const [
    //               Text(
    //                 'Ronard Richards',
    //                 style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    //               ),
    //               Text.rich(TextSpan(children: [
    //                 WidgetSpan(
    //                     style: TextStyle(fontWeight: FontWeight.w300),
    //                     child: Icon(
    //                       Icons.watch_later_outlined,
    //                       color: Color(0Xff8F959E),
    //                       size: 11,
    //                     )),
    //                 TextSpan(
    //                     text: '13 Sep, 2020',
    //                     style: TextStyle(
    //                         fontWeight: FontWeight.w300, fontSize: 11)),
    //               ])),
    //             ],
    //           ),
    //         ],
    //       ),
    //       Expanded(child: Container()),
    //       Column(
    //         children: [
    //           const Text.rich(
    //             TextSpan(children: [
    //               TextSpan(
    //                   text: '4.8  ',
    //                   style:
    //                       TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
    //               TextSpan(
    //                   text: 'Rating',
    //                   style:
    //                       TextStyle(fontWeight: FontWeight.w300, fontSize: 11)),
    //             ]),
    //           ),
    //           Row(
    //             children: const [
    //               Icon(
    //                 Icons.star,
    //                 size: 13,
    //                 color: Color(0XffFF981F),
    //               ),
    //               Icon(
    //                 Icons.star,
    //                 size: 13,
    //                 color: Color(0XffFF981F),
    //               ),
    //               Icon(
    //                 Icons.star,
    //                 size: 13,
    //                 color: Color(0XffFF981F),
    //               ),
    //               Icon(
    //                 Icons.star,
    //                 size: 13,
    //                 color: Color(0XffFF981F),
    //               ),
    //               Icon(
    //                 Icons.star_border,
    //                 size: 13,
    //                 color: Color(0Xff8F959E),
    //               ),
    //             ],
    //           )
    //         ],
    //       )
    //     ],
    //   ),
    //   Container(
    //     margin: const EdgeInsets.only(top: 10),
    //     child: const Text(
    //       'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet... ',
    //       style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
    //     ),
    //   ),
    // ]);
//   }
// }
import 'package:flutter/material.dart';
import 'package:laza/Model/providers/review_provider.dart';
import 'package:provider/provider.dart';

class ProductReview extends StatefulWidget {
  final String circularImage;

  // final String title;
  final String dates;
  // final String rating;
  final String reviewerName;
  final String comment;

  // final String content;
  const ProductReview(
      this.circularImage, this.reviewerName, this.comment, this.dates,
      {Key? key})
      : super(key: key);

  @override
  State<ProductReview> createState() => _ProductReviewState();
}

class _ProductReviewState extends State<ProductReview> {
  @override
  Widget build(BuildContext context) {
    ReviewNotifier? reviewNotifier = Provider.of<ReviewNotifier>(context);

    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => Column(
        children: [
          const SizedBox(height: 20.0),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(widget.circularImage),
                      backgroundColor: const Color(0xffCCD9E0),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Consumer<ReviewNotifier>(
                            builder: (_, notifier, __) => Text(notifier.reviewList.isNotEmpty?
                              notifier.reviewList.last.name :'' ,
                              style: const TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.watch_later_outlined,
                                color: Colors.grey,
                              ),
                              Text(
                                widget.dates,
                                style: const TextStyle(
                                    fontSize: 11.0, color: Color(0xff8F959E)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(reviewNotifier.reviewList.isNotEmpty?
                          reviewNotifier.reviewList.last.rating
                              .toStringAsFixed(2): '' ,
                          // widget.rating,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          "rating",
                          style:
                              TextStyle(fontSize: 11, color: Color(0xff8F959E)),
                        ),
                      ],
                    ),
                    Row(
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
                  ]),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            child: Consumer<ReviewNotifier>(
              builder: (_, notifier, __) => Text( notifier.reviewList.isNotEmpty?
                notifier.reviewList.last.experiences: '',
                style:
                    const TextStyle(color: Color(0xff8F959E), fontSize: 15.0),
              ),
            ),
          )
        ],
      ),
      separatorBuilder: (_, varIndex) => const SizedBox(height: 1),
      itemCount: 1,
    );
  }
}

