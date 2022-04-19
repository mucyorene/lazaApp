import 'package:flutter/material.dart';

class CustomizedAppBar extends StatelessWidget {
  const CustomizedAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                  backgroundColor: const Color(0xffF5F6FA),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.black,
                      ))),
            ),
          ),
          Expanded(
              child: Container(
            alignment: Alignment.centerRight,
            child: CircleAvatar(
              backgroundColor: const Color(0xffF5F6FA),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag,
                  color: Colors.black,
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
