// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:laza/Model/Others/CartModel.dart';
import 'package:laza/Model/ProductModel/Product.dart';
import 'package:laza/Screens/Screen10/ReviewScreen.dart';
import 'package:laza/Screens/screen12/screen12.dart';

import 'package:laza/Screens/screen9/widgets/app_bar.dart';
import 'package:laza/Screens/screen9/widgets/description_body.dart';
import 'package:laza/Screens/screen9/widgets/description_title.dart';
import 'package:laza/Screens/screen9/widgets/hoddie_title.dart';
import 'package:laza/Screens/screen9/widgets/imageBox.dart';
import 'package:laza/Screens/screen9/widgets/review.dart';
import 'package:laza/Screens/screen9/widgets/review_title.dart';
import 'package:laza/Screens/screen9/widgets/sizeTitle.dart';
import 'package:laza/Screens/screen9/widgets/total_price.dart';
import 'package:laza/Screens/screen9/widgets/vBoxes.dart';

import 'package:laza/common/expConta.dart';

class Screen9 extends StatefulWidget {
  Product pro;

  Screen9({Key? key, required this.pro}) : super(key: key);

  @override
  State<Screen9> createState() => _Screen9State();
}

class _Screen9State extends State<Screen9> {
  late Product product;
  int? selectedImage;

  @override
  void initState() {
    product = widget.pro;
    super.initState();
  }

  imageClicked(int index) {
    setState(() {
      selectedImage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CustomAppBar(
            imagePath: selectedImage == null
                ? product.thumbnails
                : product.images[selectedImage!],
          )
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
                            HoddieTitle(
                                name: product.name,
                                description: product.descriptions!,
                                price: product.price.toString()),
                            ImageBox(
                              images: product.images,
                              onImageClick: imageClicked,
                            ),
                            sizeTitle(),
                            SizedList(),
                            DescriptionTitle(),
                            Description(description: "${product.descriptions}"),
                            const ReviewTitle(),
                            const Review(),
                            TotalPrice(price: product.price.toString())
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
