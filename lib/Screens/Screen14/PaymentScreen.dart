import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen13/Widget/InputSingle.dart';
import 'package:laza/Screens/Widgets/BottomNavigations.dart';
import 'package:laza/Screens/Widgets/CustomAppBarSingle.dart';

import '../Screen13/Widget/DoubleInputs.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool _toggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationChildScreens(
        buttonTitle: 'Save Card',
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CustomAppBarSingle("Payment"),
              Container(
                height: 300.0,
                decoration: const BoxDecoration(color: Colors.red),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffF6F2FF),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: const Color(0xff9775FA), width: 1.0)
                ),
                padding: const EdgeInsets.all(15.0),
                width: MediaQuery.of(context).size.width,
                child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add_box_outlined,
                        color: Color(0xff9775FA)),
                    label: const Text("Add new card",
                        style: TextStyle(
                            fontSize: 17.0, color: Color(0xff9775FA)))),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleInput(inputLable: "Card Owner", hintText: "Mrh Raju"),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleInput(
                      inputLable: "Card Number",
                      hintText: "5254 7634 8734 7690"),
                  const SizedBox(
                    height: 10,
                  ),
                  DoubleRowInput(
                      label1: 'EXP',
                      hintText1: '24/24',
                      label2: 'CVV',
                      hintText2: '7763'),
                  const SizedBox(
                    height: 10,
                  ),
                  SwitchListTile(
                    activeColor: Colors.green,
                    title: const Text(
                      "Save card info",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    onChanged: (bool value) {
                      setState(() {
                        _toggled = value;
                      });
                    },
                    value: _toggled,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
