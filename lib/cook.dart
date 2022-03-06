import 'package:flutter/material.dart';

class Cook extends StatefulWidget {
  const Cook({Key? key}) : super(key: key);

  @override
  State<Cook> createState() => _CookState();
}

class _CookState extends State<Cook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        child: ListView(children: []),
      ),
    );
  }
}
