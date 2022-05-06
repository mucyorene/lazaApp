import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen13/Widget/DoubleInputs.dart';
import 'package:laza/Screens/Screen13/Widget/InputSingle.dart';
import 'package:laza/Screens/Screen14/PaymentScreen.dart';
import 'package:laza/Screens/Screen15/Widgets/SingleCard15.dart';
import 'package:laza/Screens/Widgets/BottomAppBarCustom.dart';
import 'package:laza/Screens/Widgets/CustomAppBarSingle.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({Key? key}) : super(key: key);

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom.appBarCustom(
          0.0,
          Colors.transparent,
          true,
          50.0,
          40.0,
          const BackButton(
            color: Colors.black,
          ),
          const Text(
            'Add New Card',
            style: TextStyle(color: Colors.black),
          ),
          null),
      bottomNavigationBar: BottomAppBarWidget(
        validationCallBack: () {
          if (_formKey.currentState!.validate()) {
            Navigator.push(
                context, CupertinoPageRoute(builder: (cxt) => const Payment()));
          }
        },
        buttonBackgroundColor: 0Xff9775FA,
        buttonTextValue: 'Add Card',
      ),
      // bottomNavigationBar: BottomNavigationChildScreens(
      //   buttonTitle: 'Add Card',
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                // CustomAppBarSingle("Add New Card"),
                Row(
                  children: [
                    SingleCardScreen15(
                      cardImange: "assets/images/imagenine.png",
                      colors: "0xffFFEEE3",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SingleCardScreen15(
                      cardImange: "assets/images/imageten.png",
                      colors: "0xffF5F6FA",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SingleCardScreen15(
                      cardImange: "assets/images/cardthree.png",
                      colors: "0xffF5F6FA",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                SingleInput(
                  formValidations: (value) {
                    if (value!.isEmpty || value == '') {
                      return 'This field is require';
                    } else if (value.length < 3) {
                      return 'Too short';
                    }
                    return null;
                  },
                  inputLable: "Card Owner",
                  hintText: "Mrh Raju",
                  textInputType: TextInputType.text,
                ),
                const SizedBox(height: 10.0),
                SingleInput(
                  formValidations: (value) {
                    if (value!.isEmpty) {
                      return "This field is required";
                    } else if (value.length < 24 || value.length > 24) {
                      return 'Card number should have 24 digits';
                    }
                    return null;
                  },
                  inputLable: "Card Number",
                  hintText: "5254 7634 8734 7690",
                  textInputType: TextInputType.number,
                ),
                const SizedBox(height: 10.0),
                DoubleRowInput(
                  label1: "EXP",
                  hintText1: "24/24",
                  label2: "CVV",
                  hintText2: "7763",
                  textInputType: TextInputType.text,
                  textInputType2: TextInputType.number,
                  textField2Validation: (value) {
                    if (value!.length > 5 || value.length < 5) {
                      return 'Short or too much characters';
                    }
                    return null;
                  },
                  textField1Validation: (value) {
                    if (value!.length < 3 || value.length > 3) {
                      return 'fix length of character';
                    }
                    return null;
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
