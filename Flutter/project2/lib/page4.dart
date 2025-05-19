import 'package:flutter/material.dart';

class page4 extends StatefulWidget {
  page4({super.key});

  @override
  State<page4> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<page4> {
  bool _hide = true;
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
                  decoration: InputDecoration(
                      labelText: "Enter name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      prefixIcon: const Icon(Icons.verified_user_sharp),
                      suffixIcon: const Icon(Icons.remove_red_eye_sharp)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 500,
                child: TextField(
                  obscureText: _hide,
                  decoration: InputDecoration(
                      labelText: "Enter Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      prefixIcon: const Icon(Icons.verified_sharp),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (_hide == true) {
                              _hide = false;
                            } else {
                              _hide = true;
                            }
                          });
                        },
                        icon: const Icon(Icons.remove_red_eye_sharp),
                      )),
                ),
              ),
            ],
          )),
        ));
  }
}
