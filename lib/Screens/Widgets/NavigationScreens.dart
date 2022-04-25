import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen19/WishList.dart';
import 'package:laza/Screens/Screen8/HomePage.dart';
import 'package:laza/Screens/screen12/screen12.dart';

class NavigationScreens extends StatefulWidget {
  const NavigationScreens({Key? key}) : super(key: key);
  @override
  State<NavigationScreens> createState() => _NavigationScreensState();
}

class _NavigationScreensState extends State<NavigationScreens> {
  int currentIndex = 0;

  List<Widget> get screens => [
        const HomeScreen(),
        const WishListScreen(),
        const screen12(),
        const WishListScreen(),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.deepPurpleAccent,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
