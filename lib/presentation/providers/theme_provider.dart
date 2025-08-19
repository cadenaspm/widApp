//Estado para almacenar bool
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Un simple booleano
final isDarkModeProvider = StateProvider<bool>((ref) => false);

//Lista de colores inmutables
final colorListProvider = Provider((ref) => colorList);

//Un simple int
final selectedColorProvider = StateProvider<int>((ref) => 0);
