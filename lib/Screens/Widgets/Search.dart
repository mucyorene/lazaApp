import 'package:flutter/material.dart';
class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    prefixIconColor: Colors.grey,
                    filled: true,
                    hintText: 'Search...',
                    hintStyle: TextStyle(fontSize: 15.0),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0))),
                  ),
                )),
            const SizedBox(
              width: 10,
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: const BoxDecoration(
                  color: Color(0xff9775FA),
                  borderRadius:
                  BorderRadius.all(Radius.circular(10))),
              child: const Icon(
                Icons.mic_none_sharp,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
