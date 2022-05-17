// ignore_for_file: unnecessary_const, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen10/ReviewScreen.dart';
import 'package:laza/Model/Others/ReviewModel.dart';
import 'package:laza/Screens/Screen13/Widget/InputSingle.dart';
import 'package:laza/Screens/Widgets/BottomAppBarCustom.dart';
import 'package:laza/Screens/screen11/submited.dart';
import 'package:laza/Screens/screen17/navigation_drawer.dart';
import 'package:laza/common/validator.dart';

import '../../Model/Others/ReviewModel.dart';
import '../Widgets/CustomAppBarSingle.dart';

// ignore: camel_case_types
class screen11 extends StatefulWidget {
  const screen11({Key? key}) : super(key: key);

  @override
  State<screen11> createState() => _screen11State();
}

class _screen11State extends State<screen11> {
  double sliderValue = 3;

  TextEditingController name = TextEditingController();
  TextEditingController comment = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBarWidget(
        buttonTextValue: 'Submit Review',
        buttonBackgroundColor: 0Xff9775FA,
        validationCallBack: () {
          if (_formKey.currentState!.validate()) {
            List<Review> reviews = Review.reviewGenerated();
            setState(() {
              reviews.add(Review(
                  id: 10,
                  name: name.text,
                  experiences: comment.text,
                  rating: sliderValue));
            });
            return Navigator.push(
                context, CupertinoPageRoute(builder: (cxt) => ReviewScreen()));
            // return Navigator.push(
            //     context,
            //     CupertinoPageRoute(
            //         builder: (context) => SubmitedValues(
            //             name: name.text,
            //             comment: comment.text,
            //             rating: sliderValue)
            //         // ReviewScreen(name: name.text, comment: comment.text, rating:sliderValue)
            //         ));
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
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0XffF5F6FA),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: TextFormField(
                    controller: name,
                    validator: Validators.validateName,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                    cursorColor: const Color(0XffF5F6FA),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type your name',
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
                    controller: comment,
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
