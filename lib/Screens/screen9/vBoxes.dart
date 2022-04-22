import 'package:flutter/material.dart';

dynamic vBox(String txt) {
  return Expanded(
    child: Container(
      alignment: Alignment.center,
      height: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal:5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0XffF2F2F2),
      ),
      child: Text(
        txt,
        style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
