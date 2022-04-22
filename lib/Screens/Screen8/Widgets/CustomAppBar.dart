import 'package:flutter/material.dart';

class CustomizedAppBar extends StatelessWidget {
  const CustomizedAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                radius: 25,
                  backgroundColor: const Color(0xffF5F6FA),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/images/menuIcon.png"))),
            ),
          ),
          Expanded(
              child: Container(
            alignment: Alignment.centerRight,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: const Color(0xffF5F6FA),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/Bag.png"),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
