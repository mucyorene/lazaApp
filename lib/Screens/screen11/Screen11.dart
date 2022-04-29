// ignore_for_file: unnecessary_const, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/screen12/screen12.dart';
import 'package:laza/Screens/screen17/navigation_drawer.dart';

import '../Widgets/CustomAppBarSingle.dart';

// ignore: camel_case_types
class screen11 extends StatefulWidget {
  const screen11({Key? key}) : super(key: key);

  @override
  State<screen11> createState() => _screen11State();
}

class _screen11State extends State<screen11> {
  dynamic sliderValue = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: const Color(0Xff9775FA),
        child: Container(
            height: 50,
            alignment: Alignment.center,
            child: RaisedButton(
                elevation: 0,
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const screen12()));
                },
                color: const Color(0Xff9775FA),
                child: const Text(
                  'Submit Review',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))),
      ),
      // appBar: AppBar(
      //   foregroundColor: Colors.black,
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   // leading: IconButton(
      //   //   icon: const Icon(
      //   //     Icons.arrow_back_rounded,
      //   //     color: Colors.black87,
      //   //   ),
      //   //   onPressed: () {
      //   //     Navigator.pop(context);
      //   //   },
      //   // ),
      //
      //   title: const Center(
      //     child: Text(
      //       'Add Reviews',
      //       style: TextStyle(
      //           fontWeight: FontWeight.bold, color: Colors.black, fontSize: 17),
      //     ),
      //   ),
      // ),
      drawer: const NavigationDrawer(),
      appBar: AppBarCustom.appBarCustom(
          0.0,
          Colors.transparent,
          true,
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
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 11),
                  ),
                  Expanded(
                      child: SliderTheme(
                    data:const SliderThemeData(
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
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 11),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
