// ignore_for_file: deprecated_member_use
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen7/NewPassword.dart';
import 'package:laza/Screens/Widgets/BottomAppBarCustom.dart';
import 'package:laza/Screens/screen4/screen4.dart';
import 'package:laza/common/validator.dart';
// ignore: camel_case_types
class emailVerification extends StatefulWidget {
  const emailVerification({Key? key}) : super(key: key);

  @override
  State<emailVerification> createState() => _Screen3State();
}

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _Screen3State extends State<emailVerification>
    with TickerProviderStateMixin {
  late AnimationController controller;

  String get countText {
    Duration count = controller.duration! * controller.value;
    return ' ${count.inHours}${(count.inMinutes % 60).toString()}:${count.inSeconds}';
  }

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 60));
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.reverse(from: controller.value == 0 ? 1.0 : controller.value);

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
      bottomNavigationBar: BottomAppBarWidget(
        validationCallBack: () {
          Navigator.push(context,
              CupertinoPageRoute(builder: (context) => const NewPassword()));
        },
        buttonTextValue: 'Confirm Code',
        buttonBackgroundColor: 0Xff9775FA,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedBuilder(
                    animation: controller,
                    builder: (context, child) => Text(
                      countText,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const WelcomePage()));
                      },
                      child: const Text(
                        'Resend Confirmation Code',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))
                ],
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
            validator: Validators.validateVerificationField,
            onChanged: (value) {
              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.length == 1 && first == false) {
                // FocusScope.of(context).nextFocus();

                _formKey.currentState!.save();
              }
            },
          ),
        ),
      ),
    );
  }
}
