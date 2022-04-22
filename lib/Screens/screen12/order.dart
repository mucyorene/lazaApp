import 'package:flutter/material.dart';
import 'package:laza/common/expConta.dart';

order(String des, String price) {
  return Row(
    children: [
      Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: Text(
          des,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        ),
      ),
      exconta(),
      Text(
        price,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      )
    ],
  );
}
