import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/screen4/screen4.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  bool _toggled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0Xff9775FA),
        child: Container(
            height: 50,
            alignment: Alignment.center,
            child: RaisedButton(
                elevation: 0,
                onPressed: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context)=>const WelcomePage()));
                },
                color: const Color(0Xff9775FA),
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))),
      ),
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Column(
            children: [
              Container(
                height: 200,
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                      height: 3.0,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1D1E20),
                      letterSpacing: 0.7),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Column(children: [
                  TextFormField(
                    style: const TextStyle(
                        color: Color(0xff1D1E20),
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                    decoration: const InputDecoration(
                        labelText: "Username",
                        suffixIcon: Icon(
                          Icons.check,
                          color: Color(0xff34C358),
                        ),
                        labelStyle:
                        TextStyle(color: Colors.grey, fontSize: 13.0)),
                    validator: (value){
                      if(value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                        return "Enter correct user username";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    style: const TextStyle(fontSize: 15),
                    decoration: const InputDecoration(
                        labelText: "Password",
                        suffixText: 'Strong',
                        suffixStyle: TextStyle(color: Colors.green),
                        labelStyle:
                        TextStyle(color: Colors.grey, fontSize: 13.0)),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: "Email Address",
                        suffixIcon: Icon(
                          Icons.check,
                          color: Color(0xff34C358),
                        ),
                        labelStyle:
                        TextStyle(color: Colors.grey, fontSize: 13.0)),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: const Text(
                            "Remember me",
                          ),
                        ),
                      ),
                      Expanded(
                          child: SwitchListTile(
                            activeColor: Colors.green,
                            onChanged: (bool value) {
                              setState(() {
                                _toggled = value;
                              });
                            },
                            value: _toggled,
                          )),
                    ],
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
