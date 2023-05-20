import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:netclan/component/colors.dart';

import 'backpack.dart';
import 'group.dart';
import 'okat.dart';

class MyTabBars extends StatefulWidget {
  const MyTabBars({super.key});

  @override
  State<MyTabBars> createState() => _MyTabBarsState();
}

class _MyTabBarsState extends State<MyTabBars> {
  Color color3 = HexColor('#143c5c');
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Expanded(
        child: Column(children: [
          Material(
            color: color3,
            child: TabBar(
              unselectedLabelColor: color3,
              tabs: [
                Tab(
                  icon: Image.asset(
                    'lib/assets/images/icons8-group-96.png',
                    color: Colors.white,
                    height: 30,
                    width: 40,
                  ),
                ),
                Tab(
                  icon: Image.asset(
                    'lib/assets/images/icons8-bag-64.png',
                    color: Colors.white,
                    height: 30,
                    width: 40,
                  ),
                ),
                Tab(
                    icon: Image.asset(
                  'lib/assets/images/icon_for_shop-removebg-preview.png',
                  color: Colors.white,
                  height: 40,
                  width: 40,
                )),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(children: [
              MyWidget(),
              Backpack(),
              Filter(),
            ]),
          ),
        ]),
      ),
    );
  }
}
