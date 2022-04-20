import 'package:flutter/material.dart';
class SingleCardScreen15 extends StatefulWidget {
  String cardImange;
  String colors;
  SingleCardScreen15({Key? key, required this.cardImange, required this.colors}) : super(key: key);

  @override
  State<SingleCardScreen15> createState() => _SingleCardScreen15State();
}

class _SingleCardScreen15State extends State<SingleCardScreen15> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Color(int.parse(widget.colors)),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(child: Image.asset(widget.cardImange,),)
      ),
    );
  }
}
