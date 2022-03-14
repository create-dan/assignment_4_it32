// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Assignment 4",
          style: TextStyle(fontSize: 28, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height: 10),
          MyListTile(img: 'img1', name: 'Spider-Man No way home'),
          MyListTile(img: 'img2', name: 'Harry Potter and Deathly Hallows'),
          MyListTile(img: 'img3', name: 'The Batman'),
          MyListTile(img: 'img4', name: 'Attack on Titan'),
          MyListTile(img: 'img5', name: 'Bahubali The Beginning'),
          MyListTile(img: 'img6', name: 'Money Heist (La Casa De Papel)'),
          MyListTile(img: 'img7', name: 'Doctor Strange Multiverse of Madness'),
          MyListTile(img: 'img8', name: 'Pirates of Caribbean'),
        ],
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile({
    Key? key,
    required this.name,
    required this.img,
  }) : super(key: key);

  final String name, img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(0xff80ACF5),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black),
        ),
        child: ListTile(
          title: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: "Ubuntu",
            ),
          ),
          leading: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(300),
              border: Border.all(width: 2, color: Colors.pink),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(300),
              child: Icon(
                Icons.add,
                color: Colors.red,
              ),
            ),
          ),
          onTap: () {
            // Fluttertoast.showToast(msg: name);
          },
        ),
      ),
    );
  }
}
