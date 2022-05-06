import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen13/Widget/InputSingle.dart';
import 'package:laza/Screens/Screen14/SingleCard.dart';
import 'package:laza/Screens/Widgets/BottomAppBarCustom.dart';
import '../Screen13/Widget/DoubleInputs.dart';
import '../Screen15/AddNewCard.dart';
import '../Widgets/CustomAppBarSingle.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool _toggled = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
      bottomNavigationBar: BottomAppBarWidget(
        validationCallBack: () {
          _formKey.currentState!.validate();
          if (_formKey.currentState!.validate()) {
            Navigator.push(context,
                CupertinoPageRoute(builder: (ctx) => const AddNewCard()));
          }
        },
        buttonBackgroundColor: 0Xff9775FA,
        buttonTextValue: 'Save Card',
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
                      return SinglePaymentCard(
                        cardContainerCard: Colors.amber,
                        cardContainerTwo: Colors.orange,
                        cardContainerThree: Colors.red,
                        ownerName: "Mrh Raju",
                        cardType: "Visa",
                        cardNumber: "Visa Classic",
                        amount: "\$3,763.87",
                        cardLevel: '',
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
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleInput(
                      formValidations: (value) {
                        if (value!.isEmpty || value == '') {
                          return 'This field is require';
                        } else if (value.length < 3) {
                          return 'Too short';
                        }
                        return null;
                      },
                      inputLable: "Card Owner",
                      hintText: "Mrh Raju",
                      textInputType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleInput(
                      formValidations: (value) {
                        if (value!.isEmpty) {
                          return "This field is required";
                        } else if (value.length < 24 || value.length > 24) {
                          return 'Card number should have 12 digits';
                        }
                        return null;
                      },
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
                      textField2Validation: (value) {
                        if (value!.isEmpty) {
                          return "This field is required";
                        } else if (value.length < 4) {
                          return 'Too short CVV';
                        } else if (value.length > 4) {
                          return 'Too long CVV';
                        }
                        return null;
                      },
                      textField1Validation: (value) {
                        if (value!.isEmpty) {
                          return "This field is required";
                        } else if (value.length < 5) {
                          return "Too long";
                        } else if (value.length > 5) {
                          return "Too short";
                        }
                        return null;
                      },
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
