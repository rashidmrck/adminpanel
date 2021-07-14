import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DrawerHeader(
              child: Image.asset('assets/images/logo.png'),
            ),
            DrawerListTile(
              press: () {},
              svgSrc: 'assets/icons/menu_dashbord.svg',
              title: 'Dashboard',
            ),
            DrawerListTile(
              press: () {},
              svgSrc: 'assets/icons/menu_tran.svg',
              title: 'Transaction',
            ),
            DrawerListTile(
              press: () {},
              svgSrc: 'assets/icons/menu_task.svg',
              title: 'Task',
            ),
            DrawerListTile(
              press: () {},
              svgSrc: 'assets/icons/menu_dashbord.svg',
              title: 'Documents',
            ),
            DrawerListTile(
              press: () {},
              svgSrc: 'assets/icons/menu_store.svg',
              title: 'Store',
            ),
            DrawerListTile(
              press: () {},
              svgSrc: 'assets/icons/menu_notification.svg',
              title: 'Notification',
            ),
            DrawerListTile(
              press: () {},
              svgSrc: 'assets/icons/menu_profile.svg',
              title: 'Settings',
            ),
            DrawerListTile(
              press: () {},
              svgSrc: 'assets/icons/menu_setting.svg',
              title: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key key,
    @required this.title,
    @required this.svgSrc,
    @required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}
