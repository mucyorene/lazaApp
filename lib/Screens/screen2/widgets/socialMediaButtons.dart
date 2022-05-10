import 'package:flutter/material.dart';

class SocialMediaButtons extends StatelessWidget {
  final Color buttonColor;
  final IconData? mediaIcon;
  final String media;

  const SocialMediaButtons({required this.buttonColor,required this.mediaIcon,required this.media
  ,Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: buttonColor,
      ),
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      width: double.infinity,
      child: RaisedButton.icon(
        onPressed: () {},
        icon:  Icon(
          mediaIcon,
          color: Colors.white,
        ),
        label:  Text(
          media,
          style: TextStyle(fontSize: 17),
        ),
        textColor: Colors.white,
        color: buttonColor,
        elevation: 0,
      ),
    );
  }
}
