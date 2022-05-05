import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatefulWidget {
  final Function() validationCallBack;
  final String buttonTextValue;
  final int buttonBackgroundColor;

  const BottomAppBarWidget(
      {required this.validationCallBack,
      Key? key,
      required this.buttonTextValue,
      required this.buttonBackgroundColor})
      : super(key: key);

  @override
  State<BottomAppBarWidget> createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color(widget.buttonBackgroundColor),
      child: Container(
          height: 75,
          alignment: Alignment.center,
          child: TextButton(
              onPressed: widget.validationCallBack,
              // onPressed: () {
              //   _formKey.currentState!.validate();
              //   if (_formKey.currentState!.validate()) {
              //     Navigator.push(
              //         context,
              //         CupertinoPageRoute(
              //             builder: (context) => const HomeScreen()));
              //   }
              // },
              // Color(0Xff9775FA)
              child: Text(
                widget.buttonTextValue,
                style: const TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ))),
    );
  }
}
