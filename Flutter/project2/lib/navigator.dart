import 'package:flutter/material.dart';
import 'package:project2/prime.dart';

class navigator extends StatelessWidget {
  const navigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(121, 255, 81, 0),
        title: Text(
          "My first page",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to Page 6 (ensure Page6 is defined)
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const prime()),
                );
              },
              style: ElevatedButton.styleFrom(
                elevation: 20,
                backgroundColor: Colors.white,
                foregroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text("Go to Page 2"),
            ),
          ],
        ),
      ),
    );
  }
}


