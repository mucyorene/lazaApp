// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laza/Screens/Screen3/Screen3.dart';
import 'package:laza/Screens/Widgets/BottomAppBarCustom.dart';
import 'package:laza/Screens/screen4/screen4.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBarWidget(
        validationCallBack: () {
          Navigator.push(context,
              CupertinoPageRoute(builder: (context) => const Screen3()));
        },
        buttonTextValue: 'Create an Account',
        buttonBackgroundColor: 0Xff9775FA,
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        foregroundColor: Colors.black45,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 150,
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.all(15),
                child: const Text(
                  'Let\'s Get Started',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                )),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0Xff4267B2),
              ),
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              width: double.infinity,
              child: RaisedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.facebookF,
                  color: Colors.white,
                ),
                label: const Text(
                  'Facebook',
                  style: TextStyle(fontSize: 17),
                ),
                textColor: Colors.white,
                color: const Color(0Xff4267B2),
                elevation: 0,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0Xff1DA1F2),
              ),
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              width: double.infinity,
              child: RaisedButton.icon(
                onPressed: () {},
                onHighlightChanged: null,
                icon: const Icon(
                  FontAwesomeIcons.twitter,
                  color: Colors.white,
                ),
                label: const Text(
                  'Twitter',
                  style: TextStyle(fontSize: 17),
                ),
                textColor: Colors.white,
                color: const Color(0Xff1DA1F2),
                elevation: 0,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0XffEA4335),
              ),
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              width: double.infinity,
              child: RaisedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.google,
                  color: Colors.white,
                ),
                label: const Text(
                  'Google',
                  style: TextStyle(fontSize: 17),
                ),
                textColor: Colors.white,
                color: const Color(0XfFEA4335),
                elevation: 0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account ?'),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const WelcomePage()));
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
