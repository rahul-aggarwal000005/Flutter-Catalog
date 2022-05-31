import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
    );
  }
}
