import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen18/Widgets/InformationHeader.dart';

import '../Screen8/Widgets/ProductCard.dart';

class MainStock extends StatefulWidget {
  const MainStock({Key? key}) : super(key: key);

  @override
  State<MainStock> createState() => _MainStockState();
}

class _MainStockState extends State<MainStock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leadingWidth: 40,
        leading: const CircleAvatar(
            backgroundColor: Color(0xffF5F6FA),
            child: BackButton(
              color: Colors.black,
            )),
        title: Container(
          height: 45.0,
          decoration: BoxDecoration(
              color: const Color(0xffF5F6FA),
              borderRadius: BorderRadius.circular(10.0)),
          child: Image.asset(
            "assets/images/nikeBrand.png",
          ),
        ),
        actions: [
          Container(
            alignment: Alignment.centerRight,
            child: CircleAvatar(
                radius: 21,
                backgroundColor: const Color(0xffF5F6FA),
                child: Image.asset("assets/images/Bag.png")),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                InformationHeader(
                    numberOfItems: 365,
                    itemLocation: "Available in stock",
                    iconSort: const Icon(
                      Icons.sort,
                      color: Colors.black,
                    ),
                    iconName: "Sort"),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: GridView.count(
                physics: const BouncingScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                childAspectRatio: 5 / 9,
                children: <Widget>[
                  ProductCard("assets/images/homeone.png",
                      "Nike Sportswear Club Fleece", "\$99"),
                  ProductCard("assets/images/hometwo.png",
                      "Trail Running Jacket Nike Windrunner", "\$95"),
                  ProductCard("assets/images/stockImageFour.png",
                      "Nike Sportswear Club Fleece", "\$49"),
                  ProductCard("assets/images/stockImageFive.png",
                      "Trail Running Jacket Nike Windrunner", "\$20"),
                  ProductCard("assets/images/homeone.png",
                      "Nike Sportswear Club Fleece", "\$99"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
