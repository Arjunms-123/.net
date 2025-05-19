import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<page2> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(121, 255, 81, 0),
        title: Text(
          "My second page",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Click the button",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            count.toString(),
            style: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.yellow),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white),
                child: const Text("ADD"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count--;
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white),
                child: const Text("SUB"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count = 0;
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black),
                child: const Text("RES"),
              ),
            ],
          )
        ],
      ))),
    );
  }
}
