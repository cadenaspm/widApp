import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/counter/counter_screen.dart';
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
    required this.icon,
  });
}

const appMenuItems = [
  MenuItems(
    title: 'Counter Screen Riverpod',
    subtitle: 'Implementación de un contador con Riverpod',
    link: CounterScreen.name,
    icon: Icons.control_point_outlined,
  ),
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

  MenuItems(
    title: 'Progress',
    subtitle: 'Generales y Controlados',
    link: ProgressScreen.name,
    icon: Icons.refresh_rounded,
  ),

  MenuItems(
    title: 'Snackbar & Dialogs',
    subtitle: 'Snackbar y Dialogs',
    link: SnackbarScreen.name,
    icon: Icons.info_outline,
  ),

  MenuItems(
    title: 'Animated container',
    subtitle: 'Statefull widget animado',
    link: AnimatedScreen.name,
    icon: Icons.animation_outlined,
  ),

  MenuItems(
    title: 'UI Controls + Tiles',
    subtitle: 'Controles de UI',
    link: UiControlsScreen.name,
    icon: Icons.check_box_outlined,
  ),

  MenuItems(
    title: 'Introducción a la aplicación',
    subtitle: 'Pequeño tutorial de introducción',
    link: AppTutorialScreen.name,
    icon: Icons.accessibility_new_outlined,
  ),

  MenuItems(
    title: 'Infinte Scroll & Pull to refresh',
    subtitle: 'Listas infinitas y Pull to refresh',
    link: InfiniteScrollScreen.name,
    icon: Icons.list_alt_outlined,
  ),

  MenuItems(
    title: 'Theme changer',
    subtitle: 'Cambio de tema de la aplicación',
    link: ThemeChangerScreen.name,
    icon: Icons.color_lens_outlined,
  ),
];
