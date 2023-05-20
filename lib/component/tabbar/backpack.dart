import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Backpack extends StatefulWidget {
  const Backpack({super.key});

  @override
  State<Backpack> createState() => _BackpackState();
}

class _BackpackState extends State<Backpack> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text('Backpack'),
    ));
  }
}
