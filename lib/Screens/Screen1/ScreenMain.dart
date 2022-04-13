import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/screen2.dart';

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
                      Container(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
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
                                child: const Padding(
                                  padding: EdgeInsets.fromLTRB(43, 30, 43, 30),
                                  child: Text(
                                    "Men",
                                    style: TextStyle(
                                        color: Color(0xff8F959E), fontSize: 17),
                                  ),
                                )),
                            ElevatedButton(
                                onPressed: () {},
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
                                child: const Padding(
                                  padding: EdgeInsets.fromLTRB(43, 30, 43, 30),
                                  child: Text(
                                    "Women",
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF), fontSize: 17),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, CupertinoPageRoute(builder: (context)=> const SignInScreen()));
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
