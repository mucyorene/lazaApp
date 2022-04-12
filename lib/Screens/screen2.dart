import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                onPressed: () {},
                color: Color(0Xff9775FA),
                child: Text(
                  'Create an Account',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: SizedBox(child: BackButton()),
        foregroundColor: Colors.black45,
        shape: CircleBorder(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 150,
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(15),
                child: Text(
                  'Let\'s Get Started',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                )),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0Xff4267B2),
              ),
              height: 50,
              margin: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: RaisedButton.icon(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.facebookF,
                  color: Colors.white,
                ),
                label: Text(
                  'Facebook',
                  style: TextStyle(fontSize: 17),
                ),
                textColor: Colors.white,
                color: Color(0Xff4267B2),
                elevation: 0,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0Xff1DA1F2),
              ),
              height: 50,
              margin: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: RaisedButton.icon(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.twitter,
                  color: Colors.white,
                ),
                label: Text(
                  'Twitter',
                  style: TextStyle(fontSize: 17),
                ),
                textColor: Colors.white,
                color: Color(0Xff1DA1F2),
                elevation: 0,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0XffEA4335),
              ),
              height: 50,
              margin: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: RaisedButton.icon(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.google,
                  color: Colors.white,
                ),
                label: Text(
                  'Google',
                  style: TextStyle(fontSize: 17),
                ),
                textColor: Colors.white,
                color: Color(0XfFEA4335),
                elevation: 0,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 45),
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
              //child: Text('Don\'t have an account? Create'),
              child:
                  Text.rich(TextSpan(style: TextStyle(fontSize: 14), children: [
                const TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(fontWeight: FontWeight.w300)),
                TextSpan(
                  text: 'Signin',
                  recognizer: TapGestureRecognizer()..onTap = () {},
                  style: TextStyle(
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
