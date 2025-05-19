import 'package:flutter/material.dart';

class DatatransferView extends StatefulWidget {
  String name = "", email = "", phno = "";
  DatatransferView({super.key, required this.name, required this.email, required this.phno});

  @override
  State<DatatransferView> createState() => _datatransferviewState();
}

class _datatransferviewState extends State<DatatransferView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("DATA"),
        ),
        body: SafeArea(
            child: Center(
                child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text("Hello...${widget.name}",
                style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
            Text("Your email is : ${widget.email}",
                style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
            Text("Your phone number is : ${widget.phno}",
                style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
          ],
        ))));
  }
}
