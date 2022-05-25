// ignore_for_file: unnecessary_const, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Model/Others/CartModel.dart';
import 'package:laza/Model/providers/ShoppingCartProvider.dart';
import 'package:laza/Screens/Widgets/CustomAppBarSingle.dart';
import 'package:laza/Screens/screen12/addr.dart';
import 'package:laza/Screens/screen12/box.dart';
import 'package:laza/Screens/screen12/order.dart';
import 'package:provider/provider.dart';
import '../Screen13/AddressScreen.dart';
import '../Screen14/PaymentScreen.dart';
import '../Widgets/BottomAppBarCustom.dart';

// ignore: camel_case_types
class screen12 extends StatefulWidget {
  const screen12({Key? key}) : super(key: key);

  @override
  State<screen12> createState() => _screen12State();
}

class _screen12State extends State<screen12> {
  @override
  Widget build(BuildContext context) {
    ShoppingCart cartProvider = Provider.of<ShoppingCart>(context);
    List<Cart> cartList = cartProvider.allInCart;
    return Scaffold(
      backgroundColor: const Color(0XffE5E5E5),
      bottomNavigationBar: BottomAppBarWidget(
        validationCallBack: () {
          Navigator.push(context,
              CupertinoPageRoute(builder: (context) => const Payment()));
        },
        buttonBackgroundColor: 0Xff9775FA,
        buttonTextValue: 'Check Out',
      ),
      appBar: AppBarCustom.appBarCustom(
          0.0,
          Colors.transparent,
          true,
          50.0,
          40,
          const BackButton(
            color: Colors.black,
          ),
          const Text(
            'Cart',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 17),
          ),
          null),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => Cartbox(
                  image: cartList.toList()[index].thumbnail,
                  bgColor: (index % 2 == 0)
                      ? const Color.fromRGBO(254, 254, 254, 1)
                      : const Color(0XffF5F6FA),
                  cardColor: (index % 2 == 1)
                      ? const Color.fromRGBO(254, 254, 254, 1)
                      : const Color(0XffF5F6FA),
                  title: cartList.toList()[index].name,
                  subTitle: cartList.toList()[index].size,
                  productIndex: index,
                  productPrice: cartList.toList()[index].price,
                  itemNumber: cartList[index].itemNumber,
                ),
                separatorBuilder: (_, varIndex) => const SizedBox(height: 1),
                itemCount: cartList.length,
              ),

              AddressBox(
                  actionTitle: 'Delivery Address',
                  relatedImage: 'assets/screen12_images/map_img.png',
                  description: 'Chhatak, Sunamgonj 12/8AB',
                  subDescription: 'Sylhet',
                  navigateButton: 'Add Address',
                  goTo: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const AddressScreen()))),

              AddressBox(
                  actionTitle: 'Payment Method',
                  relatedImage: 'assets/screen12_images/visa.png',
                  description: 'Visa Classic',
                  subDescription: '****2690',
                  navigateButton: 'Add Method',
                  goTo: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const Payment()))),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  'Order Info',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              order('Subtotal', '\$110'),
              order('Shipping Cost', '\$10'),
              // order('Total', '\$120'),
            ],
          ),
        ),
      ),
    );
  }
}
