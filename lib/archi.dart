import 'package:flutter/material.dart';

class Archi extends StatefulWidget {
  const Archi({Key? key}) : super(key: key);

  @override
  State<Archi> createState() => _ArchiState();
}

class _ArchiState extends State<Archi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Container(
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}
