import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {Key? key,
      required this.name,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  final String name;
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return
        // ListTile(
        //   onTap: onPressed,
        //   leading: Icon(
        //     icon,
        //     size: 20,
        //     color: Colors.black87,
        //   ),
        //   title: Text(
        //     name,
        //     style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        //   ),
        // );
        InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 20,
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: Colors.black87,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}

class CallLogout extends StatelessWidget {
  const CallLogout(
      {Key? key,
      required this.name,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  final String name;
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 20,
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: const Color(0XffFF5757),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              name,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0XffFF5757)),
            )
          ],
        ),
      ),
    );
  }
}
