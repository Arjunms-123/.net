import 'package:flutter/material.dart';
import 'package:project2/datatransferview.dart';

class datatransfer extends StatefulWidget {
  const datatransfer({super.key});

  @override
  State<datatransfer> createState() => _datatransferState();
}

class _datatransferState extends State<datatransfer> {
  final name = TextEditingController();
  final email = TextEditingController();
  final phno = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Data Transfer",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Center(
                child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
                width: 300,
                child: TextField(
                  controller: name,
                  decoration: InputDecoration(
                    labelText: "Enter your name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 300,
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                    labelText: "Enter your E-mail",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 300,
                child: TextField(
                  controller: phno,
                  decoration: InputDecoration(
                    labelText: "Enter your phone number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 20,
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DatatransferView(
                          name:name.text,
                          email:email.text,
                          phno:phno.text,
                          )));
                },
                child: const Text("Submit"))
          ],
        ))));
  }
}
