import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: darkBluishColor,
        primary: darkBluishColor
      ),
      textTheme: const TextTheme(bodyMedium: TextStyle(color: Vx.black )),
      cardColor: Colors.white,
      canvasColor: creamColor,
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20)),
      fontFamily: GoogleFonts.poppins().fontFamily);

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: lightBluishColor,
        primary: lightBluishColor
      ),
      textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white),bodyLarge: TextStyle(color: Vx.indigo400)),
      cardColor: darkCreamColor,
      canvasColor: Colors.black,
      appBarTheme: const AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20)),
      fontFamily: GoogleFonts.poppins().fontFamily);

  //Colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = const Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo400;
}