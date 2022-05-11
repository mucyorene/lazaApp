import 'package:flutter/material.dart';

  sizeTitle() {
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

