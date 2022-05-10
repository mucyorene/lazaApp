import 'package:flutter/cupertino.dart';

class DescriptionTitle extends StatefulWidget {
  const DescriptionTitle({Key? key}) : super(key: key);

  @override
  State<DescriptionTitle> createState() => _DescriptionTitleState();
}

class _DescriptionTitleState extends State<DescriptionTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.centerLeft,
        child: const Text(
          'Description',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ));
  }
}
