import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/Pages/home_page.dart';
import 'package:flutter_catalog_app/Pages/login_page.dart';

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
        primarySwatch: Colors.deepPurple
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => const LoginPage() ,
        "/login" : (context) => const LoginPage() ,
        "/home" : (context) => const HomePage() ,
      },
    );
  }
}
