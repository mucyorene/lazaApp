// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/screen11/screen11.dart';
import 'package:laza/Screens/screen9/vBoxes.dart';

class Screen9 extends StatelessWidget {
  const Screen9({Key? key}) : super(key: key);
  final clock = const Icon(Icons.punch_clock);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: const Color(0Xff9775FA),
        child: Container(
            height: 50,
            alignment: Alignment.center,
            child: RaisedButton(
                elevation: 0,
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const screen11()));
                },
                color: const Color(0Xff9775FA),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                fit: StackFit.passthrough,
                children: [
                  Positioned(
                      top: 20,
                      left: 0,
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                        ),
                      )),
                  Positioned(
                      top: 20,
                      right: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_bag_sharp,
                        ),
                      )),
                  Column(
                    children: [
                      Container(
                          color: const Color(0XffF2F2F2),
                          height: 387,
                          width: double.infinity,
                          alignment: Alignment.topCenter,
                          padding: const EdgeInsets.only(top: 15),
                          child: Stack(children: [
                            Positioned(
                                top: 20,
                                left: 0,
                                child: IconButton(
                                  alignment: Alignment.topLeft,
                                  onPressed: () => Navigator.pop(context),
                                  icon: const Icon(
                                    Icons.arrow_back_rounded,
                                  ),
                                )),
                            Positioned(
                                top: 20,
                                right: 0,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.shopping_bag),
                                )),
                            Positioned(
                              top: 30,
                              child: Image.asset(
                                'assets/screen9_images/bigImg.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ])),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    const Text('Men\'s printed Pullover Hoddie',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w200,
                                            fontSize: 13)),
                                    Container(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: const Text(
                                        'Nike Club Fleece',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22),
                                      ),
                                    )
                                  ],
                                ),
                                Expanded(child: Container()),
                                Column(
                                  children: [
                                    const Text('price',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w200,
                                            fontSize: 13)),
                                    Container(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: const Text("\$120",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22)),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              height: 77,
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                    margin: const EdgeInsets.all(2),
                                    child: Container(
                                      margin: const EdgeInsets.all(2),
                                      child: Image.asset(
                                          'assets/screen9_images/rect1.png'),
                                    ),
                                  )),
                                  Expanded(
                                      child: Container(
                                    margin: const EdgeInsets.all(2),
                                    child: Image.asset(
                                        'assets/screen9_images/rect2.png'),
                                  )),
                                  Expanded(
                                      child: Container(
                                    margin: const EdgeInsets.all(2),
                                    child: Image.asset(
                                        'assets/screen9_images/rect3.png'),
                                  )),
                                  Expanded(
                                      child: Container(
                                    margin: const EdgeInsets.all(2),
                                    child: Image.asset(
                                        'assets/screen9_images/rect4.png'),
                                  )),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                const Text("Size",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17)),
                                Expanded(child: Container()),
                                const Text('Size Guide',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 15)),
                              ],
                            ),
                            SizedBox(
                              height: 60,
                              child: Row(
                                children: [
                                  vBox('S'),
                                  vBox('M'),
                                  vBox('L'),
                                  vBox('XL'),
                                  vBox('2XL'),
                                ],
                              ),
                            ),
                            Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  'Description',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                )),
                            const Text.rich(TextSpan(
                                style: TextStyle(fontSize: 15),
                                children: [
                                  TextSpan(
                                    text:
                                        'The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  TextSpan(
                                    text: 'Read More ...',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ])),
                            Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  children: [
                                    const Text(
                                      'Reviews',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Expanded(child: Container()),
                                    const Text(
                                      'View All',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                )),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.all(3),
                                        height: 50,
                                        decoration: const BoxDecoration(
                                          color: Color(0XffF2F2F2),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Card(
                                          color: const Color(0XffF2F2F2),
                                          child: Image.asset(
                                            'assets/screen9_images/circ1.png',
                                            fit: BoxFit.contain,
                                          ),
                                        )),
                                    Column(
                                      children: const [
                                        Text(
                                          'Ronard Richards',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text.rich(TextSpan(children: [
                                          WidgetSpan(
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300),
                                              child: Icon(
                                                Icons.watch_later_outlined,
                                                color: Color(0Xff8F959E),
                                                size: 11,
                                              )),
                                          TextSpan(
                                              text: '13 Sep, 2020',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 11)),
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
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15)),
                                        TextSpan(
                                            text: 'Rating',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 11)),
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
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w300),
                              ),
                            ),
                            Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  children: [
                                    Column(
                                      children: const [
                                        Text(
                                          'Total Price',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          'with VAT,SD',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 11),
                                        ),
                                      ],
                                    ),
                                    Expanded(child: Container()),
                                    const Text("\$120",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17)),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
