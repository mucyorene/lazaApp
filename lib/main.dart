import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:laza/Model/Others/Review.dart';
import 'package:laza/Model/providers/ShoppingCartProvider.dart';
import 'package:laza/Model/providers/review_provider.dart';
import 'package:laza/Screens/Screen1/ScreenMain.dart';
import 'package:laza/Screens/Screen10/ReviewScreen.dart';
import 'package:laza/Screens/screen11/Screen11.dart';
import 'package:laza/Screens/screen2/screen2.dart';
import 'package:laza/Screens/screen9/widgets/review.dart';
import 'package:provider/provider.dart';

import 'Screens/splash/splash_screen.dart';
void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ReviewNotifier()),
      ChangeNotifierProvider(
        create: (ctx) => ShoppingCart(),
      )
    ],
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash(),
    ),
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

      initialRoute: '/',
      routes: {
        '/': (context) => const splash(),
        '/main': (context) => const Screen2(),
        '/start': (context) => const SignInScreen(),
        '/review': (context) => ReviewScreen(),
        'screen11': (context) => Screen11(),
      },
      // title: 'Laza',
      // theme: ThemeData(
      //   backgroundColor: const Color(0xffFFFFFF),
      //   // primaryColor: Colors.white,
      //   accentColor: Colors.white,
      //   primaryColor: const Color(0xff9775FA),
      //   scaffoldBackgroundColor: const Color(0x00ffffff),
      // ),
      // home: const Screen2(),
    );
  }
}
