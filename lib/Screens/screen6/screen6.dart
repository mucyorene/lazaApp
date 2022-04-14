import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class emailVerification extends StatefulWidget {
  const emailVerification({Key? key}) : super(key: key);

  @override
  State<emailVerification> createState() => _Screen3State();
}

class _Screen3State extends State<emailVerification> {
  bool _toggled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        elevation: 0,
        leading: Container(
          decoration: const BoxDecoration(
              color: Color(0xffF5F6FA),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: const BackButton(
            color: Color(0xff1D1E20),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0Xff9775FA),
        child: Container(
            height: 50,
            alignment: Alignment.center,
            child: RaisedButton(
                elevation: 0,
                onPressed: () {},
                color: const Color(0Xff9775FA),
                child: const Text(
                  'VERIFICATION ',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Stack(children: [
              Column(children: [
                Container(
                  // padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Verification Code',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Image.asset('assets/images/cloudLockImage.png'),
                Container(
                  padding: EdgeInsets.all(40),
                  child: Form(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54),
                              borderRadius: BorderRadius.circular(10)),
                          
                          child: SizedBox(
                            height: 60,
                            child: TextFormField(
                              cursorColor: Colors.grey,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(fontSize: 30),
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                              onChanged: (value) {},
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54),
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.all(3),
                          child: SizedBox(
                            height: 60,
                            child: TextFormField(
                              cursorColor: Colors.grey,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(fontSize: 30),
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                              onChanged: (value) {},
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54),
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.all(3),
                          child: SizedBox(
                            height: 60,
                            child: TextFormField(
                              cursorColor: Colors.grey,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(fontSize: 30),
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                              onChanged: (value) {},
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54),
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.all(3),
                          child: SizedBox(
                            height: 60,
                            child: TextFormField(
                              cursorColor: Colors.grey,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(fontSize: 30),
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                              onChanged: (value) {},
                            ),
                          ),
                        ),
                      ),
                      // Flexible(
                      //   child: Container(
                      //     padding: EdgeInsets.all(3),
                      //     child: SizedBox(

                      //       width: 40,
                      //       child: TextFormField(

                      //         cursorColor: Color(0Xff6B48D0),
                      //         keyboardType: TextInputType.number,
                      //         style: const TextStyle(fontSize: 25),
                      //         decoration: InputDecoration(
                      //             contentPadding: const EdgeInsets.symmetric(horizontal: 5,),
                      //             enabledBorder: OutlineInputBorder(
                      //                 borderRadius: BorderRadius.circular(10),
                      //                 borderSide:
                      //                     const BorderSide(color: Colors.black45)
                      //                     ),
                      //             focusedBorder: OutlineInputBorder(
                      //               borderRadius: BorderRadius.circular(10),
                      //                 borderSide:
                      //                     const BorderSide(color: Colors.black45),
                      //             ),
                      //                     ),
                      //         onChanged: (value){},
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // Flexible(
                      //   child: Container(
                      //     padding: EdgeInsets.all(3),
                      //     child: SizedBox(

                      //       width: 40,
                      //       child: TextFormField(

                      //         cursorColor: Color(0Xff6B48D0),
                      //         keyboardType: TextInputType.number,
                      //         style: const TextStyle(fontSize: 25),
                      //         decoration: InputDecoration(
                      //             contentPadding: const EdgeInsets.symmetric(horizontal: 5,),
                      //             enabledBorder: OutlineInputBorder(
                      //                 borderRadius: BorderRadius.circular(10),
                      //                 borderSide:
                      //                     const BorderSide(color: Colors.black45)
                      //                     ),
                      //             focusedBorder: OutlineInputBorder(
                      //               borderRadius: BorderRadius.circular(10),
                      //                 borderSide:
                      //                     const BorderSide(color: Colors.black45),
                      //             ),
                      //                     ),
                      //         onChanged: (value){},
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  )),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text.rich(
                      TextSpan(style: const TextStyle(fontSize: 14), children: [
                    TextSpan(
                      text: '00 : 20 ',
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                        text: "Resend Confirmation Code ",
                        style: TextStyle(fontWeight: FontWeight.w300)),
                  ])),
                ),
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}
