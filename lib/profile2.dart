import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'component/colors.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    Color color3 = HexColor('#143c5c');
    Color color2 = HexColor("#0d2c3c");
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 350,
        //color: Colors.black,
        child: Stack(children: [
          Center(
            child: Container(
              height: 215,
              width: 300,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 1.0,
                  color: Colors.black54,
                  offset: Offset(1.0, 1.0),
                )
              ], borderRadius: BorderRadius.circular(25), color: Colors.white),
            ),
          ),
          Positioned(
            right: 100,
            top: 140,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 60,
                  width: 200,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Coffee | Business | FriendShip',
                          style: TextStyle(
                              color: color2, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '  Hi community! I a, open to new\n  connections"☺️"',
                          style: TextStyle(color: color3, fontSize: 14),
                        )
                      ]),
                )
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: 35,
            child: Container(
              height: 90,
              width: 80,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                'MAG',
                style: TextStyle(fontSize: 25, color: color2),
              )),
            ),
          ),
          Positioned(
              top: 30,
              left: 260,
              child: Text(
                '+ INVITE',
                style: TextStyle(
                    color: color2, fontWeight: FontWeight.w500, fontSize: 14),
              )),
          Positioned(
              top: 55,
              left: 100,
              child: Text(
                'Mohd Akhil Gadwal',
                style: TextStyle(
                    color: color2, fontWeight: FontWeight.w500, fontSize: 16),
              )),
          Positioned(
              top: 80,
              left: 100,
              child: Text(
                'Mumbai within 200-300m',
                style: TextStyle(
                    color: color3, fontWeight: FontWeight.w500, fontSize: 13),
              )),
          Positioned(
            top: 105,
            left: 90,
            child: LinearPercentIndicator(
              barRadius: const Radius.circular(16),
              progressColor: color2,
              percent: 0.20,
              width: 150,
              lineHeight: 15,
            ),
          ),
        ]),
      ),
    );
  }
}
