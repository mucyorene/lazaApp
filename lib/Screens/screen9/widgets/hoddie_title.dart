import 'package:flutter/material.dart';

class HoddieTitle extends StatelessWidget {
  String name;
  String description;
  String price;

   HoddieTitle({required this.name,required this.description,required this.price,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(description,
                style:
                    const TextStyle(fontWeight: FontWeight.w200, fontSize: 13)),
            Container(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            )
          ],
        ),
        Expanded(child: Container()),
        Column(
          children: [
            const Text('price',
                style: TextStyle(fontWeight: FontWeight.w200, fontSize: 13)),
            Container(
              padding: const EdgeInsets.only(top: 8),
              child: Text(price,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 22)),
            )
          ],
        )
      ],
    );
  }
}
