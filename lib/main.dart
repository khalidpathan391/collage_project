import 'package:collage_project/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Logo.dart';
import 'Otp.dart';

import 'Signup.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Logo(),
    ),
  );
}
// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     // home: Logo(),
//     home: Otp(),
//     //home: Loginscreen(),
//     //home: Signup(),
//     // home: Second(),
//     // home:Archi(),
//   ));
// }
