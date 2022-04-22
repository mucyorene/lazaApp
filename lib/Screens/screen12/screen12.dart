// ignore_for_file: unnecessary_const, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/screen12/addr.dart';
import 'package:laza/Screens/screen12/box.dart';
import 'package:laza/Screens/screen12/order.dart';
import 'package:laza/Screens/screen17/navigation_drawer.dart';
import 'package:laza/Screens/screen9/screen9.dart';

// ignore: camel_case_types
class screen12 extends StatelessWidget {
  const screen12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XffE5E5E5),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0Xff9775FA),
        child: Container(
            height: 50,
            alignment: Alignment.center,
            child: RaisedButton(
                elevation: 0,
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const NavigationDrawer()));
                },
                color: const Color(0Xff9775FA),
                child: const Text(
                  'Check Out',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0XffE5E5E5),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black87,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Center(
          child: Text(
            'Cart',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 17),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              cadBox('assets/screen12_images/img1.png', const Color(0XffFEFEFE),
                  const Color(0XffF5F6FA)),
              cadBox('assets/screen12_images/img2.png', const Color(0XffF5F6FA),
                  const Color.fromRGBO(254, 254, 254, 1)),
              addressBox(
                  'Delivery Address',
                  'assets/screen12_images/map_img.png',
                  'Chhatak, Sunamgonj 12/8AB',
                  'Sylhet'),
              addressBox('Payment Method', 'assets/screen12_images/visa.png',
                  'Visa Classic', '****2690'),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
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
