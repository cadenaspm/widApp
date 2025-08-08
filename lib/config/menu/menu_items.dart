import 'package:flutter/material.dart';

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
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Tarjetas',
    subtitle: 'Contenedor estilizado',
    link: '/cards',
    icon: Icons.card_giftcard_outlined,
  ),
];