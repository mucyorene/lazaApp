import 'package:flutter/material.dart';

class CustomAppBarStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SizedBox(
        height: 180,
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
                child: Container(
              height: 45.0,
              decoration: BoxDecoration(
                  color: const Color(0xffF5F6FA),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Image.asset(
                "assets/images/nikeBrand.png",
              ),
            )),
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                child: CircleAvatar(
                    radius: 25,
                    backgroundColor: const Color(0xffF5F6FA),
                    child: Image.asset("assets/images/Bag.png")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
