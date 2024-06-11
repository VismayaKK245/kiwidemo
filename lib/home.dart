// import 'package:flutter/material.dart';
// import 'package:water/Navbar/navbar.dart';
// import 'package:water/home_1row.dart';


// class MyHomePage extends StatelessWidget {
//   final bool? desktopLayout;
//   final bool? mobileLayout;

//   const MyHomePage({Key? key, this.desktopLayout, this.mobileLayout})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Navbar(),
//             CustomAppBar(mobileLayout: mobileLayout ?? false), // Pass mobileLayout
//           Image.network('https://images.app.goo.gl/kChaRwgwCq5WoAJo7',
//           height: 800,
//           width: 1000,),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:water/Navbar/navbar.dart';
import 'package:water/home_1row.dart';

class MyHomePage extends StatelessWidget {
  final bool? desktopLayout;
  final bool? mobileLayout;

  const MyHomePage({Key? key, this.desktopLayout, this.mobileLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Navbar(),
            CustomAppBar(mobileLayout: mobileLayout ?? false),
            Image.network(
              'https://images.unsplash.com/photo-1717157801607-47d172d858bf?q=80&w=1902&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Use a direct image URL or a placeholder
              errorBuilder: (context, error, stackTrace) {
                return Text('Failed to load image');
              },
            ),
          ],
        ),
      ),
    );
  }
}
