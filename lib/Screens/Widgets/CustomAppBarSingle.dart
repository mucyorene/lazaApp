import 'package:flutter/material.dart';

class CustomAppBarSingle extends StatelessWidget {
  const CustomAppBarSingle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: const CircleAvatar(
                backgroundColor: Color(0xffF5F6FA),
                child: BackButton(
                  color: Colors.black,
                )),
          ),
          const SizedBox(
            width: 115,
          ),
          const Center(
              child: Text(
            "Review",
            style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
          ))
        ],
      ),
    );
  }
}
