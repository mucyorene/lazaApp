import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen18/StockScreen.dart';
import 'package:laza/Screens/Screen8/Widgets/CustomList.dart';
import 'package:laza/Screens/Widgets/Search.dart';
import 'package:laza/Screens/screen17/navigation_drawer.dart';
import 'Widgets/ProductCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _key = GlobalKey(debugLabel: "Scaffold drawer key");

  List<String> categories = [
    'Adidas',
    'Nike',
    'Puma',
    'Fila',
    'Category 5',
    'Category 6',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (ctx) {
          return CircleAvatar(
              backgroundColor: const Color(0xffF5F6FA),
              child: IconButton(
                  onPressed: () {
                    Scaffold.of(ctx).openDrawer();
                  },
                  icon: Image.asset("assets/images/menuIcon.png")));
        }),
        actions: [
          CircleAvatar(
            radius: 30,
            backgroundColor: const Color(0xffF5F6FA),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/Bag.png",
                height: 20,
              ),
            ),
          ),
        ],
      ),
      drawer: const NavigationDrawer(),
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Hello",
                            style: TextStyle(
                                fontSize: 28.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Welcome to Laza.",
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SearchWidget(),
                  Expanded(
                    child: Column(
                      children: [
                        CategoriesTitle(title: "Choose Brand"),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 80,
                          child: ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                              builder: (context) =>
                                                  const MainStock()));
                                    },
                                    child: Card(
                                      color: const Color(0xffF5F6FA),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 60,
                                            width: 80,
                                            padding: const EdgeInsets.all(8.0),
                                            decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                      "assets/images/nike.JPG",
                                                    ),
                                                    fit: BoxFit.cover)),
                                          ),
                                          Container(
                                            height: 60,
                                            width: 80,
                                            child: Center(
                                              child: Text(
                                                categories[index],
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    height: 1.5),
                                              ),
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
                        const SizedBox(height: 10),
                        CategoriesTitle(title: "New Arraival"),
                        const SizedBox(height: 10),
                        Expanded(
                          child: GridView.count(
                            physics: const BouncingScrollPhysics(),
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            crossAxisCount: 2,
                            childAspectRatio: 5 / 9,
                            children: <Widget>[
                              ProductCard("assets/images/homeone.png",
                                  "Nike Sportswear Club Fleece", "\$99"),
                              ProductCard(
                                  "assets/images/hometwo.png",
                                  "Trail Running Jacket Nike Windrunner",
                                  "\$99"),
                              ProductCard("assets/images/homethree.png",
                                  "Nike Sportswear Club Fleece", "\$99"),
                              ProductCard(
                                  "assets/images/homefour.png",
                                  "Trail Running Jacket Nike Windrunner",
                                  "\$99"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.grey,
            ),
            label: 'Wishlist'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.grey,
            ),
            label: 'Cart'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              color: Colors.grey,
            ),
            label: 'Profile'),
      ]),
    );
  }
}
