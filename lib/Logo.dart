import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'login.dart';

class Logo extends StatefulWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  initState() {
    Future.delayed(Duration(seconds: 7), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Loginscreen()));
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
                TyperAnimatedText('SeRViCE  HuB',
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
