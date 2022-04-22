import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InformationHeader extends StatefulWidget {
  int numberOfItems;
  String itemLocation;
  Icon iconSort;
  String iconName;

  InformationHeader(
      {Key? key,
      required this.numberOfItems,
      required this.itemLocation,
      required this.iconSort,
      required this.iconName})
      : super(key: key);

  @override
  State<InformationHeader> createState() => _InformationHeaderState();
}

class _InformationHeaderState extends State<InformationHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SizedBox(
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${widget.numberOfItems} Items",
                          style: const TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          widget.itemLocation,
                          style: const TextStyle(
                              color: Color(0xff8F959E), fontSize: 15.0),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.centerRight,
                child: Container(
                  decoration: BoxDecoration(
                      // color: Colors.red,
                      color: const Color(0xffF5F6FA),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: widget.iconSort,
                      label: Text(
                        widget.iconName,
                        style: const TextStyle(
                            fontSize: 15.0, color: Colors.black),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
