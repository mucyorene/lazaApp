import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Screen3/Screen3.dart';

class CreateAccont extends StatelessWidget {
  const CreateAccont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: Color(0Xff9775FA),
        child: Container(
            height: 50,
            alignment: Alignment.center,
            child: RaisedButton(
                elevation: 0,
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const Screen3()));
                },
                color: const Color(0Xff9775FA),
                child: const Text(
                  'Create an Account',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))),
      ),
      appBar: AppBar(
        elevation: 0,

        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        leading: IconButton(icon: Icon(Icons.arrow_back_rounded), onPressed: (){Navigator.pop(context);},),
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
              padding: EdgeInsets.all(10),
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
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: RaisedButton.icon(
                onPressed: () {},
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
              padding: EdgeInsets.all(10),
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
            Container(
              padding: const EdgeInsets.only(top: 45),
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
              //child: Text('Don\'t have an account? Create'),
              child: Text.rich(
                  TextSpan(style: const TextStyle(fontSize: 14), children: [
                const TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(fontWeight: FontWeight.w300)),
                TextSpan(
                  text: 'Sign in',
                  recognizer: TapGestureRecognizer()..onTap = () {},
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ])),
            ),
          ],
        ),
      ),
    );
  }
}
