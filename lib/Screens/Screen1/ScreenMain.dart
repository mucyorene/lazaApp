import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen14/PaymentScreen.dart';
import 'package:laza/Screens/Screen15/AddNewCard.dart';
import 'package:laza/Screens/Screen16/ConfirmScreen.dart';
import 'package:laza/Screens/Screen18/StockScreen.dart';
import 'package:laza/Screens/Screen19/WishList.dart';
import 'package:laza/Screens/screen2/screen2.dart';
import '../Screen13/AddressScreen.dart';
import '../Screen8/HomePage.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        color: const Color(0xff9775FA),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/screen1ImageGirlSmile.png",
              width: 375,
              height: 812,
            ),
            Positioned(
              bottom: 15,
              left: 15,
              right: 15,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      const Center(
                          child: Text(
                        "Look Good, Feel Good",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            height: 3),
                      )),
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Text(
                            "Create your individual & unique style and look amazing everyday.",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                height: 1,
                                color: Color(0xff8F959E)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15, right: 15),
                        padding: const EdgeInsets.only(
                          top: 20,
                          bottom: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Container(
                                height: 80,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                              builder: (context) =>
                                                  const HomeScreen()));
                                    },
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              side: BorderSide.none)),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              const Color(0xffF5F6FA)),
                                    ),
                                    child: const Text(
                                      "Men",
                                      style: TextStyle(
                                          color: Color(0xff8F959E),
                                          fontSize: 17),
                                    )),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Container(
                              height: 80,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                            builder: (context) =>
                                                const AddressScreen()));
                                  },
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: BorderSide.none)),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            const Color(0xff9775FA)),
                                  ),
                                  child: const Text(
                                    "Women",
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF), fontSize: 17),
                                  )),
                            )),
                          ],
                        ),
                      ),
                      Center(
                        child: TextButton(
                          // onPressed: () {
                          //   Navigator.push(
                          //       context,
                          //       CupertinoPageRoute(
                          //           builder: (context) => const ConfirmScreen()));
                          // },
                          onPressed: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) =>
                                        const SignInScreen()));
                          },
                          child: const Text(
                            "Skip",
                            style: TextStyle(
                                color: Color(0xff8F959E), fontSize: 17.0),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
