import 'package:flutter/material.dart';

const colorList = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
  Colors.brown,
  Colors.grey,
  Colors.black,
  Colors.white,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;
  AppTheme({this.selectedColor = 0, this.isDarkMode = false});

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: colorList[selectedColor],
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
    ),
  );

  AppTheme copyWith({int? selectedColor, bool? isDarkMode}) => AppTheme(
    selectedColor: selectedColor ?? this.selectedColor,
    isDarkMode: isDarkMode ?? this.isDarkMode,
  );
}
