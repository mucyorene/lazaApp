import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen8/HomePage.dart';
import 'package:laza/Screens/Widgets/BottomAppBarCustom.dart';
import 'package:laza/Screens/Widgets/NavigationScreens.dart';
import 'package:laza/common/validator.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  bool _toggled = true;
  Validators validators = Validators();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String strongPwd = '';
  String? email;
  String? correctName;

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

  isEmailValid(String? emailResult) {
    if (emailResult == null) {
      return 'valid';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      bottomNavigationBar: BottomAppBarWidget(
        validationCallBack: () {
          _formKey.currentState!.validate();
          if (_formKey.currentState!.validate()) {
            Navigator.push(
                context,
                CupertinoPageRoute(
                    builder: (context) => const NavigationScreens()));
          }
        },
        buttonBackgroundColor: 0Xff9775FA,
        buttonTextValue: 'Sign up',
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
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: 200,
                child: const Text(
                  "Sign Up",
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
                child: Form(
                  key: _formKey,
                  child: Column(children: [
                    TextFormField(
                      validator: (value) {
                        var validName = Validators.validateName(value);
                        setState(() {
                          correctName = isNameValid(validName);
                        });
                        return Validators.validateName(value);
                      },
                      onChanged: (value) {
                        _formKey.currentState!.validate();
                      },
                      style: const TextStyle(
                          color: Color(0xff1D1E20),
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                      decoration: InputDecoration(
                          labelText: "Username",
                          suffixIcon: correctName == 'valid'
                              ? const Icon(
                                  Icons.check,
                                  color: Color(0xff34C358),
                                )
                              : null,
                          labelStyle: const TextStyle(
                              color: Colors.grey, fontSize: 13.0)),
                    ),
                    TextFormField(
                      validator: (value) {
                        String? pwdPassed = Validators.validatePassword(value);
                        setState(() {
                          strongPwd = isPwdStrong(pwdPassed);
                        });

                        return Validators.validatePassword(value);
                      },
                      onChanged: (value) {
                        _formKey.currentState!.validate();
                      },
                      style: const TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                          labelText: "Password",
                          suffixText: strongPwd == 'strong' ? 'Strong' : null,
                          suffixStyle: const TextStyle(color: Colors.green),
                          labelStyle: const TextStyle(
                              color: Colors.grey, fontSize: 13.0)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Email Address",
                          suffixIcon: email == 'valid'
                              ? const Icon(
                                  Icons.check,
                                  color: Color(0xff34C358),
                                )
                              : null,
                          labelStyle: const TextStyle(
                              color: Colors.grey, fontSize: 13.0)),
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
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: const Text(
                              "Remember me",
                            ),
                          ),
                        ),
                        Expanded(
                            child: SwitchListTile(
                          activeColor: Colors.green,
                          onChanged: (bool value) {
                            setState(() {
                              _toggled = value;
                            });
                          },
                          value: _toggled,
                        )),
                      ],
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
