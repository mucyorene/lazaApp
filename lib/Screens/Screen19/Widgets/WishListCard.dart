import 'package:flutter/material.dart';
import 'package:laza/Model/providers/ShoppingCartProvider.dart';
import 'package:provider/provider.dart';

class WishCard extends StatefulWidget {
  String name;
  double price;
  String? descriptions;
  String size;
  String brand;
  String thumbnails;

  WishCard(
      {required this.name,
      required this.price,
      this.descriptions,
      required this.size,
      required this.brand,
      required this.thumbnails,
      Key? key})
      : super(key: key);

  @override
  State<WishCard> createState() => _WishCardState();
}

class _WishCardState extends State<WishCard> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    ShoppingCart shoppingCartProvider = Provider.of<ShoppingCart>(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      height: 120,
      width: double.infinity,
      child: Row(
        children: [
          Container(
              margin: const EdgeInsets.all(2),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
                margin: const EdgeInsets.all(2),
                child: Image.asset(
                  widget.thumbnails,
                  width: 100,
                ),
              )),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: Text(
                          widget.name,
                          style: const TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text(
                        "Subtitle area",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      // child: const Text('\${widget.} (-\$4.00 Tax)',
                      //     style: TextStyle(
                      //         fontWeight: FontWeight.w300, fontSize: 11)),
                      child: Text("\$${widget.price} (-\$4.0 Tax)",
                          style: const TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 11)),
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
