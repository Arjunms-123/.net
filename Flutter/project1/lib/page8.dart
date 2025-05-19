import 'package:flutter/material.dart';

class Page8 extends StatelessWidget {
  Page8({super.key});

  final List<String> _img = [
    "assets/nokia2.jpg",
    "assets/iphone16.jpg",
    "assets/nokia.jpg",
    "assets/nokia2.jpg",
    "assets/iphone6pro.jpg"
  ];

  final List<String> _name = [
    "@rtyhn_hef",
    "@egdhhn_jed",
    "@hjegdn_hhr",
    "@rtjed_kop",
    "@rejdhn_lop"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Instagram",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.home),
          ),
          IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
          IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: Column(
        children: [
          // Scrollable image container
          Container(
            color: Colors.yellow,
            height: 100,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _img.length,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.all(10),
                child: CircleAvatar(
                  backgroundImage: AssetImage(_img[index]),
                  radius: 60,
                ),
              ),
            ),
          ),

          Expanded(
              child: ListView.builder(
                  itemCount: _name.length,
                  itemBuilder: (context, index) =>
                      Carditems(img: _img[index], name: _name[index])))
        ],
      ),
    );
  }
}

class Carditems extends StatefulWidget {
  String img = "";
  String name = "";
  Carditems({super.key, required this.img, required this.name});
  @override
  State<Carditems> createState() => _CarditemsState();
}

class _CarditemsState extends State<Carditems> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        ListTile(
          title: Text(widget.name),
          leading: CircleAvatar(
            backgroundColor: Colors.red,
            backgroundImage: AssetImage(widget.img),
          ),
        ),
        Image(
          width: double.infinity,
          height: 350,
          image: AssetImage(widget.img),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget>[

            Row(
              children:<Widget>[
            IconButton(
              onPressed: (){},
              icon:const Icon(
              Icons.favorite,
              color:Colors.red,)),const Text("Like")
          ],
        ),
        Row(
                        children:<Widget>[
            IconButton(
              onPressed: (){},
              icon:const Icon(
              Icons.favorite,
              color:Colors.black,)),const Text("Comment")
          ],
        ),
                Row(
                        children:<Widget>[
            IconButton(
              onPressed: (){},
              icon:const Icon(
              Icons.favorite,
              color:Colors.lightBlueAccent,)),const Text("Share")
          ],
                )
          ],
        ),

        


      ],),
    );
  }
}
