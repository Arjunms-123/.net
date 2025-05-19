import 'package:flutter/material.dart';
import 'package:project1/page3.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(121, 255, 81, 0),
          title: Text(
            "Image display",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: Row(
            children: [
              IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: const Icon(Icons.person_2_outlined),
              ),
            ],
          ),
          actions: [
            IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.account_box_sharp),
            ),
          ],
        ),
        body: const SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image(
                  image: AssetImage("Flutter\project1\lib\page1.dart"),
                  height: 200,
                  width: 200,
                )
              ],
            ),
          ),
        ));
  }
}
