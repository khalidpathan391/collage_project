import 'package:collage_project/baseProduct.dart';
import 'package:collage_project/catgory.dart';
import 'package:flutter/material.dart';

class SubmitScreen extends StatefulWidget {
  List<BaseProduct> p = [];
  SubmitScreen(this.p);

  @override
  State<SubmitScreen> createState() => _SubmitScreenState();
}

class _SubmitScreenState extends State<SubmitScreen> {
  int itemsCounter = 0;
  double price = 0;
  double Amount = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for (int x = 0; x < widget.p.length; x++) {
      Amount = Amount + (int.parse(widget.p[x].price) * (widget.p[x].counter));
      itemsCounter = itemsCounter + widget.p[x].counter;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 216, 248, 248),
        body: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: widget.p.length,
                itemBuilder: (context, index) {
                  return widget.p[index].counter != 0
                      ? Card(
                          color: const Color(0xFFBCEBEB),
                          child: ListTile(
                            title: Column(
                              children: [
                                Text(widget.p[index].work),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 30,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            itemsCounter = itemsCounter -
                                                widget.p[index].counter;
                                            Amount = Amount -
                                                (widget.p[index].counter *
                                                    int.parse(
                                                        widget.p[index].price));
                                            widget.p[index].counter = 0;

                                            // Amount = Amount +
                                            //     (int.parse(
                                            //             widget.p[index].price) *
                                            //         (widget.p[index].counter));
                                            // itemsCounter = itemsCounter +
                                            //     widget.p[index].counter;
                                          });
                                        },
                                        child: Container(
                                          // decoration: BoxDecoration(
                                          //   //color: Colors.teal,
                                          //   borderRadius: BorderRadius.circular(0),
                                          //   border: Border.all(color: Colors.teal),
                                          // ),
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.all(3),
                                          child: Center(
                                            child: Icon(
                                              Icons.delete_outlined,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(children: [
                                  Text(
                                    "CATEGORY_ID:",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(widget.p[index].cat_id)
                                ]),
                                Row(children: [
                                  Text(
                                    "SUBCATEGORY_ID :",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(widget.p[index].sub_cat_id)
                                ]),
                                Row(children: [
                                  Text(
                                    "PRICE : ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(widget.p[index].price)
                                ]),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                            // leading: SizedBox(
                            //   width: 50,
                            //   height: 50,
                            //   // child: Image.network(''),
                            // ),

                            //  onTap: () {},
                          ),
                        )
                      : SizedBox();
                }),
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
                                fontSize: 18,
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
                              'Amount :${Amount} Rs',
                              style: TextStyle(
                                fontSize: 18,
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
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => SubmitScreen(p)));
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
                                fontSize: 18,
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
