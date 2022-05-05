import 'package:flutter/material.dart';

// dynamic vBox(String txt) {
//   return Expanded(
//     child: Container(
//       alignment: Alignment.center,
//       height: double.infinity,
//       margin: const EdgeInsets.symmetric(horizontal: 5),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: const Color(0XffF2F2F2),
//       ),
//       child: Text(
//         txt,
//         style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
//       ),
//     ),
//   );
// }

class SizedList extends StatefulWidget {
  @override
  State<SizedList> createState() => _SizedListState();
}

class _SizedListState extends State<SizedList> {
  final List<String> sizedList = ['S', 'M', 'L', 'XL', '2XL'];
  int currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
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
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                  decoration: BoxDecoration(
                      color: currentSelected == index
                          ? const Color(0Xff9775FA)
                          : const Color(0XffF2F2F2),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.1), width: 2)),
                  child: Text(
                    sizedList[index],
                    style: TextStyle(
                        fontSize: 17,
                        color: currentSelected == index
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                width: 5,
              ),
          itemCount: sizedList.length),
    );
  }
}
