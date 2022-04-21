import 'package:flutter/material.dart';

class CustomAppBarNull extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SizedBox(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xffF5F6FA),
                    child: BackButton(
                      color: Colors.black,
                    )),
              ),
            ),
            Expanded(
              child: Container()
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
