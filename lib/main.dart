import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/Pages/home_page.dart';
import 'package:flutter_catalog_app/Pages/login_page.dart';
import 'package:flutter_catalog_app/pages/cart_page.dart';
import 'package:flutter_catalog_app/utils/routes.dart';
import 'package:flutter_catalog_app/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      themeMode: ThemeMode.light,
      theme:  MyTheme.lightTheme(context)  ,
      darkTheme: MyTheme.darkTheme(context) ,
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/" : (context) => const LoginPage() ,
        MyRoutes.loginRoute : (context) => const LoginPage() ,
        MyRoutes.homeRoute : (context) => const HomePage() ,
        MyRoutes.cartPage : (context) => const CartPage() ,
      },
    );
  }
}
