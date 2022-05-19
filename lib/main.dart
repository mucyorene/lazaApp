import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:laza/Screens/Screen1/ScreenMain.dart';
import 'Screens/splash/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splash(),
  ));
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Laza',
      theme: ThemeData(
        backgroundColor: const Color(0xffFFFFFF),
        // primaryColor: Colors.white,
        accentColor: Colors.white,
        primaryColor: const Color(0xff9775FA),
        scaffoldBackgroundColor: const Color(0x00ffffff),
      ),
      home: const Screen2(),
    );
  }
}
