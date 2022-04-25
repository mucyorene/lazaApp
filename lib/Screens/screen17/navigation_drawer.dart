import 'package:flutter/material.dart';
import 'package:laza/Screens/screen11/screen11.dart';
import 'package:laza/Screens/screen17/pressEnter.dart';
import 'package:laza/common/expConta.dart';

import 'drawer_item.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  bool _isInDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 10, 24, 0),
            child: Column(
              children: [
                headerWidget(),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    DrawerItem(
                      name: 'Dark Mode',
                      icon: Icons.wb_sunny_outlined,
                      onPressed: () => onItemPressed(context, index: 0),
                    ),
                    exconta(),
                    Switch.adaptive(
                      activeColor: Colors.black,
                      value: _isInDarkMode,
                      onChanged: (bool value) {
                        setState(() => _isInDarkMode = value);
                      },
                    )
                    //can this be selected?
                  ],
                ),
                jump(),
                DrawerItem(
                    name: 'Account Information',
                    icon: Icons.info_outline,
                    onPressed: () => onItemPressed(context, index: 1)),
                jump(),
                DrawerItem(
                    name: 'Password',
                    icon: Icons.lock_outline,
                    onPressed: () => onItemPressed(context, index: 2)),
                jump(),
                DrawerItem(
                    name: 'Order',
                    icon: Icons.shopping_bag_outlined,
                    onPressed: () => onItemPressed(context, index: 3)),
                jump(),
                DrawerItem(
                    name: 'My Cards',
                    icon: Icons.card_giftcard_outlined,
                    onPressed: () => onItemPressed(context, index: 3)),
                jump(),
                DrawerItem(
                    name: 'Wishlist',
                    icon: Icons.favorite_border_outlined,
                    onPressed: () => onItemPressed(context, index: 3)),
                jump(),
                DrawerItem(
                    name: 'Settings',
                    icon: Icons.settings_outlined,
                    onPressed: () => onItemPressed(context, index: 4)),
                const SizedBox(
                  height: 50,
                ),
                CallLogout(
                    name: 'Logout',
                    icon: Icons.logout_sharp,
                    onPressed: () => onItemPressed(context, index: 5)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const screen11()));
        break;
    }
  }

  Widget headerWidget() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/images/drawerImage.png'),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Mrh Raju',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 5,
            ),
            Text('Verified profile',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400))
          ],
        ),
        exconta(),
        Container(
          alignment: Alignment.center,
          height: 32,
          width: 66,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0XffF5F5F5),
          ),
          child: const Text(
            '3 Orders',
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
