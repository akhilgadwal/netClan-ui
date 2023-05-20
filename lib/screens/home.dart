import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:netclan/component/bottom.dart';
import 'package:netclan/screens/bottombars/contact.dart';
import 'package:netclan/screens/bottombars/explore.dart';
import 'package:netclan/screens/bottombars/refine.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import '../component/colors.dart';
import 'bottombars/chat.dart';
import 'bottombars/network.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int seleindex = 0;
  void _nav(int index) {
    setState(() {
      seleindex = index;
    });
  }

  final List<Widget> _screens = [
    const RefineScreen(),
    const ExploreScreen(),
    const Network(),
    const Chat(),
    const ContactScreen(),
  ];
  Color color2 = HexColor("#0d2c44");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Explore'),
          Row(
            children: [
              Icon(
                Icons.location_on,
                size: 15,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Sans Fransisco',
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
        ]),
        backgroundColor: color2,
        actions: [Icon(Icons.notifications_none_outlined)],
      ),
      body: _screens[seleindex],
      bottomNavigationBar: MyBottomNavBar(
        currenIndex: seleindex,
        onTap: _nav,
      ),
    );
  }
}
