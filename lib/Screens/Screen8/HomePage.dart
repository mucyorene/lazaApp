import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Model/Others/CartModel.dart';
import 'package:laza/Model/ProductModel/Product.dart';
import 'package:laza/Screens/Screen18/StockScreen.dart';
import 'package:laza/Screens/Screen8/Widgets/BrandCard.dart';
import 'package:laza/Screens/Screen8/Widgets/CustomList.dart';
import 'package:laza/Screens/Screen8/Widgets/EndDrawerNavigation.dart';
import 'package:laza/Screens/Screen8/Widgets/HeaderTitles.dart';
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
  List<Product> products = Product.generatedList();
  List<String> categories = ['Adidas', 'Nike'];
  List<String> brandImage = [
    "assets/images/adidas.JPG",
    "assets/images/nike.JPG"
  ];
  List<Cart> cartLists = [];

  addToCart(Cart cart) {
    setState(() {
      cartLists.add(cart);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: true,
      endDrawerEnableOpenDragGesture: true,
      key: _key,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 50,
        backgroundColor: Colors.transparent,
        leadingWidth: 35,
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
          Builder(
            builder: (endCxt) => CircleAvatar(
              radius: 18,
              backgroundColor: const Color(0xffF5F6FA),
              child: IconButton(
                onPressed: () => Scaffold.of(endCxt).openEndDrawer(),
                icon: Image.asset(
                  "assets/images/Bag.png",
                  height: 20,
                ),
              ),
            ),
          )
        ],
      ),
      drawer: const NavigationDrawer(),
      endDrawer: EndDrawerNav(),
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  TopHeader("Hello", "Welcome to Laza."),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      children: [
                        const SearchWidget(),
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
                                return HomeBrandCard(
                                    brandIcon: brandImage[index],
                                    category: categories[index],
                                    navigateToBrandIcon: () => Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                            builder: (ctx) =>
                                                const MainStock())));
                              },
                              separatorBuilder: (_, index) => const SizedBox(
                                    height: 5,
                                  ),
                              itemCount: categories.length),
                        ),
                        const SizedBox(height: 10),
                        CategoriesTitle(title: "New Arrival"),
                        const SizedBox(height: 10),
                        GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  crossAxisCount: 2,
                                  childAspectRatio: 5 / 10),
                          itemBuilder: (cxt, index) {
                            // print("${products.length} this is the lenght");
                            return InkWell(
                              child: ProductCard(
                                  product: products.toList()[index],
                                  addToFavorite: () {}),
                            );
                          },
                          itemCount: products.length,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
