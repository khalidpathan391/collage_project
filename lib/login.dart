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
      backgroundColor: Colors.teal.shade100,
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
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.teal,
                      offset: Offset(0, 0),
                      blurRadius: 2,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white),
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextField(
                  controller: namectrl,
                  decoration: InputDecoration(
                      labelText: 'Enter User_Name', border: InputBorder.none),
                  //input decoration
                ), //textfield
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.teal,
                      offset: Offset(0, 0),
                      blurRadius: 2,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white),
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextField(
                  controller: namectrl,
                  decoration: InputDecoration(
                      labelText: 'Enter Password', border: InputBorder.none),
                  //input decoration
                ), //textfield
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
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
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Column(
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
                ),
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 130),
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
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()));
                  },
                  child: Text(
                    "Don't Have  account?  Click Here!",
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Second()));
              },
              child: Column(
                children: [
                  Container(
                    width: 120,
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.teal),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.teal,
                          offset: Offset(0, 0),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
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
