// ignore_for_file: unnecessary_const, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Model/Others/ReviewModel.dart';
import 'package:laza/Screens/Screen13/Widget/InputSingle.dart';
import 'package:laza/Screens/Widgets/BottomAppBarCustom.dart';
import 'package:laza/Screens/screen12/screen12.dart';
import 'package:laza/Screens/screen17/navigation_drawer.dart';
import 'package:laza/Screens/screen9/widgets/review.dart';
import 'package:laza/common/validator.dart';

import '../Widgets/CustomAppBarSingle.dart';

// ignore: camel_case_types
class screen11 extends StatefulWidget {
  const screen11({Key? key}) : super(key: key);

  @override
  State<screen11> createState() => _screen11State();
}

class _screen11State extends State<screen11> {
  late double sliderValue;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _nameFieldController = TextEditingController();
  final _reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBarWidget(
        buttonTextValue: 'Submit Review',
        buttonBackgroundColor: 0Xff9775FA,
        validationCallBack: () {
          if (_formKey.currentState!.validate()) {
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => const screen12()));
          }
        },
      ),
      drawer: const NavigationDrawer(),
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
            'Add Reviews',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 17),
          ),
          null),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SingleInput(
                  textEditingController: _nameFieldController,
                  inputLable: 'Name',
                  hintText: 'Type your Name',
                  formValidations: (value) {
                    return Validators.validateName(value);
                  },
                  textInputType: TextInputType.name,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'How was your experience ?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: 213,
                  decoration: BoxDecoration(
                    color: const Color(0XffF5F6FA),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: TextFormField(
                    controller: _reviewController,
                    validator: ((value) =>
                        value!.isEmpty ? 'leave some comment' : null),
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    minLines: 2,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                    cursorColor: const Color(0XffF5F6FA),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Describe your experience',
                      hintStyle: TextStyle(
                        color: Colors.grey, // <-- Change this
                        fontSize: null,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Star ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      '0.0',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 11),
                    ),
                    Expanded(
                        child: SliderTheme(
                      data: const SliderThemeData(
                          trackHeight: 10,
                          valueIndicatorColor: const Color(0Xff9775FA)),
                      child: Slider(
                          activeColor: const Color(0XffF5F6FA),
                          inactiveColor: const Color(0XffF5F6FA),
                          value: sliderValue,
                          thumbColor: const Color(0Xff9775FA),
                          min: 0.0,
                          divisions: 100,
                          max: 5.0,
                          label: sliderValue.round().toString(),
                          onChanged: (value) =>
                              setState(() => sliderValue = value)),
                    )),
                    const Text(
                      '5.0',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 11),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
