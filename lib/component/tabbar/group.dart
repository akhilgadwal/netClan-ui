import 'package:flutter/material.dart';

import '../../profile2.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final List<Widget> _profile = const [
    Profile(),
    Profile(),
    Profile(),
    Profile(),
    Profile(),
    Profile(),
    Profile(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 30,
              width: 280,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    labelText: 'Search',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Image.asset(
              'lib/assets/images/equalizer.png',
              height: 25,
              width: 30,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: _profile.length,
              itemBuilder: (context, index) => Profile()),
        ),
      ]),
    );
  }
}
