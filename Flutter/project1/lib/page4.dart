import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class page4 extends StatelessWidget {
  const page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(121, 0, 72, 255),
        title: Text(
          "Image display",
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("lib/assets/cr71.jpg"))),
      ),
    );
  }
}
