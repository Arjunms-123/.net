import 'package:flutter/material.dart';
import 'package:project1/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

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
        leading: Row(
          children: [
             IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.person_2_outlined),
            ),
            
            IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.person_2_outlined),
            ),
          ],
        ),
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.close),
          ),
          IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.forward),
          ),
          IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.account_box_sharp),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
                onPressed: () {}, child: const Text("This is a text button")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const page2()));
                },
             
                child: const Text("Example of elevated button"),
                style: ElevatedButton.styleFrom(
                    elevation: 20,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)))),
                        const SizedBox(
                          height: 20,
                        ),
            ElevatedButton(
                onPressed: () {},
                child: const Text("Example of elevated button"),
                style: ElevatedButton.styleFrom(
                    elevation: 20,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))))
          ],
        ),
      ),
    );
  }
}
