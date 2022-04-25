import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen13/Widget/DoubleInputs.dart';
import 'package:laza/Screens/Screen13/Widget/InputSingle.dart';
import 'package:laza/Screens/Screen15/Widgets/SingleCard15.dart';
import 'package:laza/Screens/Widgets/BottomNavigations.dart';
import 'package:laza/Screens/Widgets/CustomAppBarSingle.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({Key? key}) : super(key: key);

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom.appBarCustom(
          0.0,
          Colors.transparent,
          true,
          40.0,
          const BackButton(color: Colors.black,),
          const Text(
            'Add New Card',
            style: TextStyle(color: Colors.black),
          ),
          null),
      bottomNavigationBar: BottomNavigationChildScreens(
        buttonTitle: 'Add Card',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 20.0),
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
                inputLable: "Card Owner",
                hintText: "Mrh Raju",
                textInputType: TextInputType.text,
              ),
              const SizedBox(height: 10.0),
              SingleInput(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
