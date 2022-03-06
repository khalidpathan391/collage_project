import 'package:collage_project/archi.dart';
import 'package:collage_project/penter.dart';
import 'package:collage_project/plumber.dart';
import 'package:collage_project/cook.dart';
import 'package:flutter/material.dart';

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
  bool isSearched = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        actions: [
          isSearched
              ? Container(width: width * .7, child: TextField())
              : SizedBox(),
          IconButton(
            padding: EdgeInsets.only(right: 20, left: 20),
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            onPressed: () {
              setState(() {
                isSearched = !isSearched;
              });
            },
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 15),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildBox(Archi(), context, "architect.png", "Architecture"),
                buildBox(Beauti(), context, "beautician.png", "Beauticin"),
                buildBox(Black(), context, "black.png", "Black_Smith"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildBox(Carpenter(), context, "carp.png", "Carpenter"),
                buildBox(Cleaner(), context, "cleaner.png", "Cleaner"),
                buildBox(Electri(), context, "elect.png", "Electrician"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildBox(Gardener(), context, "gardener.png", "Gardener"),
                buildBox(Hardware(), context, "hardw.png", "Hardware"),
                buildBox(Home_Main(), context, "Homee.png", "Home\nRepairing"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildBox(Penter(), context, "penter.png", "Painter"),
                buildBox(Plumber(), context, "plumber.png", "Plumber"),
                buildBox(Cook(), context, "cook.png", "Cook")
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

getDecoration() {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(7.0),
      // border: Border.all(color: Colors.blue),
      color: Colors.white,
      boxShadow: const [
        BoxShadow(
          color: Colors.black,
          offset: Offset(0, 0),
          blurRadius: 7,
        ),
      ]);
}

buildBox(var rout, BuildContext context, String img, String val) {
  return Container(
    decoration: getDecoration(),
    height: 100,
    width: 100,
    padding: EdgeInsets.all(5),
    child: GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => rout));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/$img',
            height: 50,
            width: 50,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            val,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
