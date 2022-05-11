import 'package:flutter/material.dart';


class Description extends StatelessWidget {
 String description;
   Description({required this.description , Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return  Text.rich(
        TextSpan(style:  const TextStyle(fontSize: 15), children: [
      TextSpan(
        text: description,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
      ),
      const TextSpan(
        text: 'Read More ...',
        style: TextStyle(fontWeight: FontWeight.bold),
      )
    ]));
  }
}
