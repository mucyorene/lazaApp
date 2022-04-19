import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

bottomNav(String txt, dynamic goTo, contxt) {
  return BottomAppBar(
    color: const Color(0Xff9775FA),
    child: Container(
        height: 50,
        alignment: Alignment.center,
        child: RaisedButton(
            elevation: 0,
            onPressed: () {Navigator.push(
    contxt,
    MaterialPageRoute(builder: (context) =>  goTo()),
  );},
            color: const Color(0Xff9775FA),
            child:  Text(
              txt,
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ))),
  );
}
