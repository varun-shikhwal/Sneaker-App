import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class BottomNavbar extends StatelessWidget {
  void Function(int index)? onTabChange;
 BottomNavbar({Key? key, required this.onTabChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: GNav(
       activeColor: Colors.black,
          tabBackgroundColor: Colors.blueGrey.shade100,
          tabActiveBorder: Border.all(color: Colors.white),
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 17,
          onTabChange: (value)=>onTabChange!(value),
          tabs: [
        GButton(
          icon: Icons.home,
          text: 'Home',
        ),
        GButton(
          icon: Icons.shopping_bag_rounded,
          text: 'Cart',
        )
      ]),
    );
  }
}


