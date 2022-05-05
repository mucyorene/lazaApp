import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen18/Widgets/InformationHeader.dart';
import 'package:laza/Screens/Widgets/CustomAppBarSingle.dart';

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
      appBar: AppBarCustom.appBarCustom(
          0.0,
          Colors.transparent,
          true,
          50.0,
          40,
          const CircleAvatar(
              backgroundColor: Color(0xffF5F6FA),
              child: BackButton(
                color: Colors.black,
              )),
          Container(
            height: 45.0,
            decoration: BoxDecoration(
                color: const Color(0xffF5F6FA),
                borderRadius: BorderRadius.circular(10.0)),
            child: Image.asset(
              "assets/images/nikeBrand.png",
            ),
          ),
          [
            Container(
              alignment: Alignment.centerRight,
              child: CircleAvatar(
                  radius: 21,
                  backgroundColor: const Color(0xffF5F6FA),
                  child: Image.asset("assets/images/Bag.png")),
            )
          ]),
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
                  ProductCard(
                      addToFavorite: () {},
                      imageString: "assets/images/homeone.png",
                      descriptionText: "Nike Sportswear Club Fleece",
                      priceValue: "\$99"),
                  ProductCard(
                      addToFavorite: () {},
                      imageString: "assets/images/hometwo.png",
                      descriptionText: "Trail Running Jacket Nike Windrunner",
                      priceValue: "\$95"),
                  ProductCard(
                      addToFavorite: () {},
                      imageString: "assets/images/stockImageFour.png",
                      descriptionText: "Nike Sportswear Club Fleece",
                      priceValue: "\$49"),
                  ProductCard(
                      addToFavorite: () {},
                      imageString: "assets/images/stockImageFive.png",
                      descriptionText: "Trail Running Jacket Nike Windrunner",
                      priceValue: "\$20"),
                  ProductCard(
                      addToFavorite: () {},
                      imageString: "assets/images/homeone.png",
                      descriptionText: "Nike Sportswear Club Fleece",
                      priceValue: "\$99")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
