import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/Widgets/BottomAppBarCustom.dart';
import 'package:laza/Screens/screen6/screen6.dart';
import 'package:laza/common/validator.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({Key? key}) : super(key: key);

  @override
  State<ForgetScreen> createState() => _Screen3State();
}

GlobalKey<FormState> _formKey = GlobalKey<FormState>();
String? email;

isEmailValid(String? emailResult) {
  if (emailResult == null) {
    return 'valid';
  }
  return '';
}

class _Screen3State extends State<ForgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      bottomNavigationBar: BottomAppBarWidget(
        validationCallBack: () {
          Navigator.push(
              context,
              CupertinoPageRoute(
                  builder: (context) => const emailVerification()));
        },
        buttonTextValue: 'Confirm Email',
        buttonBackgroundColor: 0Xff9775FA,
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        elevation: 0,
        title: const Text(
          "Forget Password",
          style: TextStyle(
              height: 2.0, fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
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
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/cloudLockImage.png",
                    ),
                  )
                ],
              ),
              Expanded(
                child: Form(
                  key: _formKey,
                  child: Container(
                    margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
                    child: Column(children: [
                      TextFormField(
                        validator: (value) {
                          String? validEmail = Validators.validateEmail(value);
                          setState(() {
                            email = isEmailValid(validEmail);
                          });

                          return Validators.validateEmail(value);
                        },
                        onChanged: (value) {
                          _formKey.currentState!.validate();
                        },
                        initialValue: "bill.senders@example.com",
                        decoration: InputDecoration(
                            labelText: "Email Address",
                            suffixIcon: email == 'valid'
                                ? const Icon(
                                    Icons.check,
                                    color: Color(0xff34C358),
                                  )
                                : null,
                            labelStyle: const TextStyle(
                                color: Colors.grey, fontSize: 11.0)),
                      ),
                    ]),
                  ),
                ),
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
            ],
          ),
        ),
      ),
    );
  }
}
