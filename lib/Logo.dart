import 'package:collage_project/Second.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Otp.dart';
import 'login.dart';

class Logo extends StatefulWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  initState() {
    Future.delayed(Duration(seconds: 2), () async {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      bool loginstatus = await preferences.getBool('login') ?? false;
      if (loginstatus) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Category()));
      } else
        Navigator.push(context, MaterialPageRoute(builder: (context) => Otp()));

      //
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.only(top: 40),
          child: Column(children: [
            Image.asset("assets/images/hub.jpg"),
            SizedBox(
              height: 50,
            ),
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText('SERVICE  HUB',
                    textStyle:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                // TyperAnimatedText('HuB',
                //     textStyle:
                //         TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              ],
            ),
          ]),
        ));
  }
}
