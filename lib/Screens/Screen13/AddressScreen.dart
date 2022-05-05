import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:laza/Screens/Screen13/Widget/InputSingle.dart';
import 'package:laza/Screens/Widgets/CustomAppBarSingle.dart';
import 'package:laza/common/validator.dart';
import '../Screen8/HomePage.dart';
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
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBarCustom.appBarCustom(
          0,
          Colors.transparent,
          true,
          50.0,
          40.0,
          const BackButton(
            color: Colors.black,
          ),
          const Text(
            'Address',
            style: TextStyle(color: Colors.black),
          ),
          null),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0Xff9775FA),
        child: Container(
            height: 75,
            alignment: Alignment.center,
            child: TextButton(
                onPressed: () {
                  _formKey.currentState!.validate();
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const HomeScreen()));
                  }
                },
                // Color(0Xff9775FA)
                child: const Text(
                  'Save Address',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Name',
                      style: TextStyle(
                          fontSize: 17.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0XffF5F6FA),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.length < 3) {
                            return 'Fill this field';
                          }
                        },
                        keyboardType: TextInputType.name,
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                        cursorColor: const Color(0XffF5F6FA),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Mrh Raju',
                          hintStyle: TextStyle(
                            color: Colors.grey, // <-- Change this
                            fontSize: null,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Country',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                height: 50,
                                decoration: BoxDecoration(
                                  color: const Color(0XffF5F6FA),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Country field is required';
                                    } else if (value.length < 3) {
                                      return 'At least three characters required';
                                    }
                                    return null;
                                  },
                                  style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                  cursorColor: const Color(0XffF5F6FA),
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      color: Colors.grey, // <-- Change this
                                      fontSize: null,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'City',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0XffF5F6FA),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'City field required';
                                  } else if (value.length < 3) {
                                    return 'At least 3 characters required';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.name,
                                style: const TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                                cursorColor: const Color(0XffF5F6FA),
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: Colors.grey, // <-- Change this
                                    fontSize: null,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                      ],
                    ),
                  ],
                ),
                // DoubleRowInput(
                //   textInputType: TextInputType.text,
                //   label1: 'Country',
                //   hintText1: 'Bangladesh',
                //   label2: 'City',
                //   hintText2: 'Sylhet',
                //   textInputType2: TextInputType.number,
                // ),
                const SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Phone Number',
                      style: TextStyle(
                          fontSize: 17.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0XffF5F6FA),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Country field is required';
                          } else if (value.length < 3) {
                            return 'At least three characters required';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                        cursorColor: const Color(0XffF5F6FA),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: '+880 1453-987533',
                          hintStyle: TextStyle(
                            color: Colors.grey, // <-- Change this
                            fontSize: null,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // SingleInput(
                //   inputLable: "Phone Number",
                //   hintText: "+880 1453-987533",
                //   textInputType: TextInputType.phone,
                // ),
                const SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Address',
                      style: TextStyle(
                          fontSize: 17.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0XffF5F6FA),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: TextFormField(
                        validator: (value) {
                          return Validators.validateName(value);
                        },
                        keyboardType: TextInputType.name,
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                        cursorColor: const Color(0XffF5F6FA),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Chhatak, Sunamgonj 12/8AB',
                          hintStyle: TextStyle(
                            color: Colors.grey, // <-- Change this
                            fontSize: null,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // SingleInput(
                //     textInputType: TextInputType.text,
                //     inputLable: "Address",
                //     hintText: "Chhatak, Sunamgonj 12/8AB"),
                const SizedBox(height: 15),
                SwitchListTile(
                  activeColor: Colors.green,
                  title: const Text(
                    "Save as primary address",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  onChanged: (bool value) {
                    setState(() {
                      _toggled = value;
                    });
                  },
                  value: _toggled,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
