import 'package:flutter/material.dart';
import 'package:laza/common/expConta.dart';

class TotalPrice extends StatelessWidget {
  String price;
   TotalPrice({required this.price,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            Column(
              children: const [
                Text(
                  'Total Price',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(
                  'with VAT,SD',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 11),
                ),
              ],
            ),
            exconta(),
             Text(price,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
          ],
        ));
  }
}
