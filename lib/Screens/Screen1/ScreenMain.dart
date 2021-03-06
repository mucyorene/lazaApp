import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen1/NavigationButtons.dart';
import 'package:laza/Screens/screen2/screen2.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Widgets/NavigationScreens.dart';

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
                            NavigationButtons(
                              navigationCallBack: () => Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) =>
                                          const NavigationScreens())),
                              height: 80.0,
                              backgroundColor: 0xffF5F6FA,
                              textColor: 0xff8F959E,
                              buttonString: 'Men',
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            NavigationButtons(
                              navigationCallBack: () async {
                                SharedPreferences clothesType =
                                    await SharedPreferences.getInstance();
                                clothesType.setString("defaultType", "Men");
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) =>
                                            const NavigationScreens()));
                              },
                              height: 80.0,
                              backgroundColor: 0xff9775FA,
                              textColor: 0xffFFFFFF,
                              buttonString: 'Women',
                            )
                            // const Color(0xff9775FA)),
                          ],
                        ),
                      ),
                      Center(
                        child: TextButton(
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
