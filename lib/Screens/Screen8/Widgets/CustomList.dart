import 'package:flutter/material.dart';

class CategoriesTitle extends StatefulWidget {
  String title;

  CategoriesTitle({Key? key, required this.title}) : super(key: key);

  @override
  State<CategoriesTitle> createState() => _CategoriesTitleState();
}

class _CategoriesTitleState extends State<CategoriesTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: Text(
                widget.title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
          ),
          const SizedBox(
            width: 110,
          ),
          const Expanded(
              child: Text(
            "View all",
            style: TextStyle(),
          ))
        ],
      ),
    );
  }
}
