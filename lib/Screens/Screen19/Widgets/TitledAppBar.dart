import 'package:flutter/material.dart';

class AppBarTitled extends StatefulWidget {
  String appBarTitle;

  AppBarTitled({Key? key, required this.appBarTitle}) : super(key: key);
  @override
  State<AppBarTitled> createState() => _AppBarTitledState();
}

class _AppBarTitledState extends State<AppBarTitled> {
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
                child: Container(alignment: Alignment.center,
                  height: 45.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text(widget.appBarTitle, style: const TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
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