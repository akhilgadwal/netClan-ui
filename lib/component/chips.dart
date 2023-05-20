import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'colors.dart';

class Chips extends StatelessWidget {
  const Chips({super.key});

  @override
  Widget build(BuildContext context) {
    Color color3 = HexColor('#143c5c');
    return Container(
      color: Colors.white,
      height: 220,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            children: [
              Chip(
                  shape: StadiumBorder(side: BorderSide(color: color3)),
                  backgroundColor: Colors.white,
                  label: Text('Coffee')),
              const SizedBox(
                width: 10,
              ),
              Chip(
                  shape: StadiumBorder(side: BorderSide(color: color3)),
                  backgroundColor: color3,
                  label: Text(
                    'Business',
                    style: TextStyle(color: Colors.white),
                  )),
              const SizedBox(
                width: 10,
              ),
              Chip(
                  shape: StadiumBorder(side: BorderSide(color: color3)),
                  backgroundColor: Colors.white,
                  label: Text('Hobbies')),
            ],
          ),
          Row(
            children: [
              Chip(
                  shape: StadiumBorder(side: BorderSide(color: color3)),
                  backgroundColor: color3,
                  label: Text(
                    'Friendship',
                    style: TextStyle(color: Colors.white),
                  )),
              const SizedBox(
                width: 10,
              ),
              Chip(
                  shape: StadiumBorder(side: BorderSide(color: color3)),
                  backgroundColor: Colors.white,
                  label: Text('Movies')),
              const SizedBox(
                width: 10,
              ),
              Chip(
                  shape: StadiumBorder(side: BorderSide(color: color3)),
                  backgroundColor: Colors.white,
                  label: Text('Dinning')),
            ],
          ),
          Row(
            children: [
              Chip(
                  shape: StadiumBorder(side: BorderSide(color: color3)),
                  backgroundColor: Colors.white,
                  label: Text('Dating')),
              SizedBox(
                width: 10,
              ),
              Chip(
                  shape: StadiumBorder(side: BorderSide(color: color3)),
                  backgroundColor: Colors.white,
                  label: Text('Matrimony')),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Chip(
                  shape: StadiumBorder(side: BorderSide(color: color3)),
                  backgroundColor: color3,
                  label: Text(
                    'Save&Explore',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
