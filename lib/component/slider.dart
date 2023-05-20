import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'colors.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double rating = 0;
  Color color3 = HexColor('#143c5c');
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Column(
        children: [
          Center(
            child: Slider(
              divisions: 100,
              value: rating,
              activeColor: color3,
              label: rating.round().toString(),
              onChanged: (newrating) {
                setState(() {
                  rating = newrating;
                });
              },
              min: 0,
              max: 100,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '1 Km',
                style: TextStyle(color: color3),
              ),
              Text(
                '100 Km',
                style: TextStyle(color: color3),
              )
            ],
          )
        ],
      ),
    );
  }
}
