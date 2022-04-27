import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen8/HomePage.dart';
import 'package:laza/Screens/screen9/screen9.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool _toggled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0Xff9775FA),
        child: Container(
            height: 50,
            alignment: Alignment.center,
            child: RaisedButton(
                elevation: 0,
                onPressed: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomeScreen()),
  );},
                color: const Color(0Xff9775FA),
                child: const Text(
                  'Reset Password',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))),
      ),
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Column(
            children: [
              Container(
                height: 200,
                child: const Text(
                  "New Password",
                  style: TextStyle(
                      height: 3.0,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1D1E20),
                      letterSpacing: 0.7),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Column(children: [
                  TextFormField(
                    initialValue: "HJ@#9783kja",
                    style: const TextStyle(fontSize: 15,),
                    decoration: const InputDecoration(
                        labelText: "Password",
                        suffixText: 'Strong',
                        suffixStyle: TextStyle(color: Colors.green),
                        labelStyle:
                        TextStyle(color: Color(0xff8F959E), fontSize: 13.0)),
                  ),
                  TextFormField(
                    initialValue: "HJ@#9783kja",
                    style: const TextStyle(fontSize: 15),
                    decoration: const InputDecoration(
                        labelText: "Confirm Password",
                        suffixText: 'Strong',
                        suffixStyle: TextStyle(color: Colors.green),
                        labelStyle:
                        TextStyle(color: Color(0xff8F959E), fontSize: 13.0)),
                  ),
                ]),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: const Text(
                    "Please write your email to receive a confirmation code to set a new password.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 155,)
            ],
          ),
        ),
      ),
    );
  }
}
