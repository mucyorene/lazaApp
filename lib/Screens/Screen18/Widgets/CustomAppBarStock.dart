import 'package:flutter/material.dart';

class CustomAppBarStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      leadingWidth: 40,
      leading: const CircleAvatar(
          backgroundColor: Color(0xffF5F6FA),
          child: BackButton(
            color: Colors.black,
          )),
      title: Container(
        height: 45.0,
        decoration: BoxDecoration(
            color: const Color(0xffF5F6FA),
            borderRadius: BorderRadius.circular(10.0)),
        child: Image.asset(
          "assets/images/nikeBrand.png",
        ),
      ),
      actions: [
        Container(
          alignment: Alignment.centerRight,
          child: CircleAvatar(
              radius: 21,
              backgroundColor: const Color(0xffF5F6FA),
              child: Image.asset("assets/images/Bag.png")),
        )
      ],
    );
  }
}
