import 'package:flutter/material.dart';

class DescriptionDetails extends StatefulWidget {
  const DescriptionDetails({Key? key}) : super(key: key);

  @override
  State<DescriptionDetails> createState() => _DescriptionDetailsState();
}

class _DescriptionDetailsState extends State<DescriptionDetails> {
  @override
  Widget build(BuildContext context) {
    return const Text.rich(TextSpan(style: TextStyle(fontSize: 15), children: [
      TextSpan(
        text:
            'The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with ',
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
      ),
      TextSpan(
        text: 'Read More ...',
        style: TextStyle(fontWeight: FontWeight.bold),
      )
    ]));
  }
}
