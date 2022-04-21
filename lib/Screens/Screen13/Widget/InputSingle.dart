import 'package:flutter/material.dart';

class SingleInput extends StatefulWidget {
  String inputLable;
  String hintText;

  SingleInput({required this.inputLable, required this.hintText, Key? key})
      : super(key: key);

  @override
  State<SingleInput> createState() => _SingleInputState();
}

class _SingleInputState extends State<SingleInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.inputLable,
          style: const TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0XffF5F6FA),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: TextFormField(
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            cursorColor: const Color(0XffF5F6FA),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.hintText,
              hintStyle: const TextStyle(
                color: Colors.grey, // <-- Change this
                fontSize: null,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
