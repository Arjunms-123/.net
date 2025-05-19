import 'package:flutter/material.dart';

class page5 extends StatefulWidget {
  page5({super.key});

  @override
  State<page5> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<page5> {
  final first = TextEditingController();
  final second = TextEditingController();
  final sum = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(121, 255, 81, 0),
          title: Text(
            "Login page",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: Center(
              child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 500,
                child: TextField(
                  controller: first,
                  decoration: InputDecoration(
                    labelText: "Enter first number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 500,
                child: TextField(
                  controller: second,
                  decoration: InputDecoration(
                    labelText: "Enter second number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 20,
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    int sum1 = int.parse(first.text) + int.parse(second.text);
                    setState(() {
                      sum.text = sum1.toString();
                    });
                  },
                  child: const Text("Add")),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 500,
                child: TextField(
                  controller: sum,
                  decoration: InputDecoration(
                   
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
            ],
          )),
        ));
  }
}
