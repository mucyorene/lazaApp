import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen13/Widget/InputSingle.dart';
import 'package:laza/Screens/Widgets/CustomAppBarSingle.dart';

import '../Widgets/BottomNavigations.dart';
import 'Widget/DoubleInputs.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  bool _toggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationChildScreens(
        buttonTitle: 'Save Address',
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CustomAppBarSingle("Address"),
              Column(
                children: [
                  SingleInput(inputLable: "Name", hintText: "Mrh Raju"),
                  const SizedBox(height: 15),
                  DoubleRowInput(
                    label1: 'Country',
                    hintText1: 'Bangladesh',
                    label2: 'City',
                    hintText2: 'Sylhet',
                  ),
                  const SizedBox(height: 15),
                  SingleInput(
                      inputLable: "Phone Number", hintText: "+880 1453-987533"),
                  const SizedBox(height: 15),
                  SingleInput(
                      inputLable: "Address",
                      hintText: "Chhatak, Sunamgonj 12/8AB"),
                  const SizedBox(height: 15),
                  SwitchListTile(
                    activeColor: Colors.green,
                    title: const Text(
                      "Save as primary address",
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
