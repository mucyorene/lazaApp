import 'package:flutter/material.dart';

class DoubleRowInput extends StatefulWidget {
  String label1;
  String hintText1;
  String label2;
  String hintText2;

  DoubleRowInput(
      {Key? key,
      required this.label1,
      required this.hintText1,
      required this.label2,
      required this.hintText2})
      : super(key: key);

  @override
  State<DoubleRowInput> createState() => _DoubleRowInputState();
}

class _DoubleRowInputState extends State<DoubleRowInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.label1,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0XffF5F6FA),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold),
                      cursorColor: const Color(0XffF5F6FA),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: widget.hintText1,
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
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.label2,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0XffF5F6FA),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold),
                      cursorColor: const Color(0XffF5F6FA),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: widget.hintText2,
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
              )
            ),
          ],
        ),
      ],
    );
  }
}
