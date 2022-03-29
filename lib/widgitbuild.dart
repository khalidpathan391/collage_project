import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

getDecoration() {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(7.0),
      // border: Border.all(color: Colors.blue),
      color: Colors.teal.shade100,
      // gradient: LinearGradient(
      //     begin: Alignment.bottomLeft,
      //     end: Alignment.topRight,
      //     colors: [Colors.teal, Colors.white, Colors.teal, Colors.white]),
      boxShadow: const [
        BoxShadow(
          color: Colors.black,
          offset: Offset(0, 0),
          blurRadius: 7,
        ),
      ]);
}
