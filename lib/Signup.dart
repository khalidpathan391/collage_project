import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'Second.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  List genderList = ["Male", "Female", "Others"];
  List cityList = ["Lucknow", "Hardoi", "Kanpur", "Others"];
  TextEditingController namectrl = new TextEditingController();
  TextEditingController emailctrl = new TextEditingController();
  TextEditingController passctrl = new TextEditingController();
  TextEditingController repassctrl = new TextEditingController();
  TextEditingController phnctrl = new TextEditingController();
  String? city;
  String? gender;
  // TextEditingController cityctrl = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Signup"),
      // ),
      backgroundColor: Colors.teal.shade100,
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Container(
                      child: Column(
                        children: [
                          AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText('REGISTER HERE',
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: BuildTextField(namectrl, "Name"),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: BuildTextField(emailctrl, "E_Mail"),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: BuildTextField(passctrl, "Passaord"),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: BuildTextField(repassctrl, "Conform_Password"),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: BuildTextField(phnctrl, "Phone_Number"),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration:
                  BoxDecoration(border: buildBottomBorder(Colors.orange)),
              child: DropdownButton(
                  onChanged: (value) {
                    setState(() {
                      gender = value as String;
                    });
                  },
                  hint: Text(
                    "Gender",
                    style: TextStyle(color: Colors.teal),
                  ),
                  underline: Text(""),
                  isExpanded: true,
                  value: gender,
                  items: genderList.map<DropdownMenuItem<String>>((e) {
                    return DropdownMenuItem<String>(
                      child: Text(
                        e,
                        style: TextStyle(color: Colors.teal),
                      ),
                      value: e,
                    );
                  }).toList()),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration:
                  BoxDecoration(border: buildBottomBorder(Colors.orange)),
              child: DropdownButton(
                  onChanged: (value) {
                    setState(() {
                      gender = value as String;
                    });
                  },
                  hint: Text(
                    "City",
                    style: TextStyle(color: Colors.teal),
                  ),
                  underline: Text(""),
                  isExpanded: true,
                  value: city,
                  items: cityList.map<DropdownMenuItem<String>>((e) {
                    return DropdownMenuItem<String>(
                      child: Text(
                        e,
                        style: TextStyle(color: Colors.teal),
                      ),
                      value: e,
                    );
                  }).toList()),
            ),
            SizedBox(
              height: 40,
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
                    //  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.orange),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, 0),
                            blurRadius: 2,
                          ),
                        ]),
                    child: Center(
                      child: Text(
                        "Signup",
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

Border buildBottomBorder(var color) {
  return Border(
    bottom: BorderSide(
      color: color,
      width: 2,
    ),
  );
}

BuildTextField(TextEditingController controller, String label) {
  return Container(
    decoration: BoxDecoration(border: buildBottomBorder(Colors.orange)),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        label: Text(label),
        labelStyle: TextStyle(color: Colors.teal),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.orange),
        ),
      ),
    ),
  );
}
