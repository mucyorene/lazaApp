import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Row(
            children: [
              CircleAvatar(
                  backgroundColor: const Color(0XffF2F2F2),
                  radius: 30,
                  child: Image.asset(
                    'assets/screen9_images/circ1.png',
                    fit: BoxFit.contain,
                  )),
              Column(
                children: const [
                  Text(
                    'Ronard Richards',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text.rich(TextSpan(children: [
                    WidgetSpan(
                        style: TextStyle(fontWeight: FontWeight.w300),
                        child: Icon(
                          Icons.watch_later_outlined,
                          color: Color(0Xff8F959E),
                          size: 11,
                        )),
                    TextSpan(
                        text: '13 Sep, 2020',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 11)),
                  ])),
                ],
              ),
            ],
          ),
          Expanded(child: Container()),
          Column(
            children: [
              const Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: '4.8  ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  TextSpan(
                      text: 'Rating',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 11)),
                ]),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    size: 13,
                    color: Color(0XffFF981F),
                  ),
                  Icon(
                    Icons.star,
                    size: 13,
                    color: Color(0XffFF981F),
                  ),
                  Icon(
                    Icons.star,
                    size: 13,
                    color: Color(0XffFF981F),
                  ),
                  Icon(
                    Icons.star,
                    size: 13,
                    color: Color(0XffFF981F),
                  ),
                  Icon(
                    Icons.star_border,
                    size: 13,
                    color: Color(0Xff8F959E),
                  ),
                ],
              )
            ],
          )
        ],
      ),
      Container(
        margin: const EdgeInsets.only(top: 10),
        child: const Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet... ',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
        ),
      ),
    ]);
  }
}
