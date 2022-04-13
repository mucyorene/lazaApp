import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

field(controller, String hint, String label, suffix, ) {
  return Container(
    padding: EdgeInsets.only(left: 15, right: 15),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(hintText: hint,suffix:suffix ),
      
    ),
  );
}
