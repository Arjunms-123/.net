import 'package:flutter/material.dart';

class page7 extends StatelessWidget {
  page7({super.key});

  final List<String> _names = ["Karthika", "Ashli", "Sruthy", "Sree", "Ammu"];
  final List<String> _message = [
    "Haii...",
    "Call me...",
    "I miss you...",
    "I love you...",
    "Good Morning..."
  ];
  final List<String> _image = [
    "assets/cr71.jpg",
    "assets/cr72.jpg",
    "assets/cr73.jpg",
    "assets/cr74.jpg",
    "assets/iphone6pro.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            "Whatsapp",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child:ListView.separated(
            itemBuilder: (context,index)=>
            CardElement(name: _names[index], message: _message[index], image: _image[index]),
            itemCount: _names.length,
            separatorBuilder: (context,index)=>const Divider(thickness: 2,color:Colors.black,),)
        ));
  }
}

class CardElement extends StatelessWidget {
  String name = "";
  String message = "";
  String image = "";
  CardElement(
      {super.key,
      required this.name,
      required this.message,
      required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(name),
            subtitle: Text(message),
            leading: CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
          )
        ],
      ),
    );
  }
}
