import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Screen10/ReviewScreen.dart';

class ReviewTitle extends StatelessWidget {
  const ReviewTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            const Text(
              'Reviews',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Expanded(child: Container()),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => const ReviewScreen()));
              },
              child: const Text(
                'View All',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
              ),
            ),
          ],
        ));
  }
}
