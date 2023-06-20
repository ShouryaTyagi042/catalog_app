import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/Pages/home_page.dart';
import 'package:flutter_catalog_app/Pages/login_page.dart';
import 'package:flutter_catalog_app/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/" : (context) => const LoginPage() ,
        MyRoutes.loginRoute : (context) => const LoginPage() ,
        MyRoutes.homeRoute : (context) => const HomePage() ,
      },
    );
  }
}
