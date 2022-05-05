import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen13/AddressScreen.dart';
import 'package:laza/Screens/screen12/addr.dart';
import 'package:laza/Screens/screen12/box.dart';
import 'package:laza/Screens/screen12/order.dart';

import '../../Screen14/PaymentScreen.dart';
import '../../Widgets/CustomAppBarSingle.dart';
class EndDrawerNav extends StatefulWidget {
  const EndDrawerNav({Key? key}) : super(key: key);

  @override
  State<EndDrawerNav> createState() => _EndDrawerNavState();
}

class _EndDrawerNavState extends State<EndDrawerNav> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
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
                            builder: (context) => const Payment()));
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
                InkWell(
                    child: addressBox(
                        'Delivery Address',
                        'assets/screen12_images/map_img.png',
                        'Chhatak, Sunamgonj 12/8AB',
                        'Sylhet'),
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const AddressScreen()));
                    }),
                addressBox('Payment Method', 'assets/screen12_images/visa.png',
                    'Visa Classic', '****2690'),
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
      ),
    );
  }
}
