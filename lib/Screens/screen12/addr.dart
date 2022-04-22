import 'package:flutter/material.dart';
import 'package:laza/common/expConta.dart';

addressBox(String title, String img, String bodi, String fut) {
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
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(fut,
                        style: const TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 13)),
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
