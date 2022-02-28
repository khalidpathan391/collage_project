import 'package:collage_project/penter.dart';
import 'package:collage_project/plumber.dart';
import 'package:collage_project/repair.dart';
import 'package:flutter/material.dart';

import 'architeck.dart';
import 'beauti.dart';
import 'black.dart';
import 'carp.dart';
import 'cleaner.dart';
import 'electri.dart';
import 'gard.dart';
import 'hard.dart';
import 'home_main.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 15),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Archi()));
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/architect.png',
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        "Architecture",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Beauti()));
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/beautician.png',
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        "Beautician",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Black()));
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/black.png',
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        "BlackSmith",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Carpenter()));
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/carp.png',
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        "Carpenter",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cleaner()));
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/cleaner.png',
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        "Cleaner",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Electri()));
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/elect.png',
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        "Electrician",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Gardener()));
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/gardener.png',
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        "Gardener",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Hardware()));
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/hard.jpg',
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        "Hardware",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home_Main()));
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/Homee.jpg',
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        "Home_Main",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Penter()));
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/penter.png',
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        "Penter",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Plumber()));
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/plumber.jpg',
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        "Plumber",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Rep_Main()));
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/rep.png',
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        "Rep_&_Main",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
