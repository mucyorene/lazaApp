// import 'package:flutter/material.dart';
// import 'package:laza/Screens/Screen10/Widgets/ReviewCard.dart';

// class SubmitedValues extends StatefulWidget {
//   String name;
//   String comment;
//   double rating;

//   SubmitedValues(
//       {required this.name,
//       required this.comment,
//       required this.rating,
//       Key? key})
//       : super(key: key);

//   @override
//   State<SubmitedValues> createState() => _SubmitedValuesState();
// }

// class _SubmitedValuesState extends State<SubmitedValues> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Captured values'),
//         ),
//         body: ReviewCard(
//             'assets/screen9_images/bigImg.png',
//             widget.name,
//             DateTime.now().toString(),
//             widget.rating.toStringAsFixed(2),
//             widget.comment));
//   }
// }
