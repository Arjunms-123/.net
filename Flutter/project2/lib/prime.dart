import 'package:flutter/material.dart';

class prime extends StatefulWidget {
  const prime({super.key});

  @override
  State<prime> createState() => _primeState();
}

class _primeState extends State<prime> {
  final first = TextEditingController();
  final second = TextEditingController();
  final _txtvalue = TextEditingController();
  String res = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(
            "Prime Numbers",
            style: TextStyle(color: Colors.black26),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                width: 200,
                child: TextField(
                  controller: first,
                  decoration: InputDecoration(
                      labelText: "Enter limit",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
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
                      labelText: "Enter limit",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 20,
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    int n1 = int.parse(first.text);
                    int n2 = int.parse(second.text);

                    setState(() {
                      res = findPrimesInRange(n1, n2);
                    });
                  },
                  child: const Text("Submit")),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                width: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 20,
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    setState(() {
                      first.clear();
                      second.clear();
                    });
                  },
                  child: const Text("Reset")),
            ]),
            const SizedBox(
              height: 30,
            ),
            Text(res.toString()),
          ],
        )));
  }
}

String findPrimesInRange(int start, int end) {
  List<int> primeNumbers = [];
  for (int number = start; number <= end; number++) {
    if (isPrime(number)) {
      primeNumbers.add(number);
    }
  }
  return primeNumbers.isNotEmpty
      ? "Prime numbers: ${primeNumbers.join(', ')}"
      : "No prime numbers found in this range.";
}

bool isPrime(int number) {
  if (number <= 1) return false;
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
