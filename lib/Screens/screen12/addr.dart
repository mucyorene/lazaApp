import 'package:flutter/material.dart';
import 'package:laza/common/expConta.dart';

class AddressBox extends StatelessWidget {
  String actionTitle;
  String relatedImage;
  String description;
  String subDescription;
  String navigateButton;
  void Function()? goTo;

  AddressBox(
      {required this.actionTitle,
      required this.relatedImage,
      required this.description,
      required this.subDescription,
      required this.navigateButton,
      required this.goTo,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Text(
                actionTitle,
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              exconta(),
              const Icon(
                Icons.arrow_forward_ios,
                size: 15,
              )
            ],
          ),
        ),
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: const Color(0XffF5F6FA),
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                relatedImage,
                fit: BoxFit.contain,
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      description,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 4),
                      child: Row(
                        children: [
                          Text(subDescription,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 13)),
                          Expanded(
                              child: Container(
                            alignment: Alignment.center,
                            child: TextButton(
                                child: Text(navigateButton), onPressed: goTo),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // exconta(),
            const Icon(
              Icons.check_circle,
              size: 25,
              color: Color(0Xff34C759),
            )
          ],
        ),
      ],
    );
  }
}

addressBox(String title, String img, String bodi, String fut, String link) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            exconta(),
            const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            )
          ],
        ),
      ),
      Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: const Color(0XffF5F6FA),
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              img,
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bodi,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 4),
                    child: Row(
                      children: [
                        Text(fut,
                            style: const TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 13)),
                        Expanded(
                            child: Container(
                          alignment: Alignment.center,
                          child: TextButton(
                            child: Text(link),
                            onPressed: () {},
                          ),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // exconta(),
          const Icon(
            Icons.check_circle,
            size: 25,
            color: Color(0Xff34C759),
          )
        ],
      ),
    ],
  );
}
