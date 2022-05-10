import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        elevation: 0,
        pinned: true,
        foregroundColor: Colors.black,
        backgroundColor: const Color(0XffF2F2F2),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_bag,
                color: Colors.black,
              ))
        ],
        expandedHeight: 400,
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
              color: const Color(0XffF2F2F2),
              height: 387,
              width: double.infinity,
              // alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 15),
              child: Stack(alignment: Alignment.center, children: [
                Positioned(
                  top: 40,
                  child: Image.asset(
                    'assets/screen9_images/bigImg.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ])),
        ));
  }
}
