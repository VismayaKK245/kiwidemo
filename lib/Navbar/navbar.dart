import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth > 1280) {
        return const DesktopNavbar();
      } else if (Constraints.maxWidth > 800 && Constraints.maxWidth < 1280) {
        return const DesktopNavbar();
      } else {
        return const MobileNavbar();
      }
    });
  }
}

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        const  Text(
            "Athira pp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
           const   InkWell(
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            const  SizedBox(width: 30),
            const  InkWell(
                child: Text(
                  "Contact",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            const  SizedBox(width: 30),
            const  InkWell(
                child: Text(
                  "About Us",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 30),
              MaterialButton(
                  color: Colors.red,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  onPressed: (){},
                  child:const  Text("LOGIN",
                  style: TextStyle(color: Colors.white),),
                  ),
            ],
          )
        ],
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 20),
      child: Column(
    
        children: [
          Text(
            "ABED REALTORS",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 30),
              InkWell(
                child: Text(
                  "Contact",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 30),
              InkWell(
                child: Text(
                  "About Us",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 30),
            //
            ],
          )
        ],
      ),
    );
  }
}
