import 'package:flutter/material.dart';
class BottomNavigationChildScreens extends StatefulWidget {
  String buttonTitle;
  BottomNavigationChildScreens({Key? key, required this.buttonTitle}) : super(key: key);

  @override
  State<BottomNavigationChildScreens> createState() => _BottomNavigationChildScreensState();
}

class _BottomNavigationChildScreensState extends State<BottomNavigationChildScreens> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color(0Xff9775FA),
      child: Container(
          height: 75,
          alignment: Alignment.center,
          child: TextButton(
              onPressed: () {},
              // Color(0Xff9775FA)
              child:Text(
                widget.buttonTitle,
                style: const TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ))),
    );
  }
}
