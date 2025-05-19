import 'package:flutter/material.dart';

class Multiplication extends StatefulWidget {
  const Multiplication({super.key});

  @override
  State<Multiplication> createState() => _MultiplicationState();
}

class _MultiplicationState extends State<Multiplication> {
  final mul = TextEditingController();
  String res = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Multiplication",
          style: TextStyle(color: Colors.red),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 200,
              child: TextField(
                controller: mul,
                decoration: InputDecoration(
                  fillColor: Colors.blue,
                  hoverColor: Colors.lightGreenAccent,
                  labelText: "Enter the number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                int multi = int.parse(mul.text);
                int mult = 0;
                res = "";
                for (int i = 1; i <= 10; i++) {
                  mult = i * multi;
                  res += '$i * $multi = $mult\n';
                }
                setState(() {
                  res;
                });
              },
              child: const Text("Multiplication Table"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  mul.clear();
                  res = "";
                });
              },
              child: const Text("Clear"),
            ),
            Text(res.toString()),
          ],
        ),
      ),
    );
  }
}
