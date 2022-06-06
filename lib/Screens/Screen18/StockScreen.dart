import 'package:flutter/material.dart';
import 'package:laza/Model/ProductModel/Product.dart';
import 'package:laza/Screens/Screen18/Widgets/InformationHeader.dart';
import 'package:laza/Screens/Widgets/CustomAppBarSingle.dart';

import '../Screen8/Widgets/ProductCard.dart';

class MainStock extends StatefulWidget {
  const MainStock({Key? key}) : super(key: key);

  @override
  State<MainStock> createState() => _MainStockState();
}

class _MainStockState extends State<MainStock> {
  List<Product> productsList = Product.generatedList();

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
        body: Container(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    InformationHeader(
                        numberOfItems: 366,
                        itemLocation: "Available in stock",
                        iconSort: const Icon(
                          Icons.sort,
                          color: Colors.black,
                        ),
                        iconName: "Sort"),
                    Expanded(
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                crossAxisCount: 2,
                                childAspectRatio: 5 / 10),
                            itemBuilder: (cxt, index) {
                              // print("${products.length} this is the lenght");
                              return InkWell(
                                child: ProductCard(
                                  product: productsList.toList()[index],
                                ),
                              );
                            },
                            itemCount: productsList.length,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
