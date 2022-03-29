import 'package:flutter/material.dart';

import 'catgory.dart';

class Second extends StatefulWidget {
  Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  List<BaseCategory> p = [];
  Future<void> getdata() async {
    var prm = {};
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          child: ListView(
            children: [
              GridView.count(
                primary: false,
                padding: const EdgeInsets.only(top: 200, right: 20, left: 20),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 3,
                children: p.map((value) {
                  return Container(
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
                        // Image.network(
                        //     'https://echogarden.000webhostapp.com/E_COM_ONLINE_BARGAINING/' +
                        //         value.pic.toString().trim()),
                        Text(value.name)
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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
