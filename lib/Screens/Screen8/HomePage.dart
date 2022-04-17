import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen8/Widgets/CustomList.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categories = [
    'Category 1',
    'Category 2',
    'Category 3',
    'Category 4',
    'Category 5',
    'Category 6',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
            margin: const EdgeInsets.only(left: 20),
            child: const Icon(
              Icons.menu_outlined,
              color: Colors.grey,
            )),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: const Icon(
              Icons.shopping_bag,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello",
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Welcome to Laza.",
                style: TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
              const SizedBox(
                height: 15,
              ),
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
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Icon(
                      Icons.mic_none_sharp,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CategoriesTitle(title: "Choose Brand"),
              SizedBox(
                height: 80,
                child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(

                        child: GestureDetector(
                          onTap: () {},
                          child: Card(
                            color: const Color(0xffF5F6FA),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,
                                      padding: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          image: const DecorationImage(
                                            image: AssetImage(
                                              "assets/images/adidas.JPG",
                                            ),
                                            fit: BoxFit.fitHeight,
                                          )),
                                    ),
                                  ],
                                ),
                                Container(
                                  child: Text(
                                    categories[index],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold, height: 1.5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (_, index) => const SizedBox(
                          height: 5,
                        ),
                    itemCount: categories.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
