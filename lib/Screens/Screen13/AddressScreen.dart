import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:laza/Screens/Screen13/Widget/InputSingle.dart';
import 'package:laza/Screens/Widgets/CustomAppBarSingle.dart';
import '../Widgets/BottomNavigations.dart';
import 'Widget/DoubleInputs.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

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
      appBar: AppBarCustom.appBarCustom(
          0,
          Colors.transparent,
          true,
          40.0,
          const BackButton(
            color: Colors.black,
          ),
          const Text(
            'Address',
            style: TextStyle(color: Colors.black),
          ),
          null),
      bottomNavigationBar: BottomNavigationChildScreens(
        buttonTitle: 'Save Address',
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // CustomAppBarSingle("Address"),
              Column(
                children: [
                  SingleInput(
                    inputLable: "Name",
                    hintText: "Mrh Raju",
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(height: 15),
                  DoubleRowInput(
                    textInputType: TextInputType.text,
                    label1: 'Country',
                    hintText1: 'Bangladesh',
                    label2: 'City',
                    hintText2: 'Sylhet',
                    textInputType2: TextInputType.number,
                  ),
                  const SizedBox(height: 15),
                  SingleInput(
                    inputLable: "Phone Number",
                    hintText: "+880 1453-987533",
                    textInputType: TextInputType.phone,
                  ),
                  const SizedBox(height: 15),
                  SingleInput(
                      textInputType: TextInputType.text,
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
