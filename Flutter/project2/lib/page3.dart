import 'package:flutter/material.dart';

class page3 extends StatefulWidget {
  page3({super.key});

  @override
  State<page3> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<page3> {
  final _textvalue = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(121, 255, 81, 0),
          title: Text(
            "My second page",
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
                  controller: _textvalue,
                  decoration: InputDecoration(
                      labelText: "Enter name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(_textvalue.text.toString()),
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
                    setState(() {
                      _textvalue.text;
                    });
                  },
                  child: const Text("Submit"))
            ],
          )),
        ));
  }
}
