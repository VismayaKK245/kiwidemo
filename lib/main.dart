import 'package:flutter/material.dart';
import 'package:water/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Montserrat",
      ),
      home: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 1280) {
          return const MyHomePage(desktopLayout: true);
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1280) {
          return const MyHomePage(desktopLayout: true);
        } else {
          return const MyHomePage(mobileLayout: true);
        }
      }),
    );
  }
}