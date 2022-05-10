// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:laza/Model/Others/CartModel.dart';
import 'package:laza/Model/ProductModel/Product.dart';
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

  Product product;

  Screen9({Key? key, required this.product}) : super(key: key);



  //  List<Clothes> clothes = Clothes.generateClothes();
  // Screen9(this.clothes);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        floatHeaderSlivers: true,

        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
              elevation: 0,
              pinned: true,
              foregroundColor: Colors.black,
              backgroundColor: const Color(0XffF2F2F2),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_bag,
                      color: Colors.black,
                    ))
              ],
              expandedHeight: 400,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                    color: const Color(0XffF2F2F2),
                    height: 387,
                    width: double.infinity,
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.only(top: 15),
                    child: Stack(children: [
                      Positioned(
                        top: 30,
                        child: Image.asset(
                          "assets/screen9_images/bigImg.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ])),
              )),
        ],

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

                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(product.descriptions!,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w200,
                                            fontSize: 13)),
                                    Container(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        product.name,
                                        style: const TextStyle(
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
                                      child: Text(product.price.toString(),
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22)),
                                    )
                                  ],
                                )
                              ],
                            ),
                            ImageBox(
                              images: product.images,
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
                            SizedList(),
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
                            Text.rich(TextSpan(
                                style: const TextStyle(fontSize: 15),
                                children: [
                                  TextSpan(
                                    text: "${product.descriptions} ",
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  const TextSpan(
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
                  List<Cart> allCart = Cart.generatedCart();

                  allCart.add(Cart(
                      id: (allCart.isNotEmpty ? (allCart.length) + 1 : 1),
                      name: product.name,
                      price: product.price,
                      size: product.size,
                      productId: product.id,
                      thumbnail: product.thumbnails,
                      shippingCost: 12.0));
                  // print(allCart.length);
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
