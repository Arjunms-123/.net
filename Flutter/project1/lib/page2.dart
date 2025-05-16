import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(121, 0, 72, 255),
          title: Text(
            "My first page",
            style: TextStyle(
                color: const Color.fromARGB(255, 208, 255, 0),
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: IconButton(
            color: const Color.fromARGB(255, 92, 38, 255),
            onPressed: () {},
            icon: const Icon(Icons.access_alarms_outlined),
          ),
          actions: [
            IconButton(
              color: const Color.fromARGB(255, 0, 255, 136),
              onPressed: () {},
              icon: const Icon(Icons.account_balance_wallet_outlined),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.add_a_photo_rounded),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.zoom_out_map_outlined),
            ),
          ],
        ),
        body: SafeArea(
            child: Column(
          children: [
            TextButton(
                onPressed: () {}, child: const Text("This is a text button")),
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
        )));
  }
}
