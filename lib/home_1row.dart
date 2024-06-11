import 'package:flutter/material.dart';


class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final bool mobileLayout;

  const CustomAppBar({Key? key, required this.mobileLayout}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
  
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _isContainer1Visible = false;
  bool _isContainer2Visible = false;
  bool _isContainer3Visible = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 183, 165, 165),
      title: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 50),
            Text(
              'ABED REALTORS',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 23.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (!widget.mobileLayout) SizedBox(width: 400),
            SizedBox(width: 10),
            Text(
              'Find my Agent',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            SizedBox(width: 25),
            Text(
              'Floor Plans',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            SizedBox(width: 25),
            _buildGuidesDropDown1(),
            SizedBox(width: 25),
              _buildGuidesDropDown2(),
          
            SizedBox(width: 25),
            Text(
              'Agent Portal',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            SizedBox(width: 25),
           _buildGuidesDropDown3(),
            SizedBox(width: 70),
          ],
        ),
      ),
    );
  }

  Widget _buildGuidesDropDown1() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isContainer1Visible = !_isContainer1Visible;
        });
      },
      child: Row(
        children: [
          Text(
            'Guides',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          Icon(
            _isContainer1Visible ? Icons.arrow_drop_up : Icons.arrow_drop_down,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

 Widget _buildGuidesDropDown2() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isContainer2Visible = !_isContainer2Visible;
        });
      },
      child: Row(
        children: [
          Text(
            'Market Intelligence',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          Icon(
            _isContainer2Visible ? Icons.arrow_drop_up : Icons.arrow_drop_down,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

 Widget _buildGuidesDropDown3() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isContainer3Visible = !_isContainer3Visible;
        });
      },
      child: Row(
        children: [
          Text(
            'Events',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          Icon(
            _isContainer3Visible ? Icons.arrow_drop_up : Icons.arrow_drop_down,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

}