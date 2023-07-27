// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class types_app extends StatelessWidget {
  const types_app({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 10),
            Container(
                width: 350,
                height: 100,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 197, 161, 181),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    border: Border.all(
                      width: 2,
                      color: Color.fromARGB(255, 134, 160, 170),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 2,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Jeans",
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 85),
                    ClipOval(
                      child: Image(
                        image: AssetImage("assets/js.jpg"),
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,

                      ),
                    ),
                    SizedBox(width: 40),
                  ],
                )),
            ////////////////////////////////////
            SizedBox(height: 20),
            Container(
                width: 350,
                height: 100,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 197, 161, 181),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    border: Border.all(
                      width: 2,
                      color: Color.fromARGB(255, 134, 160, 170),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 2,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Skirts",
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 85),
                    ClipOval(
                      child: Image(
                        image: AssetImage("assets/sk.jpg"),
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 40),
                  ],
                )),

            /////////////////////////////////////////
            SizedBox(height: 20),
            Container(
                width: 350,
                height: 100,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 197, 161, 181),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    border: Border.all(
                      width: 2,
                      color: Color.fromARGB(255, 134, 160, 170),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 2,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Bijames",
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 70),
                    ClipOval(
                      child: Image(
                        image: AssetImage("assets/bi_1.jpg"),
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 40),
                  ],
                )),
            ////////////////////
            SizedBox(height: 20),
            Container(
                width: 350,
                height: 100,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 197, 161, 181),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    border: Border.all(
                      width: 2,
                      color: Color.fromARGB(255, 134, 160, 170),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 2,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Jackets",
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 70),
                    ClipOval(
                      child: Image(
                        image: AssetImage("assets/ja.jpg"),
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 40),
                  ],
                )),
          ]),
        ),
      ),
    );
  }
}
