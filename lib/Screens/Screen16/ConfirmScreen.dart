import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/Widgets/BottomNavigations.dart';

import '../Screen8/HomePage.dart';
import '../Widgets/BottomAppBarCustom.dart';
import '../Widgets/CustomAppBarNull.dart';

class ConfirmScreen extends StatefulWidget {
  const ConfirmScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmScreen> createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBarWidget(
        validationCallBack: () {
          Navigator.push(context,
              CupertinoPageRoute(builder: (cxt) => const HomeScreen()));
        },
        buttonTextValue: 'Continue Shopping',
        buttonBackgroundColor: 0Xff9775FA,
      ),
      // bottomNavigationBar: BottomNavigationChildScreens(
      //   buttonTitle: '',
      // ),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            CustomAppBarNull(),
            Container(
              height: 335,
              child: Image.asset(
                "assets/images/Screen16Phone.png",
              ),
            ),
            const SizedBox(height: 40.0),
            Column(
              children: [
                Container(
                  child: const Text("Order Confirmed!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 28.0)),
                ),
                const SizedBox(height: 10),
                Container(
                    child: const Text(
                  "Your order has been confirmed, we will send you confirmation email shortly.",
                  style: TextStyle(fontSize: 15.0, color: Color(0xff8F959E)),
                  textAlign: TextAlign.center,
                )),
                const SizedBox(
                  height: 106.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: const EdgeInsets.all(15.0),
                    width: MediaQuery.of(context).size.width,
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add_box_outlined,
                            color: Color(0xff8F959E)),
                        label: const Text("Go to Orders",
                            style: TextStyle(
                                fontSize: 17.0, color: Color(0xff8F959E)))),
                  ),
                ),
              ],
            )
          ])),
    );
  }
}
