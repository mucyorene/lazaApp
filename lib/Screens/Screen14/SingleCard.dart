import 'package:flutter/material.dart';

class SinglePaymentCard extends StatefulWidget {
  Color cardContainerCard;
  Color cardContainerTwo;
  Color cardContainerThree;
  final String ownerName;
  final String cardType;
  final String cardLevel;
  final String cardNumber;
  final String amount;

  SinglePaymentCard(
      {Key? key,
      required this.cardContainerCard,
      required this.cardContainerTwo,
      required this.cardContainerThree,
      required this.ownerName,
      required this.cardType,
      required this.cardLevel,
      required this.cardNumber,
      required this.amount})
      : super(key: key);

  @override
  State<SinglePaymentCard> createState() => _SinglePaymentCardState();
}

class _SinglePaymentCardState extends State<SinglePaymentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 300,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: widget.cardContainerCard,
          borderRadius: BorderRadiusDirectional.circular(15.0)),
      child: Stack(
        children: [
          Positioned(
            bottom: -80,
            left: -50,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: widget.cardContainerTwo, shape: BoxShape.circle),
            ),
          ),
          Positioned(
            bottom: -170,
            right: -150,
            child: Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                  color: widget.cardContainerThree, shape: BoxShape.circle),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      child: Text(
                        widget.ownerName,
                        style: const TextStyle(
                            fontSize: 15.0, color: Color(0xffFFFFFF)),
                      )),
                  const SizedBox(
                    width: 140,
                  ),
                  Container(
                    child: Container(
                      child: Text(
                        widget.cardType,
                        style: const TextStyle(
                            fontSize: 15.0, color: Color(0xffFFFFFF)),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Text(
                      widget.cardLevel,
                      style: const TextStyle(
                          fontSize: 13.0, color: Color(0xffFFFFFF)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Text(
                      widget.cardNumber,
                      style: const TextStyle(
                          fontSize: 15.0,
                          color: Color(0xffFFFFFF),
                          letterSpacing: 2.0),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Text(
                      widget.amount,
                      style: const TextStyle(
                          fontSize: 15.0, color: Color(0xffFFFFFF)),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
