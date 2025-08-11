import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';

class HomeScreen extends StatelessWidget {

  static const String name = "HomeScreen";


  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter + Material 3')),
      body: _HomeView(listItems: appMenuItems),
    );
  }
}

class _HomeView extends StatelessWidget {
  final List listItems;

  final listItemStructure = const ListTile(
    leading: Icon(Icons.smart_button_outlined),
    title: Text('Title'),
    subtitle: Text('Subtitle'),
    trailing: Icon(Icons.arrow_forward_ios_outlined),
  );

  const _HomeView({required this.listItems});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: listItems.length,
      itemBuilder: (context, index) => _ItemListTile(menuItem: listItems[index],),
    );
  }
}

class _ItemListTile extends StatelessWidget {
  const _ItemListTile({
    required this.menuItem,
  });

  final MenuItems menuItem;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subtitle),
      trailing: Icon(Icons.arrow_forward_ios_outlined, color: colors.primary),
      onTap: () {

        //* context.go // Para hacer una navegacion rapida
        //* context.push //Para hacer un stack de navegacion 
        //* context.push(menuItem.link);
        context.pushNamed(ButtonScreen.name);
      },
    );
  }
}
