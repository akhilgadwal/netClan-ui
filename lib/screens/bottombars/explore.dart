import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:netclan/component/tabbar/backpack.dart';

import '../../component/colors.dart';
import '../../component/tabbar/group.dart';
import '../../component/tabbar/okat.dart';
import '../../component/tabbar/tabbars.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  Color color2 = HexColor("#0d2c44");
  Color color3 = HexColor('#143c5c');
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          // appBar: AppBar(
          //   leading: Icon(Icons.menu),
          //   title:
          //       Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //     Text('Explore'),
          //     Row(
          //       children: [
          //         Icon(
          //           Icons.location_on_outlined,
          //           size: 15,
          //         ),
          //         const SizedBox(
          //           width: 5,
          //         ),
          //         Text(
          //           'Sans Fransisco',
          //           style: TextStyle(fontSize: 10),
          //         )
          //       ],
          //     ),
          //   ]),
          //   backgroundColor: color2,
          //   actions: [Icon(Icons.notification_add)],
          // ),
          body: Column(
        children: const [
          MyTabBars(),
          // Expanded(
          //   child: TabBarView(children: [
          //     MyWidget(),
          //     Backpack(),
          //     Filter(),
          //   ]),
          // )
        ],
      )),
    );
  }
}
