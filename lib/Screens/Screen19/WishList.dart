import 'package:flutter/material.dart';
import 'package:laza/Model/Others/CartModel.dart';
import 'package:laza/Model/Others/WishModel.dart';
import 'package:laza/Model/ProductModel/Product.dart';
import 'package:laza/Model/providers/ShoppingCartProvider.dart';
import 'package:laza/Screens/Screen19/Widgets/WishListCard.dart';
import 'package:laza/Screens/Widgets/CustomAppBarSingle.dart';
import 'package:laza/Screens/screen12/box.dart';
import 'package:provider/provider.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  List<Product> productsList = Product.generatedList();

  @override
  Widget build(BuildContext context) {
    ShoppingCart cartProvider = Provider.of<ShoppingCart>(context);
    List<WishModels> wishList = [];
    return Scaffold(
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
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          ListView.separated(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => WishCard(
              size: wishList[index].size,
              brand: wishList[index].brand,
              thumbnails: wishList[index].thumbnails,
              price: wishList[index].price,
              name: wishList[index].name,
            ),
            separatorBuilder: (_, varIndex) => const SizedBox(height: 1),
            itemCount: wishList.length,
          ),
          // order('Total', '\$120'),
        ],
      ),
    );
  }
}
