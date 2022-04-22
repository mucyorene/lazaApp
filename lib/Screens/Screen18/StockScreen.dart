import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen18/Widgets/CustomAppBarStock.dart';
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
      body: Container(
        child: Column(
          children: [
            CustomAppBarStock(),
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
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
