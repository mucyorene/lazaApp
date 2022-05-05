import 'package:flutter/material.dart';
import 'package:laza/Screens/Widgets/BottomAppBarCustom.dart';
import 'package:laza/common/validator.dart';
import '../screen4/screen4.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool _toggled = true;
  String strongPassword = '';
  String _confirmPass = '';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _originalPwdText = '';

  String isPwdStrong(String? validationValue) {
    if (validationValue == null) {
      return 'strong';
    }
    return 'weak';
  }

  @override
  Widget build(BuildContext context) {
    // print("in build original password $_originalPwdText");
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      bottomNavigationBar: BottomAppBarWidget(
        validationCallBack: () {
          _formKey.currentState!.validate();
          if (_formKey.currentState!.validate() &&
              _confirmPass == _originalPwdText) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WelcomePage()),
            );
          }
        },
        buttonBackgroundColor: 0Xff9775FA,
        buttonTextValue: 'Reset Password',
      ),
      // bottomNavigationBar: BottomAppBar(
      //   color: const Color(0Xff9775FA),
      //   child: Container(
      //       height: 50,
      //       alignment: Alignment.center,
      //       child: RaisedButton(
      //           elevation: 0,
      //           onPressed: () {
      //             _formKey.currentState!.validate();
      //             if (_formKey.currentState!.validate() && _confirmPass == _originalPwdText) {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                     builder: (context) => const WelcomePage()),
      //               );
      //             }
      //             else{
      //               print("Password not match");
      //             }
      //           },
      //           color: const Color(0Xff9775FA),
      //           child: const Text(
      //             'Reset Password',
      //             style: TextStyle(
      //                 fontSize: 17,
      //                 color: Colors.white,
      //                 fontWeight: FontWeight.bold),
      //           ))),
      // ),
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
                child: Form(
                  key: _formKey,
                  child: Column(children: [
                    TextFormField(
                      validator: (value) {
                        String? pwdPassed = Validators.validatePassword(value);
                        setState(() {
                          // print(strongPassword);
                          strongPassword = isPwdStrong(pwdPassed);
                          strongPassword == 'strong'
                              ? _originalPwdText = value
                              : '';
                        });
                        return Validators.validatePassword(value);
                      },
                      onChanged: (value) {
                        _formKey.currentState!.validate();
                      },
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                          labelText: "Password",
                          suffixText:
                              strongPassword == 'strong' ? 'Strong' : null,
                          suffixStyle: const TextStyle(color: Colors.green),
                          labelStyle: const TextStyle(
                              color: Color(0xff8F959E), fontSize: 13.0)),
                    ),
                    TextFormField(
                      onChanged: (value) {
                        print(
                            "Changed value $value and Strong password is: $_originalPwdText");
                        if (value == _originalPwdText) {
                          setState(() {
                            _confirmPass = value;
                            print("$_confirmPass this is it");
                          });
                        }
                      },
                      validator: (value) {
                        if (value == strongPassword) {
                          setState(() {
                            _confirmPass = value!;
                          });
                        }
                      },
                      style: const TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                          labelText: "Confirm Password",
                          suffixText: strongPassword == _confirmPass
                              ? 'Similar'
                              : 'Not',
                          suffixStyle: const TextStyle(color: Colors.green),
                          labelStyle: const TextStyle(
                              color: Color(0xff8F959E), fontSize: 13.0)),
                    ),
                  ]),
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
              const SizedBox(
                height: 155,
              )
            ],
          ),
        ),
      ),
    );
  }
}
