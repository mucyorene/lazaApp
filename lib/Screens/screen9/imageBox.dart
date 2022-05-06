// import 'package:flutter/cupertino.dart';

// class ImageBox {
//   final dynamic path;
//   ImageBox({required this.path});

//  @override
// Widget build(BuildContext context) {
//   return Expanded(
//                                         child: Container(
//                                       margin: const EdgeInsets.all(2),
//                                       child: Image.asset(path)) );
// }
// }

import 'package:flutter/material.dart';

class ImageBox extends StatefulWidget {
  @override
  State<ImageBox> createState() => _ImageBoxState();
}

class _ImageBoxState extends State<ImageBox> {
  final List<String> ImageBox = [
    'assets/screen9_images/rect1.png',
    'assets/screen9_images/rect2.png',
    'assets/screen9_images/rect3.png',
    'assets/screen9_images/rect4.png'
  ];
  int currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 77,
      // padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  // print("Seleted $index");
                  setState(() {
                    currentSelected = index;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: currentSelected == index
                          ? const Color(0Xff9775FA)
                          : const Color(0XffF2F2F2),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.1), width: 2)),
                  child: Image.asset(
                    ImageBox[index],
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                width: 15,
              ),
          itemCount: ImageBox.length),
    );
  }
}
