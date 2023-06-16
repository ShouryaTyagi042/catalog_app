import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const int days = 30 ;
    const String name = "Shourya" ;
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),

      body: Center(
        child: Container(
          child: Text("Welcome to My Flutter App,  $days $name,"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
