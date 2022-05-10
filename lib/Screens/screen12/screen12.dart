// ignore_for_file: unnecessary_const, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Model/Others/CartModel.dart';
import 'package:laza/Screens/Widgets/CustomAppBarSingle.dart';
import 'package:laza/Screens/screen12/addr.dart';
import 'package:laza/Screens/screen12/box.dart';
import 'package:laza/Screens/screen12/order.dart';
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
  List<Cart> cartList = Cart.generatedCart();

  @override
  Widget build(BuildContext context) {
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
                  itemBuilder: (cxt, index) => (cartList.length % 2 == 0)
                      ? InkWell(
                          child: cadBox(cartList.toList()[index].thumbnail,
                              const Color(0XffFEFEFE), const Color(0XffF5F6FA)),
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) =>
                                        const AddressScreen()));
                          })
                      : cadBox(
                          cartList.toList()[index].thumbnail,
                          const Color(0XffF5F6FA),
                          const Color.fromRGBO(254, 254, 254, 1)),
                  separatorBuilder: (_, varIndex) => const SizedBox(
                        height: 3,
                      ),
                  itemCount: cartList.length),
              InkWell(
                  child: cadBox('assets/screen12_images/img1.png',
                      const Color(0XffFEFEFE), const Color(0XffF5F6FA)),
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const AddressScreen()));
                  }),
              cadBox('assets/screen12_images/img2.png', const Color(0XffF5F6FA),
                  const Color.fromRGBO(254, 254, 254, 1)),
              addressBox(
                'Delivery Address',
                'assets/screen12_images/map_img.png',
                'Chhatak, Sunamgonj 12/8AB',
                'Sylhet',
                'Add Address',
              ),
              addressBox(
                'Payment Method',
                'assets/screen12_images/visa.png',
                'Visa Classic',
                '****2690',
                'Add Method',
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  'Order Info',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              order('Subtotal', '\$110'),
              order('Shipping Cost', '\$10'),
              order('Total', '\$120'),
            ],
          ),
        ),
      ),
    );
  }
}
