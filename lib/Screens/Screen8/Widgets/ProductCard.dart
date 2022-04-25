import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen10/ReviewScreen.dart';
import 'package:laza/Screens/screen12/screen12.dart';

import '../../screen11/Screen11.dart';
import '../../screen9/screen9.dart';

class ProductCard extends StatefulWidget {
  final String imageString;
  final String descriptionText;
  final String priceValue;

  ProductCard(this.imageString, this.descriptionText, this.priceValue,
      {Key? key})
      : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffEFEFEF),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const Screen9()));
                },
                child: Image.asset(
                  widget.imageString,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  child: Container(
                      alignment: Alignment.topRight,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.grey,
                        ),
                      ))),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.transparent,
                child: Text(
                  widget.descriptionText,
                ),
              ),
              const SizedBox(
                height: 3.0,
              ),
              Container(
                color: Colors.transparent,
                child: Text(
                  widget.priceValue,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ),
            ],
          ),
        )
      ],
    );
    // return Container(
    //   padding: const EdgeInsets.all(8),
    //   decoration: BoxDecoration(
    //     color: const Color(0xffF5F6FA),
    //     borderRadius: BorderRadius.circular(10.0),
    //   ),
    //   child:Image.asset(
    //         "assets/images/screen1ImageGirlSmile.png",fit: BoxFit.cover,
    //       ),
    //   // child: Column(
    //   //   children: [
    //   //     Expanded(
    //   //       child: Image.asset(
    //   //         "assets/images/screen1ImageGirlSmile.png",
    //   //       ),
    //   //     ),
    //   //     const Positioned(
    //   //       left: 30.0,
    //   //         child: Icon(Icons.favorite_border_outlined,
    //   //             color: Colors.grey)),
    //   //     Container(
    //   //       color: Colors.white,
    //   //       child: Column(
    //   //         children: const [
    //   //           Text(
    //   //             "Product Name",
    //   //           ),
    //   //           Text(
    //   //             "Categ",
    //   //           ),
    //   //           Text(
    //   //             "Price",
    //   //           ),
    //   //         ],
    //   //       ),
    //   //     ),
    //   //   ],
    //   // ),
    // );
  }
}

// Expanded(
// child: Container(
// padding: const EdgeInsets.all(8),
// decoration: BoxDecoration(
// color: const Color(0xffF5F6FA),
// borderRadius: BorderRadius.circular(10.0),
// ),
// child: Stack(
// children: [
// Center(
// child: Image.asset(
// "assets/images/screen1ImageGirlSmile.png",
// ),
// ),
// const Positioned(
// left: 108,
// child: Icon(
// Icons.favorite_border_outlined,
// color: Colors.grey,
// )),
// Positioned(
// top: 100,
// child: Container(
// color: Colors.white,
// child: const Center(child: Text("Price",)),
// ))
// ],
// ),
// ),
// ),
