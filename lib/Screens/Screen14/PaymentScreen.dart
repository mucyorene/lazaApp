import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen13/Widget/InputSingle.dart';
import 'package:laza/Screens/Widgets/BottomNavigations.dart';
import '../Screen13/Widget/DoubleInputs.dart';
import '../Screen15/AddNewCard.dart';
import '../Widgets/CustomAppBarSingle.dart';
import '../Widgets/CustomAppBarSingle.dart';

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
      appBar: AppBarCustom.appBarCustom(
          0.0,
          Colors.transparent,
          true,
          50.0,
          40,
          const BackButton(
            color: Colors.black,
          ),
          const Text("Payment",
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          null),
      // appBar: AppBar(
      //   elevation: 0,
      //   leadingWidth: 40,
      //   centerTitle: true,
      //   title: const Text("Payment",
      //       style: TextStyle(
      //           fontSize: 17.0,
      //           fontWeight: FontWeight.bold,
      //           color: Colors.black)),
      //   backgroundColor: Colors.white,
      //   leading: const CircleAvatar(
      //       backgroundColor: Color(0xffF5F6FA),
      //       child: BackButton(
      //         color: Colors.black,
      //       )),
      // ),

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
                      return Container(
                        height: 180,
                        width: 300,
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius:
                                BorderRadiusDirectional.circular(15.0)),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: -80,
                              left: -50,
                              child: Container(
                                height: 200,
                                width: 200,
                                decoration: const BoxDecoration(
                                    color: Colors.orange,
                                    shape: BoxShape.circle),
                              ),
                            ),
                            Positioned(
                              bottom: -170,
                              right: -150,
                              child: Container(
                                height: 350,
                                width: 350,
                                decoration: const BoxDecoration(
                                    color: Colors.red, shape: BoxShape.circle),
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 20.0),
                                        child: const Text(
                                          "Mrh Raju",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Color(0xffFFFFFF)),
                                        )),
                                    const SizedBox(
                                      width: 140,
                                    ),
                                    Container(
                                      child: Container(
                                        child: const Text(
                                          "Visa",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Color(0xffFFFFFF)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 40.0,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 20),
                                      child: const Text(
                                        "Visa Classic",
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            color: Color(0xffFFFFFF)),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 20),
                                      child: const Text(
                                        "5254 **** **** 7690",
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Color(0xffFFFFFF),
                                            letterSpacing: 2.0),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 20),
                                      child: const Text(
                                        "\$3,763.87",
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Color(0xffFFFFFF)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      );
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
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const AddNewCard()));
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
                  SingleInput(
                    inputLable: "Card Owner",
                    hintText: "Mrh Raju",
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleInput(
                    inputLable: "Card Number",
                    hintText: "5254 7634 8734 7690",
                    textInputType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DoubleRowInput(
                    label1: 'EXP',
                    hintText1: '24/24',
                    label2: 'CVV',
                    hintText2: '7763',
                    textInputType: TextInputType.text,
                    textInputType2: TextInputType.number,
                  ),
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
