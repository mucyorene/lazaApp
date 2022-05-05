import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen18/Widgets/InformationHeader.dart';
import 'package:laza/Screens/Widgets/CustomAppBarSingle.dart';

import '../Screen8/Widgets/ProductCard.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(items: const [
      //   // BottomNavigationBarItem(
      //   //   icon: Icon(
      //   //     Icons.home,
      //   //     color: Colors.grey,
      //   //   ),
      //   //   label: 'Home',
      //   // ),
      //   BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.favorite_border_outlined,
      //         color: Colors.grey,
      //       ),
      //       label: 'Wishlist'),
      //   BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.shopping_bag_outlined,
      //         color: Colors.grey,
      //       ),
      //       label: 'Cart'),
      //   BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.people,
      //         color: Colors.grey,
      //       ),
      //       label: 'Profile'),
      // ]),
      appBar: AppBarCustom.appBarCustom(
          0.0,
          Colors.transparent,
          true,
          50.0,
          40.0,
          const BackButton(
            color: Colors.black,
          ),
          const Text(
            "Wishlist",
            style: TextStyle(color: Colors.black, fontSize: 17.0),
          ),
          [
            Container(
              alignment: Alignment.centerRight,
              child: CircleAvatar(
                  radius: 25,
                  backgroundColor: const Color(0xffF5F6FA),
                  child: Image.asset("assets/images/Bag.png")),
            ),
          ]),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10.0),
              child: Column(
                children: [
                  InformationHeader(
                      numberOfItems: 332,
                      itemLocation: "in wishlist",
                      iconSort: const Icon(
                        Icons.edit,
                        color: Colors.black,
                      ),
                      iconName: "Edit"),
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
                        descriptionText: "assets/images/stockImageFive.png",
                        priceValue: "\$20")
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
