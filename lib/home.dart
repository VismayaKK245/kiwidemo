import 'package:flutter/material.dart';
import 'package:water/Navbar/navbar.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
              Color.fromARGB(255, 232, 86, 23),
              Color.fromARGB(255, 23, 124, 232),
            ])),
        child:const SingleChildScrollView(
          child:  Column(
            children: [Navbar()],
          ),
        ),
      ),
    );
  }
}