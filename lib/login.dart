import 'package:flutter/material.dart';

import 'Second.dart';
import 'Signup.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController namectrl = new TextEditingController();
  TextEditingController pasctrl = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/5.png",
                        height: 150,
                        width: 150,
                      ),
                      SizedBox(
                        width: 30,
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signup()));
                          },
                          child: Text(
                            "Don't Have  account?  Click Here!",
                            style: TextStyle(
                                color: Color.fromARGB(255, 4, 8, 226),
                                fontSize: 15),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Signup Here!",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: TextField(
                  controller: namectrl,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 185, 210, 240),
                    filled: true,
                    border: OutlineInputBorder(),
                    labelText: 'Enter User_Name',
                  ), //input decoration
                ), //textfield
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: TextField(
                  controller: pasctrl,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 193, 218, 248),
                    filled: true,
                    border: OutlineInputBorder(),
                    labelText: 'Enter Password',
                  ), //input decoration
                ), //textfield
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 25,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(188, 228, 219, 219),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.check,
                        color: Colors.black,
                        size: 15,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Remember me",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 160),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Forgot Password ?:",
                            style: TextStyle(color: Colors.black),
                          ),
                        )),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Second()));
              },
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 185, 210, 240),
                    border: Border.all(color: Color.fromARGB(255, 76, 91, 175)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
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
