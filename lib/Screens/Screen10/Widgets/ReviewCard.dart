import 'package:flutter/material.dart';
import 'package:laza/Model/providers/review_provider.dart';
import 'package:provider/provider.dart';
class ReviewCard extends StatefulWidget {
  final String circularImage;
  // final String title;
  final String dates;
  final String rating;
  // final String content;
  const ReviewCard(this.circularImage,  this.dates, this.rating,  {Key? key}) : super(key: key);

  @override
  State<ReviewCard> createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  @override
  Widget build(BuildContext context) {

  ReviewNotifier reviewNotifier = Provider.of<ReviewNotifier>(context);

    return ListView.separated(
       shrinkWrap: true,
       itemBuilder: (context , index ) =>
       Column(
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
                            builder: (_, notifier, __) => 
                             Text(
                              notifier.reviewList[index].name,
                              style: const TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
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
                                    fontSize: 11.0,
                                    color: Color(0xff8F959E)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            widget.rating,
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Text(
                            "rating",
                            style: TextStyle(
                                fontSize: 11, color: Color(0xff8F959E)),
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
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            child: Consumer<ReviewNotifier>(
                            builder: (_, notifier, __) => 
               Text(
                notifier.reviewList[index].experiences,
                style: const TextStyle(color: Color(0xff8F959E), fontSize: 15.0),
              ),
            ),
          )
        ],
      ),
      separatorBuilder: (_, varIndex) =>
                            const SizedBox(height: 1),
                        itemCount: reviewNotifier.reviewList.length,
      
    );
  }
}
