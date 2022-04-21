import 'package:flutter/material.dart';

class CustomAppBarSingle extends StatelessWidget {
  String title;
  CustomAppBarSingle(this.title,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: const CircleAvatar(
                  backgroundColor: Color(0xffF5F6FA),
                  child: BackButton(
                    color: Colors.black,
                  )),
            ),
          ),
          Expanded(
            child: Center(
                child: Text(
              title,
              style: const TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            )),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
