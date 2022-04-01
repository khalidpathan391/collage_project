import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'catgory.dart';

class Category extends StatefulWidget {
  Category() : super();

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List? data;

  _CategoryState() {
    getdata();
  }

  List<BaseCategory> p = [];
  Future<void> getdata() async {
    print("Bye........");
    var prm = {};
    // Starting App API Call.
    var response = await http
        .post(
            Uri.parse(
                "https://khancollege.000webhostapp.com/service_hub/fetch_cat_json.php"),
            body: null)
        .catchError((e) {
      if (e is SocketException) print("No internet connection");
    });
    var obj = jsonDecode(response.body);
    if (obj["result"] == "S") {
      print("Hello........");
      setState(() {
        data = obj["data"];
        int? l = data?.length;
        for (int x = 0; x < l!; x++) {
          p.add(BaseCategory(
              data![x]["id"], data![x]["catgory_name"], data![x]["pic"]));
        }
        print(p);
      });
    } else {
      setState(() {
        // isLoading = false;
        // error = "Student Class is not valid in the list";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width - 40;
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('SELECT CATEGORY'),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.teal,
      ),
      body: Container(
        // color: Colors.orange.shade200,
        child: Stack(
          children: [
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/el.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/pl.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/cl.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],

              //Slider Container properties
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            GridView.count(
              primary: false,
              padding: const EdgeInsets.only(top: 200, right: 20, left: 20),
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              crossAxisCount: 3,
              children: p.map((value) {
                return Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 8.0,
                          offset: Offset(5, 5))
                    ],
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Column(
                    children: [
                      Image.network(
                        'https://khancollege.000webhostapp.com/service_hub/' +
                            value.pic.toString().trim(),
                        height: 80,
                      ),
                      Text(value.catgory_name)
                    ],
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
