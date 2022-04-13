import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
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
      body: Container(
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
              child: Column(
                  children: [

                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Username",
                          suffixIcon: Icon(
                            Icons.check, color: Color(0xff34C358),),
                          labelStyle: TextStyle(
                              color: Colors.grey, fontSize: 13.0)
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Password",
                          suffixText:'Strong',
                          suffixStyle: TextStyle(color: Colors.grey),
                          labelStyle: TextStyle(
                              color: Colors.grey, fontSize: 13.0)
                      ),
                    ),
                    TextFormField(
                      initialValue:"Esthertiti@email.ab",
                      decoration: const InputDecoration(
                          labelText: "Email Address",
                          suffixIcon: Icon(
                            Icons.check, color: Color(0xff34C358),),
                          labelStyle: TextStyle(
                              color: Colors.grey, fontSize: 13.0)
                      ),
                    ),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
