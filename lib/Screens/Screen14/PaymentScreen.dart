import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen13/Widget/InputSingle.dart';
import 'package:laza/Screens/Widgets/BottomNavigations.dart';
import 'package:laza/Screens/Widgets/CustomAppBarSingle.dart';

import '../Screen13/Widget/DoubleInputs.dart';
import '../Screen15/AddNewCard.dart';

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
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 40,
        centerTitle: true,
        title: const Text("Payment",
            style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        backgroundColor: Colors.white,
        leading: const CircleAvatar(
            backgroundColor: Color(0xffF5F6FA),
            child: BackButton(
              color: Colors.black,
            )),
      ),
      bottomNavigationBar: BottomNavigationChildScreens(
        buttonTitle: 'Save Card',
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // CustomAppBarSingle("Payment"),
              SizedBox(
                height: 185,
                child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          const SizedBox(width: 20),
                          Container(
                            height: 180,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadiusDirectional.circular(10.0)),
                            child: Center(
                              child: Text(
                                "Card $index",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      );
                      // return Container(
                      //   child: GestureDetector(
                      //     onTap: () {
                      //       Navigator.push(context, CupertinoPageRoute(builder: (context)=>const MainStock()));
                      //     },
                      //     child: Card(
                      //       color: const Color(0xffF5F6FA),
                      //       shape: RoundedRectangleBorder(
                      //           borderRadius:
                      //           BorderRadius.circular(15)),
                      //       child: Row(
                      //         children: [
                      //           Container(
                      //             height: 60,
                      //             width: 80,
                      //             padding: const EdgeInsets.all(8.0),
                      //             decoration: BoxDecoration(
                      //                 color: Colors.transparent,
                      //                 borderRadius:
                      //                 BorderRadius.circular(15.0),
                      //                 image: const DecorationImage(
                      //                     image: AssetImage(
                      //                       "assets/images/nike.JPG",
                      //                     ),
                      //                     fit: BoxFit.cover)),
                      //           ),
                      //           Container(
                      //             height: 60,
                      //             width: 80,
                      //             child: Center(
                      //               child: Text(
                      //                 categories[index],
                      //                 style: const TextStyle(
                      //                     fontWeight: FontWeight.bold,
                      //                     height: 1.5),
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // );
                    },
                    separatorBuilder: (_, index) => const SizedBox(
                          height: 5,
                        ),
                    itemCount: 3),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffF6F2FF),
                    borderRadius: BorderRadius.circular(10.0),
                    border:
                        Border.all(color: const Color(0xff9775FA), width: 1.0)),
                padding: const EdgeInsets.all(15.0),
                width: MediaQuery.of(context).size.width,
                child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(context, CupertinoPageRoute(builder: (context)=>const AddNewCard()));
                    },
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
