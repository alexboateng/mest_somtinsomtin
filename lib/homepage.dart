// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Somtin Somtin"),
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int position) {
            Widget content = Container();
            if (position == 0) {
              content = _balanceView();
            } else {
              content = _discountView();
            }
            return content;
          }),
    );
  }

  Widget _discountView() {
    return Container(
      child: Text("_discountView"),
    );
  }

  Widget _balanceView() {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
              margin: EdgeInsets.only(bottom: 15),
              // constraints: BoxConstraints.expand(),
              // color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total Gift Voucher"),
                      Text(
                        "Price 10",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  // Expanded(child: Text("1")),
                  Text(
                    "Buy gift voucher",
                    style: TextStyle(
                        color: Colors.pink, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          const Icon(
            Icons.picture_in_picture_alt,
            size: 150,
          )
        ],
      ),
    );
  }
}
