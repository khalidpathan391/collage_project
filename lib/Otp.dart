import 'dart:developer';

import 'package:collage_project/verify.dart';
import 'package:collage_project/widgitbuild.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'Second.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  TextEditingController mobilectrl = new TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.green.shade300,
        body: Container(
      decoration: getDecoration(),
      child: ListView(
        children: [
          Container(
              height: 250,
              width: 250,
              padding: EdgeInsets.all(20),
              child: Image.asset("assets/images/Icon.png")),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Center(
                child: Text(
              "Login with your mobile Number",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )),
          ),
          Column(children: [
            SizedBox(
              height: 10,
            ),
            !isLoading
                ? Container(
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 236, 235, 233),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, 0),
                            blurRadius: 2,
                          ),
                        ]),
                    child: TextField(
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(125, 0, 0, 0),
                          fontSize: 34),
                      controller: mobilectrl,
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration: InputDecoration(
                          hintText: "",
                          counterText: "",
                          border: InputBorder.none,
                          prefixIcon: Text(
                            "+91",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 34),
                          ),
                          prefixIconConstraints:
                              BoxConstraints(minHeight: 0, minWidth: 0)),
                    ),
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  ),
            SizedBox(height: 50),
            !isLoading
                ? GestureDetector(
                    onTap: () {
                      if (isValidate()) {
                        setState(() {
                          isLoading = !isLoading;
                        });
                        log("Container was tapped");
                        signin();
                      }
                    },
                    child: Container(
                      width: 120,
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.teal),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, 0),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  )
                : SizedBox()
          ])
        ],
      ),
    ));
  }

  bool isValidate() {
    if (mobilectrl.text.isEmpty) {
      print("Mobile can not nbe empty.");
      showToast("Mobile can not nbe empty.");
      return false;
    } else if (mobilectrl.text.length < 10) {
      showToast("Mobile can not be less than 10 digt.");
      print("Mobile can not be less than 10 digt.");
      return false;
    }
    return true;
  }

  showToast(msg) {
    return Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        //  gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.orange.shade700,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void signin() {
    log("run");
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.verifyPhoneNumber(
        phoneNumber: "+91" + mobilectrl.text,
        verificationCompleted: (cred) {
          setState(() {
            isLoading = !isLoading;
          });
          log("complete");
        },
        verificationFailed: (e) {
          print("error bfound" + e.toString());
          showToast(e.message);
          setState(() {
            isLoading = !isLoading;
          });
        },
        codeSent: (String Verifyid, token) {
          setState(() {
            isLoading = false;
          });
          log("sent OTP");
          showToast("OTP sent to ${mobilectrl.text}");
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Verify(Verifyid)));
        },
        codeAutoRetrievalTimeout: (_) {});
  }
}



// TextField BuildTextField(TextEditingController controller, String label) {
//   return TextField(
//     controller: controller,
//     decoration: InputDecoration(
//       label: Text(label),
//       // labelStyle: TextStyle(color: Colors.blue),
//       focusedBorder: const UnderlineInputBorder(
//         borderSide: BorderSide(color: Colors.blue),
//       ),
//     ),
//   );
// }

// buildBottomBorder(var color) {
//   return Border(
//     bottom: BorderSide(
//       color: color,
//       width: 2,
//     ),
//   );
// }
