
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

  AppTheme({
    this.selectedColor = 0,
  });

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: colorList[selectedColor],
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 18,
      )
    )
  );

}