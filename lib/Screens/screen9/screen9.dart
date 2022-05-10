// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen10/ReviewScreen.dart';
import 'package:laza/Screens/screen12/screen12.dart';
import 'package:laza/Screens/screen9/Model/clothesModel.dart';
import 'package:laza/Screens/screen9/imageBox.dart';
import 'package:laza/Screens/screen9/vBoxes.dart';
import 'package:laza/Screens/screen9/widgets/app_bar.dart';
import 'package:laza/Screens/screen9/widgets/description_body.dart';
import 'package:laza/Screens/screen9/widgets/description_title.dart';
import 'package:laza/Screens/screen9/widgets/hoddie_title.dart';
import 'package:laza/Screens/screen9/widgets/sizeTitle.dart';
import 'package:laza/common/expConta.dart';

class Screen9 extends StatelessWidget {
 const Screen9({Key? key}) : super(key: key);

  //  List<Clothes> clothes = Clothes.generateClothes();
  // Screen9(this.clothes);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) =>
            [const CustomAppBar()],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                overflow: Overflow.visible,
                fit: StackFit.passthrough,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            const HoddieTitle(),
                            ImageBox(),
                            const SizeTitle(),
                            SizedList(),
                            const DescriptionTitle(),
                            const DescriptionDetails(),
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
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            CupertinoPageRoute(
                                                builder: (context) =>
                                                    const ReviewScreen()));
                                      },
                                      child: const Text(
                                        'View All',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ],
                                )),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                        backgroundColor:
                                            const Color(0XffF2F2F2),
                                        radius: 30,
                                        child: Image.asset(
                                          'assets/screen9_images/circ1.png',
                                          fit: BoxFit.contain,
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
                                    exconta(),
                                    const Text("\$120",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17)),
                                  ],
                                )),
                            // ListView.builder(
                            //     itemBuilder: ((context, index) => Row(
                            //           children: [
                            //             Text(clothes.toList()[index].title)
                            //           ],
                            //         )))
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
                          builder: (context) => const screen12()));
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
    );
  }
}
