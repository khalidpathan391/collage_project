import 'package:flutter/material.dart';

class Cleaner extends StatefulWidget {
  const Cleaner({Key? key}) : super(key: key);

  @override
  _CleanerState createState() => _CleanerState();
}

class _CleanerState extends State<Cleaner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}
