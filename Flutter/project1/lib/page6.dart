import 'package:flutter/material.dart';

class Page6 extends StatelessWidget {
  Page6({super.key});

  List<Color> Containercolor = [
    Colors.blueGrey,
    Colors.amberAccent,
    Colors.blue,
    Colors.cyan,
    Colors.deepOrange,
    Colors.green,
    Colors.orangeAccent,
    Colors.tealAccent
  ];

  List<Map<String, dynamic>> iphonedata = [
    {
      'title': 'Iphone14',
      'subtitle': 'qwertyuiopasdfghjkloiu',
      'trailing': '\$40000',
      'leading': "assets/iphone14.jpg"
    },
    {
      'title': 'Iphone16',
      'subtitle': 'qwerjhijewufdcjewoihfw',
      'trailing': '\$60000',
      'leading': "assets/iphone16.jpg"
    },
    {
      'title': 'Iphone16pro',
      'subtitle': 'qwerjhdshcshuddjdacjhfw',
      'trailing': '\$65000',
      'leading': "assets/iphone6pro.jpg"
    },
    {
      'title': 'nokia',
      'subtitle': 'qwerjhdshcshuddjdacjhfw',
      'trailing': '\$10000',
      'leading': "assests/nokia.jpg"
    },
    {
      'title': 'nokia',
      'subtitle': 'qwerjeyugdeydjhuddjdacjhfw',
      'trailing': '\$10000',
      'leading': "assests/nokia2.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "pages",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: iphonedata.length,
              itemBuilder: (context, index) => Card(
                    child: ListTile(
                        title: Text(iphonedata[index]["title"]),
                        subtitle: Text(iphonedata[index]["subtitle"]),
                        trailing: Text(iphonedata[index]["trailing"]),
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage(iphonedata[index]["leading"]),
                        ),),
                  ),),),
    );
  }
}
