import 'package:flutter/material.dart';

class ScaffoldBody extends StatefulWidget {
  @override
  _ScaffoldBodyState createState() => _ScaffoldBodyState();
}

class _ScaffoldBodyState extends State<ScaffoldBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/audible.jpg"),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Continue Listening...",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            cardContainer("assets/kal-visuals-644747-unsplash.jpg",
                "Whiskey in a teacup"),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                materialChoice("Featured"),
                materialChoice("All Categories"),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            cardContainer("assets/nik-shuliahin-201330-unsplash.jpg",
                "Crazy Rich Asians"),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Recommended for you",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            cardContainer("assets/nik-shuliahin-201330-unsplash.jpg",
                "Crazy Rich Asians"),
          ],
        ),
      ),
    );
  }
}

Material materialChoice(String text) {
  return Material(
    //elevation: 5.0,
    //shadowColor: Colors.blueAccent,
    child: InkWell(
      //highlightColor: Colors.red,
      customBorder: Border.all(style: BorderStyle.solid, width: 40.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      //splashColor: Colors.amber,
      onTap: () {},
    ),
  );
}

Container cardContainer(String imageUrl, String name) {
  return Container(
    height: 220.0,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 4.0,
                width: 150.0,
                margin: EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Colors.yellow,
                    Colors.black,
                  ],
                )),
              ),
              Text(
                name,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0),
              ),
            ],
          ),
        );
      },
    ),
  );
}
