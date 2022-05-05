import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen18/StockScreen.dart';

class HomeBrandCard extends StatefulWidget {
  VoidCallback navigateToBrandIcon;
  String brandIcon;
  String category;

  HomeBrandCard(
      {Key? key,
      required this.brandIcon,
      required this.category,
      required this.navigateToBrandIcon})
      : super(key: key);

  @override
  State<HomeBrandCard> createState() => _HomeBrandCardState();
}

class _HomeBrandCardState extends State<HomeBrandCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.navigateToBrandIcon,
      child: Card(
        color: const Color(0xffF5F6FA),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 80,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                      image: AssetImage(
                        widget.brandIcon,
                      ),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: 60,
              width: 80,
              child: Center(
                child: Text(
                  widget.category,
                  style:
                      const TextStyle(fontWeight: FontWeight.bold, height: 1.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
