import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'colors.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  Color color3 = HexColor('#143c5c');
  String? valueChoose = 'Available | Hey Let Us Connect';
  List itemList = [
    'Available | Hey Let Us Connect',
    'Away | Stay Discreet And Watch',
    'Busy | Do Not Disturb | Will Catch up',
    'SOS | Emergency! Need Assistance! HEL'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 1.0,
          color: color3,
          offset: const Offset(1.0, 1.0),
        )
      ], borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButton(
          underline: const SizedBox(),
          isExpanded: true,
          items: itemList.map((valueItem) {
            return DropdownMenuItem(
              value: valueItem,
              child: Text(
                valueItem,
                style: TextStyle(color: color3),
              ),
            );
          }).toList(),
          onChanged: (newvalue) {
            setState(() {
              valueChoose = newvalue.toString();
            });
          },
          value: valueChoose,
        ),
      ),
    );
  }
}
