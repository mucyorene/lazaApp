import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  String imagePath;
   CustomAppBar({required this.imagePath,Key? key}) : super(key: key);

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
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(top: 15),
              child: Stack(alignment: Alignment.center, children: [
                Positioned(
                  bottom: 0,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    height: 380,
                  ),
                ),
              ])),
        ));
  }
}
