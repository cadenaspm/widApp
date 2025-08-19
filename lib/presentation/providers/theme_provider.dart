//Estado para almacenar bool
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Un simple booleano
final isDarkModeProvider = StateProvider<bool>((ref) => false);

//Lista de colores inmutables
final colorListProvider = Provider((ref) => colorList);

//Un simple int
final selectedColorProvider = StateProvider<int>((ref) => 0);

//Objeto personalizado de tipo AppTheme (custom)
//Cuando el estado es mas elaborado pensaremos en un stateNotifierProvider
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

class ThemeNotifier extends StateNotifier<AppTheme> {
  // State = Estado = new AppTheme();
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    //state = AppTheme(selectedColor: state.selectedColor, isDarkMode: !state.isDarkMode);
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
    //state = AppTheme(selectedColor: colorIndex, isDarkMode: state.isDarkMode);
  }
}
