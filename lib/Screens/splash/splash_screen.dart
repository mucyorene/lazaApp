import 'dart:async';
// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen1/ScreenMain.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  _SplashState() {
    // ignore: unnecessary_new
    new Timer(const Duration(milliseconds: 3000), () {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const Screen2()),
            (route) => false);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0Xff9775FA),
        child: const Center(
          child: Image(
            image: AssetImage('assets/images/Logo.png'),
            width: 70,
            height: 70,
          ),
        ),
      ),
    );
  }
}
