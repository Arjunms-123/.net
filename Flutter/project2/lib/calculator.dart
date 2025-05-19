import 'package:flutter/material.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  final first = TextEditingController();
  final second = TextEditingController();
  final sum = TextEditingController();
  final sub = TextEditingController();
  final mul = TextEditingController();
  final div = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            "Calculator",
            style: TextStyle(color: Colors.blue),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: first,
                    decoration: InputDecoration(
                      labelText: "Enter first number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: second,
                    decoration: InputDecoration(
                      labelText: "Enter second number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 20,
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    first.clear();
                    second.clear();
                    sum.clear();
                    sub.clear();
                    div.clear();
                    mul.clear();
                  });
                },
                child: const Text("Reset")),
            const SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 2,
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                    child: const Text("SUM")),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: sum,
                    decoration: InputDecoration(
                      labelText: "Sum",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 20,
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      int sum1 = int.parse(first.text) - int.parse(second.text);
                      setState(() {
                        sub.text = sum1.toString();
                      });
                    },
                    child: const Text("SUB")),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: sub,
                    decoration: InputDecoration(
                      labelText: "sub",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 20,
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      int sum1 = int.parse(first.text) * int.parse(second.text);
                      setState(() {
                        mul.text = sum1.toString();
                      });
                    },
                    child: const Text("MUL")),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: mul,
                    decoration: InputDecoration(
                      labelText: "mul",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 20,
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      int sum1 = int.parse(first.text) % int.parse(second.text);
                      setState(() {
                        div.text = sum1.toString();
                      });
                    },
                    child: const Text("DIV")),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: div,
                    decoration: InputDecoration(
                      labelText: "div",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        )));
  }
}
