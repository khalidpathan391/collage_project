import 'dart:developer';
import 'dart:io';

import 'package:collage_project/itemSubmit.dart';
import 'package:collage_project/widgitbuild.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'baseProduct.dart';

class Fetch extends StatefulWidget {
  const Fetch({Key? key}) : super(key: key);
  @override
  Work createState() => Work();
}

class Work extends State<Fetch> {
  bool isLoading = false;
  String error = "";

  List? data;

  int itemsCounter = 0;
  double price = 0;

  @override
  void initState() {
// TODO: implement initState
    super.initState();

    getdata();
  }

  List<BaseProduct> p = [];
  Future<void> getdata() async {
    var prm = {};

    // Starting App API Call.
    var response = await http
        .post(
            Uri.parse(
                "https://khancollege.000webhostapp.com/service_hub/fetch_work_json.php"),
            body: null)
        .catchError((e) {
      if (e is SocketException) print("No internet connection");
    });
    var obj = jsonDecode(response.body);
    if (obj["result"] == "S") {
      setState(() {
        data = obj["data"];
        int? l = data?.length;
        for (int x = 0; x < l!; x++) {
          p.add(BaseProduct(data![x]["id"], data![x]["cat_id"],
              data![x]["sub_cat_id"], data![x]["work"], data![x]["price"], 0));
        }
      });
    } else {
      setState(() {
        // isLoading = false;
        // error = "Student Class is not valid in the list";
      });
    }
  }

/********----FETCH ADD----**********/

  Future<void> Register(BaseProduct t) async {
    var data = {
      'id': t.id,
      'cat_id': t.cat_id,
      'sub_cat_id': t.sub_cat_id,
      'work': t.work,
      'price': t.price
    };
    var response = await http.post(
        Uri.parse(
            "https://khancollege.000webhostapp.com/service_hub/fetch_work_json.php"),
        body: json.encode(data));
    var obj = jsonDecode(response.body);
    if (obj['result'] == "S") {
      print("Record is Saved");
    } else {
      print("Record is not Saved");
    }
  }

/********************/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // drawer: Drawer(
        //   backgroundColor: Colors.teal,
        //   child: ListView(
        //     children: [
        //       DrawerHeader(
        //           decoration: BoxDecoration(
        //             color: Colors.white,
        //           ),
        //           child: Column(
        //             children: [
        //               Image.asset(
        //                 "assets/images/elect.png",
        //                 width: 100,
        //                 height: 100,
        //               ),
        //               Text(
        //                 "CREATED BY -> Khalid",
        //                 style: TextStyle(
        //                     color: Colors.black,
        //                     fontWeight: FontWeight.bold,
        //                     fontSize: 18),
        //               )
        //             ],
        //           )),
        //       Card(
        //         child: ListTile(
        //           leading: Icon(Icons.messenger),
        //           title: const Text(
        //             'My Profile',
        //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //           ),
        //           onTap: () {
        //             Navigator.pop(context);
        //           },
        //         ),
        //       ),
        //       Card(
        //         child: ListTile(
        //           leading: Icon(Icons.settings),
        //           title: const Text(
        //             'Setting',
        //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //           ),
        //           onTap: () {
        //             Navigator.pop(context);
        //           },
        //         ),
        //       ),
        //       Card(
        //         child: ListTile(
        //           leading: Icon(Icons.message),
        //           title: const Text(
        //             'About Us',
        //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //           ),
        //           onTap: () {
        //             Navigator.pop(context);
        //           },
        //         ),
        //       ),
        //       Card(
        //         child: ListTile(
        //           leading: Icon(Icons.help),
        //           // leading: Icon(),
        //           title: const Text(
        //             'Help & Support',
        //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //           ),
        //           onTap: () {
        //             Navigator.pop(context);
        //           },
        //         ),
        //       ),
        //       Card(
        //         child: ListTile(
        //           leading: Icon(Icons.privacy_tip),
        //           // leading: Icon(),
        //           title: const Text(
        //             'Privacy & Security',
        //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //           ),
        //           onTap: () {
        //             Navigator.pop(context);
        //           },
        //         ),
        //       ),
        //       SizedBox(
        //         height: 30,
        //       ),
        //       Center(
        //         child: ListTile(
        //           title: const Text(
        //             'Created BY - KHALID',
        //             style: TextStyle(
        //               fontSize: 14,
        //             ),
        //           ),
        //         ),
        //       )
        //     ],
        //   ),
        // ),
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text(
            'CATEGORIES',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.search),
            ),
            Icon(Icons.more_vert),
          ],
          backgroundColor: Colors.teal,
        ),
        backgroundColor: const Color(0xFFBCEBEB),
        body: Column(
          children: <Widget>[
            Expanded(
                child: ListView.builder(
              itemCount: data == null ? 0 : data?.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    title: Column(children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(children: [
                        Text(
                          "CATEGORY_ID:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(p[index].cat_id)
                      ]),
                      Row(children: [
                        Text(
                          "SUBCATEGORY_ID :",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(p[index].sub_cat_id)
                      ]),
                      Row(children: [
                        Container(
                          child: Text(
                            "WORK : ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(p[index].work)
                      ]),
                      Row(children: [
                        Text(
                          "PRICE : ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(p[index].price)
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 35,
                            width: 30,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  p[index].counter++;
                                  itemsCounter++;
                                  price = price + int.parse(p[index].price);
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  // color: Colors.teal,
                                  borderRadius: BorderRadius.circular(0),
                                  border: Border.all(color: Colors.teal),
                                ),
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(3),
                                child: Center(
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(3),
                            child: Center(
                              child: Text(
                                p[index].counter.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 35,
                            width: 30,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (p[index].counter != 0) {
                                    p[index].counter--;
                                    itemsCounter--;
                                    price = price - int.parse(p[index].price);
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  // color: Colors.teal,
                                  borderRadius: BorderRadius.circular(0),
                                  border: Border.all(color: Colors.teal),
                                ),
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(3),
                                child: Center(
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ]),
                  ),
                );
              },
            )),
            Stack(
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: () {
                          // itemsCounter = counter++;
                          setState(() {});
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                // color: Colors.teal,
                                // borderRadius: BorderRadius.circular(0),
                                // border: Border.all(color: Colors.teal),
                                ),
                            alignment: Alignment.center,
                            // padding: const EdgeInsets.all(8),
                            child: Text(
                              'Items : ${itemsCounter}',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                            decoration: BoxDecoration(
                                // color: Colors.teal,
                                // borderRadius: BorderRadius.circular(0),
                                // border: Border.all(color: Colors.teal),
                                ),
                            alignment: Alignment.center,
                            // padding: const EdgeInsets.all(8),
                            child: Text(
                              'Price :${price} Rs',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SubmitScreen(p)));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(1),
                              border: Border.all(color: Colors.teal),
                            ),
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(8),
                            child: const Text(
                              'Submit',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}

// // import 'package:flutter/material.dart';

// // class Work extends StatefulWidget {
// //   const Work({Key? key}) : super(key: key);

// //   @override
// //   State<Work> createState() => _WorkState();
// // }

// // class _WorkState extends State<Work> {
// //   @override
// //   String title = 'Floating App Bar';
// //   List l = ['Cat_id', 'Sub_cat_id', "Work", 'Price'];
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: title,
// //       home: Scaffold(

// //         // No appbar provided to the Scaffold, only a body with a
// //         // CustomScrollWork.
// //         body: CustomScrollWork(
// //           slivers: [
// //             // Add the app bar to the CustomScrollWork.
// //             SliverAppBar(
// //               // Provide a standard title.
// //               title: Text(title),

// //               flexibleSpace: FlexibleSpaceBar(
// //                   centerTitle: true,
// //                   title: Text("Collapsing Toolbar",
// //                       style: TextStyle(
// //                         color: Colors.white,
// //                         fontSize: 16.0,
// //                       )),
// //                   background: Image.asset(
// //                     "assets/images/pplumber.webp",
// //                     fit: BoxFit.cover,
// //                   )),

// //               // Allows the user to reveal the app bar if they begin scrolling
// //               // back up the list of items.
// //               floating: true,
// //               // Display a placeholder widget to visualize the shrinking size.

// //               // Make the initial height of the SliverAppBar larger than normal.
// //               expandedHeight: 200,
// //             ),
// //             // Next, create a SliverList
// //             SliverList(
// //               // Use a delegate to build items as they're scrolled on screen.
// //               delegate: SliverChildBuilderDelegate(
// //                 (context, index) => ListTile(title: Text('Item ${l[index]}')),
// //                 // Builds 1000 ListTiles
// //                 childCount: l.length,
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
