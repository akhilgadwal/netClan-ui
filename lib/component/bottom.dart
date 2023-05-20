import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'colors.dart';

class MyBottomNavBar extends StatefulWidget {
  MyBottomNavBar({
    super.key,
    required this.currenIndex,
    required this.onTap,
  });
  Function(int)? onTap;
  int currenIndex;

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  //int currentIndex = 0;
  // void _nav(int index) {
  //   setState(() {
  //     index = currentIndex;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    Color color3 = HexColor('#143c5c');
    return BottomNavigationBar(
      unselectedLabelStyle: TextStyle(color: color3),
      selectedItemColor: color3,
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.currenIndex,
      onTap: widget.onTap,
      items: [
        BottomNavigationBarItem(
            icon: Image.asset(
              'lib/assets/images/Untitled.jpeg',
              height: 30,
              width: 40,
            ),
            label: 'Refine'),
        BottomNavigationBarItem(
          icon: Image.asset(
            'lib/assets/images/view.png',
            color: color3,
            height: 30,
            width: 40,
          ),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
            icon: Image.asset(
              'lib/assets/images/social-media.png',
              color: color3,
              height: 30,
              width: 40,
            ),
            label: 'Network'),
        BottomNavigationBarItem(
            icon: Image.asset(
              'lib/assets/images/chat.png',
              color: color3,
              height: 30,
              width: 40,
            ),
            label: 'Chat',
            backgroundColor: color3),
        BottomNavigationBarItem(
            icon: Image.asset(
              'lib/assets/images/contact-book.png',
              color: color3,
              height: 30,
              width: 40,
            ),
            label: 'Contact'),
      ],
    );
  }
}
