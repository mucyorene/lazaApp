import 'package:flutter/material.dart';

class HoddieTitle extends StatelessWidget {
  const HoddieTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            const Text('Men\'s printed Pullover Hoddie',
                style: TextStyle(fontWeight: FontWeight.w200, fontSize: 13)),
            Container(
              padding: const EdgeInsets.only(top: 8),
              child: const Text(
                'Nike Club Fleece',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
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
              child: const Text("\$120",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
            )
          ],
        )
      ],
    );
  }
}
