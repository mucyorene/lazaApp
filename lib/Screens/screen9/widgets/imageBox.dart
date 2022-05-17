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
import 'package:laza/Screens/screen9/Model/clothesModel.dart';

typedef OnImageClick = Function(int index);

class ImageBox extends StatefulWidget {
  List<String> images;
  OnImageClick onImageClick;

  ImageBox({Key? key, required this.images, required this.onImageClick})
      : super(key: key);

  @override
  State<ImageBox> createState() => _ImageBoxState();
}

class _ImageBoxState extends State<ImageBox> {
  int currentSelected = 0;

  // String silverImage() {
  //   return clothes.image[currentSelected];
  // }

  List<Clothes> listImages = Clothes.generateClothes();

  // Clothes productItem= listImages[index];
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
                  setState(() {
                    currentSelected = index;
                  });
                  widget.onImageClick(index);
                  print(listImages.toList());
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
                    widget.images[index],
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                width: 5,
              ),
          itemCount: widget.images.length),
    );
  }

  index() {
    return currentSelected;
  }
}
