import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

class MenuItems {

  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title, 
    required this.subtitle, 
    required this.link, 
    required this.icon
  });

}

const appMenuItems = [
  MenuItems(
    title: 'Botones',
    subtitle: 'Varios Botones en Flutter',
    link: ButtonScreen.name,
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Tarjetas',
    subtitle: 'Contenedor estilizado',
    link: CardsScreen.name,
    icon: Icons.card_giftcard_outlined,
  ),
];