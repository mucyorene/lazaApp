import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/Screens/Screen1/ScreenMain.dart';
import 'package:laza/Screens/Screen14/PaymentScreen.dart';
import 'package:laza/Screens/screen11/Screen11.dart';
import 'package:laza/Screens/screen12/screen12.dart';
import 'package:laza/Screens/screen17/pressEnter.dart';
import 'package:laza/common/expConta.dart';
import '../Widgets/CustomAppBarSingle.dart';
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
        appBar: AppBarCustom.appBarCustom(
            0.0,
            Colors.transparent,
            false,
            50.0,
            40.0,
            CircleAvatar(
                backgroundColor: const Color(0xffF5F6FA),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image.asset("assets/images/closeDrawer.png"))),
            null,
            null),
        body: SingleChildScrollView(
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(
                height: 40,
              ),
              ListTile(
                leading: const Icon(
                  Icons.wb_sunny_outlined,
                  color: Colors.black87,
                  size: 25,
                ),
                title: const Text(
                  'Dark Mode',
                  style: TextStyle(color: Colors.black87, fontSize: 17),
                ),
                trailing: Switch.adaptive(
                  activeColor: Colors.black,
                  value: _isInDarkMode,
                  onChanged: (bool value) {
                    setState(() => _isInDarkMode = value);
                  },
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.info_outline,
                  size: 25,
                  color: Colors.black87,
                ),
                title: Text(
                  'Account Information',
                  style: TextStyle(color: Colors.black87, fontSize: 17),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.lock_outline,
                  size: 25,
                  color: Colors.black87,
                ),
                title: Text(
                  'Password',
                  style: TextStyle(color: Colors.black87, fontSize: 17),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 25,
                  color: Colors.black87,
                ),
                title: const Text(
                  'Order',
                  style: TextStyle(color: Colors.black87, fontSize: 17),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const screen12(),
                      ));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.card_membership,
                  size: 25,
                  color: Colors.black87,
                ),
                title: const Text(
                  'My Cards',
                  style: TextStyle(color: Colors.black87, fontSize: 17),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const Payment(),
                      ));
                },
              ),
              const ListTile(
                leading: Icon(
                  Icons.favorite_outline_outlined,
                  size: 25,
                  color: Colors.black87,
                ),
                title: Text(
                  'WishList',
                  style: TextStyle(color: Colors.black87, fontSize: 17),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.settings_outlined,
                  size: 25,
                  color: Colors.black87,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(color: Colors.black87, fontSize: 17),
                ),
              ),
              jump(),
              ListTile(
                leading: const Icon(
                  Icons.logout_sharp,
                  size: 25,
                  color: Color(0XffFF5757),
                ),
                title: const Text(
                  'Logout',
                  style: TextStyle(color: Color(0XffFF5757), fontSize: 17),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const Screen2(),
                      ));
                },
              ),
            ],
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
            context, MaterialPageRoute(builder: (context) =>  Screen11()));
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
