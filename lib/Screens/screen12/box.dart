import 'package:flutter/material.dart';
import 'package:laza/Model/Others/CartModel.dart';

cadBox(dynamic img, dynamic bgcolor, dynamic cardcolor) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    decoration:
        BoxDecoration(color: bgcolor, borderRadius: BorderRadius.circular(20)),
    height: 120,
    width: double.infinity,
    child: Row(
      children: [
        Container(
            margin: const EdgeInsets.all(2),
            child: Container(
              decoration: BoxDecoration(
                  color: cardcolor, borderRadius: BorderRadius.circular(15)),
              margin: const EdgeInsets.all(2),
              child: Image.asset(img),
            )),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: const Text(
                    'Men\'s Tie-Dye T-Shirt',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 5),
                child: const Text(
                  'Nike Sportswear',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text('\$45 (-\$4.00 Tax)',
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 11)),
              ),
              Flexible(
                child: Row(
                  children: [
                    const Icon(Icons.arrow_circle_down),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Text('1')),
                    const Icon(Icons.arrow_circle_up),
                    Expanded(child: Container()),
                    IconButton(
                        onPressed: () {
                          // print("Clicked");
                          List<Cart> cartLists = Cart.generatedCart();
                          cartLists.clear();
                        },
                        icon: const Icon(Icons.delete_rounded))
                  ],
                ),
              )
            ]),
          ),
        )
      ],
    ),
  );
}
