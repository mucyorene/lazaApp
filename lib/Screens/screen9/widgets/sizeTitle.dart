import 'package:flutter/material.dart';

class SizeTitle extends StatelessWidget {
  const SizeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Size",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
        Expanded(child: Container()),
        const Text('Size Guide',
            style: TextStyle(fontWeight: FontWeight.w200, fontSize: 15)),
      ],
    );
  }
}
