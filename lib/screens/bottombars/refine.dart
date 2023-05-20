import 'package:flutter/material.dart';
import 'package:netclan/component/chips.dart';

import '../../component/colors.dart';
import '../../component/dropdown.dart';
import '../../component/slider.dart';
import '../../component/textfeild.dart';

class RefineScreen extends StatefulWidget {
  const RefineScreen({super.key});

  @override
  State<RefineScreen> createState() => _RefineScreenState();
}

class _RefineScreenState extends State<RefineScreen> {
  Color color3 = HexColor('#143c5c');
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Select Your Availiablity',
            style: TextStyle(fontSize: 15, color: color3),
          ),
          const SizedBox(
            height: 10,
          ),
          DropDown(),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Add Your Status',
            style: TextStyle(
                color: color3, fontWeight: FontWeight.w500, fontSize: 15),
          ),
          const SizedBox(
            height: 15,
          ),
          MyTextField(),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Select Hyper Local Distance',
            style: TextStyle(
                color: color3, fontWeight: FontWeight.w500, fontSize: 15),
          ),
          const SizedBox(
            height: 10,
          ),
          const MySlider(),
          Text(
            'Select Purpose',
            style: TextStyle(
                color: color3, fontSize: 15, fontWeight: FontWeight.w500),
          ),
          Chips()
        ]),
      ),
    );
  }
}
