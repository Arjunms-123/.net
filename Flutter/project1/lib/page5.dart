import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  Page5({super.key});

  List<Color> Containercolor = [
    Colors.blueGrey,
    Colors.amberAccent,
    Colors.blue,
    Colors.cyan,
    Colors.deepOrange,
    Colors.green,
    Colors.orangeAccent,
    Colors.tealAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Container color",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: Containercolor.length,
              itemBuilder: (context, index) => Container(
                    width: double.infinity,
                    height: 100,
                    color: Containercolor[index],
                  ))),
    );
  }
}
