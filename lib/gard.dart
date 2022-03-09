import 'package:flutter/material.dart';

class Gardener extends StatefulWidget {
  const Gardener({Key? key}) : super(key: key);

  @override
  _GardenerState createState() => _GardenerState();
}

class _GardenerState extends State<Gardener> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Container(
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}
