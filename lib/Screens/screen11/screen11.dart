// ignore_for_file: unnecessary_const

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/screen12/screen12.dart';
import 'package:laza/Screens/screen9/screen9.dart';

// ignore: camel_case_types
class screen11 extends StatelessWidget {
  const screen11({Key? key}) : super(key: key);

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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black87,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Center(
          child: Text(
            'Add Reviews',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 17),
          ),
        ),
      ),
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
                    child: Container(
                        margin: const EdgeInsets.all(10),
                        height: 15,
                        // width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0XffF5F6FA),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: SizedBox(
                          child: Container(
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0Xff9775FA)),
                          ),
                          height: 5,
                          width: 3,
                        )),
                  ),
                  const Text(
                    '5.0',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 11),
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
