import 'dart:developer';

import 'package:collage_project/widgitbuild.dart';
import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

import 'Otp.dart';

import 'login.dart';
import 'Second.dart';

class Verify extends StatefulWidget {
  String Verifyid;
  Verify(this.Verifyid);

  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  String smsOtp = "";
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: getDecoration(),
          // color: Colors.green.shade300,
          child: ListView(children: <Widget>[
            SizedBox(
              height: 70,
            ),
            Image.asset(
              "assets/images/abc.png",
              width: 150,
              height: 150,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Enter OTP Send On Your Mobile Number",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: getDecoration(),
              height: 220,
              margin: EdgeInsets.all(25),
              child: Column(children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(children: [
                    SizedBox(
                      height: 10,
                    ),
                    PinEntryTextField(
                      showFieldAsBox: true,
                      fields: 6,
                      onSubmit: (text) {
                        smsOtp = text as String;
                      },
                    ),
                  ]),
                ),
                SizedBox(height: 50),
                //ElevatedButton(onPressed: () {}, child: Text("CONTINUE")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        log("RESEND BUTTON PRESS");
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          //color: Colors.green.shade300,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "Resend",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        log("CONTINUE BUTTON PRESS");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Loginscreen()));
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          //color: Colors.green.shade300,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "Continue",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    )
                  ],
                )
              ]),
            )
          ]),
        )
      ]),
    );
  }
}
