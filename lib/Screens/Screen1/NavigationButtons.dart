import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/Widgets/NavigationScreens.dart';

class NavigationButtons extends StatefulWidget {
  VoidCallback navigationCallBack;
  double height;
  int backgroundColor;
  int textColor;
  String buttonString;

  NavigationButtons(
      {required this.navigationCallBack,
      required this.height,
      required this.buttonString,
      required this.backgroundColor,
      required this.textColor,
      Key? key})
      : super(key: key);

  @override
  State<NavigationButtons> createState() => _NavigationButtonsState();
}

class _NavigationButtonsState extends State<NavigationButtons> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: widget.height,
        child: ElevatedButton(
            onPressed: widget.navigationCallBack,
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide.none)),
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color(widget.backgroundColor)),
            ),
            child: Text(
              widget.buttonString,
              style: TextStyle(color: Color(widget.textColor), fontSize: 17),
            )),
      ),
    );
  }
}
