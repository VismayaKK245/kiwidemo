// import 'package:flutter/material.dart';

// class Navbar extends StatelessWidget {
//   const Navbar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, Constraints) {
//       if (Constraints.maxWidth > 1280) {
//         return const DesktopNavbar();
//       } else if (Constraints.maxWidth > 800 && Constraints.maxWidth < 1280) {
//         return const DesktopNavbar();
//       } else {
//         return const MobileNavbar();
//       }
//     });
//   }
// }

// class DesktopNavbar extends StatelessWidget {
//   const DesktopNavbar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return   AppBar(
//         backgroundColor: Colors.white,
       
//         actions: [
//                SizedBox(width: 90,),
//           IconButton(
//             icon: Icon(Icons.language_rounded, color: Colors.black),
            
//             onPressed: () {},
//           ),
//               Text('EN', style: TextStyle(color: Colors.black, fontSize: 15)),
//           IconButton(
//             icon: Icon(Icons.settings, color: Colors.black),
//             onPressed: () {},
//           ),
//           Text('Site Setting', style: TextStyle(color: Colors.black, fontSize: 15)),
//           Spacer(),
//           IconButton(
//             icon: Icon(Icons.favorite_border, color: Colors.black),
//             onPressed: () {},
//           ),
//              Text('Favourite properties', style: TextStyle(color: Colors.black, fontSize: 15)),
//           IconButton(
//             icon: Icon(Icons.star, color: Colors.black),
//             onPressed: () {},
//           ),
//              Text('Saved searches', style: TextStyle(color: Colors.black, fontSize: 15)),
//           IconButton(
//             icon: Icon(Icons.account_circle, color: Colors.black),
//             onPressed: () {
              
//             },
//           ),
//              Text('Log in', style: TextStyle(color: Colors.black, fontSize: 15)),
//              SizedBox(width: 90,)
//         ],
//       );
//   }
// }

// class MobileNavbar extends StatelessWidget {
//   const MobileNavbar({super.key});

//   @override
//   Widget build(BuildContext context) {
//    return   AppBar(
//         backgroundColor: Colors.white,
       
//         actions: [
//           IconButton(
//             icon: Icon(Icons.language_rounded, color: Colors.black),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: Icon(Icons.settings, color: Colors.black),
//             onPressed: () {},
//           ),
//           Spacer(),
//           IconButton(
//             icon: Icon(Icons.favorite_border, color: Colors.black),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: Icon(Icons.search, color: Colors.black),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: Icon(Icons.account_circle, color: Colors.black),
//             onPressed: () {},
//           ),
//         ],
//       );
//   }
// }
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1280) {
        return  DesktopNavbar();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1280) {
        return  DesktopNavbar();
      } else {
        return MobileNavbar();
      }
    });
  }
}

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      actions: [
        SizedBox(width: 90),
        _language(context),
        _sitesetting(context),
        Spacer(),
        _favorateborder(context),
        SizedBox(width: 15),
        _savedsearches(context),
        SizedBox(width: 15),
        _buildLoginButton(context), 
        SizedBox(width: 90),
      ],
    );
  }

 
Widget _language(BuildContext context) {
    return TextButton(
      onPressed: () {
        _showLoginDialog(context); 
      },
      child: Row(
        children: [
          Icon(Icons.language_rounded, color: Colors.black),
          SizedBox(width: 8),
          Text('EN', style: TextStyle(color: Colors.black, fontSize: 15)),
        ],
      ),
    );
  }



  
Widget _sitesetting(BuildContext context) {
    return TextButton(
      onPressed: () {
        _showLoginDialog(context); // Showing login dialog on press
      },
      child: Row(
        children: [
          Icon(Icons.settings, color: Colors.black),
          SizedBox(width: 8),
          Text('Site Setting', style: TextStyle(color: Colors.black, fontSize: 15)),
        ],
      ),
    );
  }


Widget _favorateborder(BuildContext context) {
    return TextButton(
      onPressed: () {
        _showLoginDialog(context); // Showing login dialog on press
      },
      child: Row(
        children: [
          Icon(Icons.favorite_border, color: Colors.black),
          SizedBox(width: 8),
          Text('Favourite properties', style: TextStyle(color: Colors.black, fontSize: 15)),
        ],
      ),
    );
  }



 Widget _savedsearches(BuildContext context) {
    return TextButton(
      onPressed: () {
        _showLoginDialog(context); // Showing login dialog on press
      },
      child: Row(
        children: [
          Icon(Icons.star, color: Colors.black),
          SizedBox(width: 8),
          Text('Saved searches', style: TextStyle(color: Colors.black, fontSize: 15)),
        ],
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        _showLoginDialog(context); // Showing login dialog on press
      },
      child: Row(
        children: [
          Icon(Icons.account_circle, color: Colors.black),
          SizedBox(width: 8),
          Text('Login', style: TextStyle(color: Colors.black, fontSize: 15)),
        ],
      ),
    );
  }

  void _showLoginDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Login"),
          content: Text("This is the login popup container."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Close"),
            ),
          ],
        );
      },
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      actions: [
       _buildLanguageButton(context),
       _buildsitesearchButton(context),
        Spacer(),
        _buildpropertyButton(context),
        _buildsavedsearchButton(context),
        _buildLoginButton(context), // Added login button here
      ],
    );
  }

  Widget _buildLanguageButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.account_circle, color: Colors.black),
      onPressed: () {
        _showLoginDialog(context); // Showing login dialog on press
      },
    );
  }
  Widget _buildsitesearchButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.language_rounded, color: Colors.black),
      onPressed: () {
        _showLoginDialog(context); // Showing login dialog on press
      },
    );
  }
  Widget   _buildpropertyButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.settings, color: Colors.black),
      onPressed: () {
        _showLoginDialog(context); // Showing login dialog on press
      },
    );
  }
  Widget _buildsavedsearchButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.star, color: Colors.black),
      onPressed: () {
        _showLoginDialog(context); // Showing login dialog on press
      },
    );
  }
  Widget _buildLoginButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.account_circle, color: Colors.black),
      onPressed: () {
        _showLoginDialog(context); // Showing login dialog on press
      },
    );
  }

  void _showLoginDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Login"),
          content: Text("This is the login popup container."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Close"),
            ),
          ],
        );
      },
    );
  }
}