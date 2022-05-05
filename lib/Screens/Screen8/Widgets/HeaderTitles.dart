import 'package:flutter/material.dart';

class TopHeader extends StatefulWidget {
  String bigTitle;
  String subTitle;

  TopHeader(
    this.bigTitle,
    this.subTitle, {
    Key? key,
  }) : super(key: key);

  @override
  State<TopHeader> createState() => _TopHeaderState();
}

class _TopHeaderState extends State<TopHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.bigTitle,
              style:
                  const TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            Text(
              widget.subTitle,
              style: const TextStyle(fontSize: 15.0, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
