import 'package:flutter/material.dart';

class Hardware extends StatefulWidget {
  const Hardware({Key? key}) : super(key: key);

  @override
  _HardwareState createState() => _HardwareState();
}

class _HardwareState extends State<Hardware> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}
