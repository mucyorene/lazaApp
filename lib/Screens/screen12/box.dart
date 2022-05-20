import 'package:flutter/material.dart';
import 'package:laza/Model/providers/ShoppingCartProvider.dart';
import 'package:laza/common/expConta.dart';
import 'package:provider/provider.dart';

import '../../Model/Others/CartModel.dart';

class Cartbox extends StatefulWidget {
  final String image;
  final Color bgColor;
  final Color cardColor;
  final String title;
  final String subTitle;
  final int productIndex;
  final double productPrice;

  const Cartbox({required this.image,
    required this.bgColor,
    required this.cardColor,
    required this.title,
    required this.subTitle,
    Key? key,
    required this.productIndex,
    required this.productPrice})
      : super(key: key);

  @override
  State<Cartbox> createState() => _CartboxState();
}

class _CartboxState extends State<Cartbox> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    ShoppingCart deleteItem = Provider.of<ShoppingCart>(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: widget.bgColor, borderRadius: BorderRadius.circular(20)),
      height: 120,
      width: double.infinity,
      child: Row(
        children: [
          Container(
              margin: const EdgeInsets.all(2),
              child: Container(
                decoration: BoxDecoration(
                    color: widget.cardColor,
                    borderRadius: BorderRadius.circular(15)),
                margin: const EdgeInsets.all(2),
                child: Image.asset(
                  widget.image,
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
                          widget.title,
                          style: const TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(top: 5),
                      child: Text(
                        widget.subTitle,
                        style: const TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      // child: const Text('\${widget.} (-\$4.00 Tax)',
                      //     style: TextStyle(
                      //         fontWeight: FontWeight.w300, fontSize: 11)),
                      child: Text("\$${widget.productPrice}",
                          style: const TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 11)),
                    ),
                    Flexible(
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                // print("Clicked");
                                setState(() {
                                  quantity =
                                  (quantity > 1) ? quantity - 1 : quantity;
                                });
                              },
                              icon: const Icon(Icons.arrow_circle_down)),
                          Container(
                              margin:
                              const EdgeInsets.symmetric(horizontal: 10),
                              child: Text('$quantity')),
                          // const Icon(Icons.arrow_circle_up),
                          IconButton(
                              onPressed: () {
                                // print("Clicked");
                                setState(() {
                                  quantity = quantity + 1;
                                });
                              },
                              icon: const Icon(Icons.arrow_circle_up)),
                          exconta(),
                          Flexible(
                            child: IconButton(
                                onPressed: () {
                                  deleteItem.deleteItem(widget.productIndex);
                                },
                                icon: const Icon(
                                  Icons.delete_rounded,
                                  size: 20,
                                )),
                          )
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
}
// cadBox(dynamic img, dynamic bgcolor, dynamic cardcolor) {
//   return Container(
//     margin: const EdgeInsets.symmetric(vertical: 10),
//     decoration:
//         BoxDecoration(color: bgcolor, borderRadius: BorderRadius.circular(20)),
//     height: 120,
//     width: double.infinity,
//     child: Row(
//       children: [
//         Container(
//             margin: const EdgeInsets.all(2),
//             child: Container(
//               decoration: BoxDecoration(
//                   color: cardcolor, borderRadius: BorderRadius.circular(15)),
//               margin: const EdgeInsets.all(2),
//               child: Image.asset(img),
//             )),
//         Expanded(
//           child: Container(
//             margin: const EdgeInsets.symmetric(horizontal: 10),
//             child:
//                 Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//               Container(
//                 margin: const EdgeInsets.only(top: 10),
//                 child: Container(
//                   margin: const EdgeInsets.only(top: 5),
//                   child: const Text(
//                     'Men\'s Tie-Dye T-Shirt',
//                     style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//               Container(
//                 alignment: Alignment.centerLeft,
//                 margin: const EdgeInsets.only(top: 5),
//                 child: const Text(
//                   'Nike Sportswear',
//                   style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.symmetric(vertical: 10),
//                 child: const Text('\$45 (-\$4.00 Tax)',
//                     style:
//                         TextStyle(fontWeight: FontWeight.w300, fontSize: 11)),
//               ),
//               Flexible(
//                 child: Row(
//                   children: [
//                     const Icon(Icons.arrow_circle_down),
//                     Container(
//                         margin: const EdgeInsets.symmetric(horizontal: 10),
//                         child: const Text('1')),
//                     const Icon(Icons.arrow_circle_up),
//                     Expanded(child: Container()),
//                     IconButton(
//                         onPressed: () {
//                           // print("Clicked");
//                           List<Cart> cartLists = Cart.generatedCart();
//                           cartLists.clear();
//                         },
//                         icon: const Icon(Icons.delete_rounded))
//                   ],
//                 ),
//               )
//             ]),
//           ),
//         )
//       ],
//     ),
//   );
// }
