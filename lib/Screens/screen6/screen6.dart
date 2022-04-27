// ignore_for_file: deprecated_member_use
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen7/NewPassword.dart';

// ignore: camel_case_types
class emailVerification extends StatefulWidget {
  const emailVerification({Key? key}) : super(key: key);

  @override
  State<emailVerification> createState() => _Screen3State();
}

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _Screen3State extends State<emailVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        elevation: 0,
        leading: Container(
          decoration: const BoxDecoration(
              color: Color(0xffF5F6FA),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: const BackButton(
            color: Color(0xff1D1E20),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0Xff9775FA),
        child: Container(
            height: 50,
            alignment: Alignment.center,
            child: RaisedButton(
                elevation: 0,
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const NewPassword()));
                },
                color: const Color(0Xff9775FA),
                child: const Text(
                  'VERIFICATION ',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(children: [
            Column(children: [
              const Text(
                'Verification Code',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Image.asset('assets/images/cloudLockImage.png'),
              Container(
                padding: const EdgeInsets.all(40),
                child: Form(
                    key: _formKey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        textField(true, false),
                        textField(true, false),
                        textField(true, false),
                        textField(false, true)
                      ],
                    )),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text.rich(
                    TextSpan(style: const TextStyle(fontSize: 14), children: [
                  TextSpan(
                    text: '00 : 20 ',
                    recognizer: TapGestureRecognizer()..onTap = () {},
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(
                      text: "Resend Confirmation Code ",
                      style: TextStyle(fontWeight: FontWeight.w300)),
                ])),
              ),
            ]),
          ]),
        ),
      ),
    );
  }

  textField(bool first, last) {
    return Flexible(
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black54),
            borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(3),
        child: SizedBox(
          height: 60,
          child: TextFormField(
            cursorColor: Colors.grey,
            keyboardType: TextInputType.number,
            style: const TextStyle(fontSize: 30),
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 5,
              ),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
            onChanged: (value) {
              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.length == 1 && first == false) {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => const NewPassword()));

                _formKey.currentState!.reset();
                _formKey.currentState!.save();
              }
            },
          ),
        ),
      ),
    );
  }
}
