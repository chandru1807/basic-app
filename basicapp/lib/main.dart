import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: BasicApp(),
    ));

class BasicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BasicApp'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
