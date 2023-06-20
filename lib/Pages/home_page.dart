import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const int days = 35 ;
    const String name = "Shourya" ;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),

      body: Center(
        child: Container(
          child: const  Text("Welcome to My Flutter App,  $days $name,"),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
