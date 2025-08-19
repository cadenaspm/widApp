import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {


  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {

    final hasNotch = MediaQuery.of(context).padding.top > 35;


    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });

        final menuItem = appMenuItems[value];
        context.pushNamed(menuItem.link);


        widget.scaffoldKey.currentState!.closeDrawer();
      },
      // children: [NavigationDrawerDestination(icon: icon, label: label)],
      children: [
        
        Padding(
          padding: EdgeInsets.fromLTRB(15, hasNotch ? 0 : 20, 16, 10),
          child: Text('Principal'),
        ),

        ...appMenuItems
          .sublist(0,3)
          .map((item) {
            return NavigationDrawerDestination(
              icon: Icon(item.icon),
              label: Text(item.title),
            );
          }),
        
        Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 16, 10),
            child: Divider(),
        ),

        Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 16, 10),
            child: Text('Más opciones'),
        ),

        ...appMenuItems
          .sublist(3)
          .map((item) {
            return NavigationDrawerDestination(
              icon: Icon(item.icon),
              label: Text(item.title),
            );
          }),
      ],
    );
  }
}
