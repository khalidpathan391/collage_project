import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

getDecoration() {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(7.0),
      // border: Border.all(color: Colors.blue),
      color: Colors.white,
      gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color.fromARGB(255, 235, 141, 135),
            Colors.white,
            Colors.blue,
            Color.fromARGB(255, 171, 3, 201)
          ]),
      boxShadow: const [
        BoxShadow(
          color: Colors.black,
          offset: Offset(0, 0),
          blurRadius: 7,
        ),
      ]);
}
