// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen5/ForgetScreen.dart';
import 'package:laza/Screens/Screen8/HomePage.dart';

import 'package:laza/common/validator.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _welcomePageState();
  }
}

// ignore: camel_case_types
class _welcomePageState extends State<WelcomePage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _remember = false;
  String strongPwd = '';
  Widget? correctName;

  String isPwdStrong(String? validationValue) {
    if (validationValue == null) {
      return 'strong';
    }
    return 'weak';
  }

  isNameValid(String? nameResult) {
    if (nameResult == null) {
      return 'valid';
    }
    return '';
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: const Color(0Xff9775FA),
        child: Container(
            height: 50,
            alignment: Alignment.center,
            child: RaisedButton(
                elevation: 0,
                onPressed: () {
                  _formKey.currentState!.validate();

                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const HomeScreen()));
                  }
                },
                color: const Color(0Xff9775FA),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))),
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
                  'Welcome',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                )),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Container(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                    child: TextFormField(
                      onChanged: (value) {
                        _formKey.currentState!.validate();
                      },
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      cursorColor: const Color(0Xff34C759),
                      decoration: InputDecoration(
                          errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 0.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.transparent, width: 0.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black45)),
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                          hintText: 'User Name',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: null,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                          labelText: 'User Name',
                          suffixIcon: correctName == 'valid'
                              ? const Icon(
                                  Icons.check,
                                  color: Color(0Xff34C759),
                                )
                              : null),
                      controller: _usernameController,
                      validator: (value) {
                        String? validName = Validators.validateName(value);
                        setState(() {
                          correctName = isNameValid(validName);
                        });

                        return Validators.validateName(value);
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      onChanged: (values) {
                        _formKey.currentState!.validate();
                      },
                      obscureText: true,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      cursorColor: const Color(0Xff34C759),
                      decoration: InputDecoration(
                          errorBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 0.0),
                          ),
                          focusedErrorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.transparent, width: 0.0),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black45)),
                          labelStyle: const TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                          hintText: 'password',
                          hintStyle: const TextStyle(
                            color: Colors.grey, // <-- Change this
                            fontSize: null,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                          labelText: 'password',
                          suffixText: strongPwd == 'strong' ? 'Strong' : null,
                          suffixStyle:
                              const TextStyle(color: Color(0Xff34C759))),
                      controller: _passwordController,
                      validator: (value) {
                        String? pwdPassed = Validators.validatePassword(value);
                        setState(() {
                          strongPwd = isPwdStrong(pwdPassed);
                        });

                        return Validators.validatePassword(value);
                      },
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                      //child: Text('Don\'t have an account? Create'),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text.rich(
                          TextSpan(
                            text: 'Forgot password?',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ForgetScreen()));
                              },
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0XffEA4335),
                                fontSize: 17),
                          ),
                        ),
                      )),
                  SwitchListTile(
                    activeColor: const Color(0Xff34C759),
                    title: const Text('Remember Me'),
                    value: _remember,
                    onChanged: (bool value) {
                      setState(() => _remember = value);
                    },
                    //can this be selected?
                  ),
                ],
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
                    text:
                        "by connecting your account, confirm that you agree with our ",
                    style: TextStyle(fontWeight: FontWeight.w300)),
                TextSpan(
                  text: 'Terms and services',
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
