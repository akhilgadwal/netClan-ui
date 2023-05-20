import 'package:flutter/material.dart';

import 'colors.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  Color color3 = HexColor('#143c5c');
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(10),
      //     color: Colors.white,
      //     boxShadow: [BoxShadow(color: color3, offset: Offset(1.0, 1.0))]),
      height: 90,
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextField(
            maxLength: 250,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              label: Text(
                'Hi Community! I am open to new connections\n"☺️"',
                style: TextStyle(color: color3, fontSize: 11),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
