import 'package:flutter/material.dart';

class ScaffoldBody extends StatefulWidget {
  @override
  _ScaffoldBodyState createState() => _ScaffoldBodyState();
}

class _ScaffoldBodyState extends State<ScaffoldBody> {
  bool _isSelected = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
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
              height: 15.0,
            ),
            cardContainer("assets/kal-visuals-644747-unsplash.jpg",
                "Whiskey in a teacup", true),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    materialChoice("Featured"),
                    SizedBox(height: 5.0),
                    _isSelected == true
                        ? Container(
                            height: 4.0,
                            width: "Featured".length * 10.0,
                            color: Colors.deepOrange,
                          )
                        : Container()
                  ],
                ),
                Column(
                  children: <Widget>[
                    materialChoice("All Categories"),
                    SizedBox(height: 5.0),
                    _isSelected == false
                        ? Container(
                            height: 4.0,
                            width: "All Categories".length * 10.0,
                            color: Colors.deepOrange,
                          )
                        : Container()
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            cardContainer("assets/nik-shuliahin-201330-unsplash.jpg",
                "Crazy Rich Asians", false),
            SizedBox(
              height: 15.0,
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
              height: 15.0,
            ),
            cardContainer("assets/nik-shuliahin-201330-unsplash.jpg",
                "Crazy Rich Asians", false),
          ],
        ),
      ),
    );
  }

  InkWell materialChoice(String text) {
    return InkWell(
      highlightColor: Colors.red,
      enableFeedback: true,
      customBorder: Border.all(style: BorderStyle.solid, width: 40.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      splashColor: Colors.amber,
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
    );
  }
}

Container cardContainer(String imageUrl, String name, bool progress) {
  return Container(
    height: 173.0,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 130.0,
                width: 130.0,
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
                margin: progress == true ? EdgeInsets.only(bottom: 10.0) : null,
                decoration: progress == true
                    ? BoxDecoration(
                        gradient: LinearGradient(
                        colors: [
                          Colors.yellow,
                          Colors.black,
                        ],
                      ))
                    : null,
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
