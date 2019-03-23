import 'package:flutter/material.dart';
import 'themes/themes.dart';
import 'scaffold_body.dart';

void main() => runApp(MaterialApp(
      home: BasicApp(),
    ));

class BasicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasicAppStf();
  }
}

class BasicAppStf extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BasicAppState();
  }
}

class _BasicAppState extends State<BasicAppStf> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.orange),
              title: Text('Home'),
              backgroundColor: Colors.black
              //activeIcon: Icon(Icons.home),
              ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.orange),
            title: Text('Discover'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books, color: Colors.orange),
            title: Text('Library'),
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.shifting,
        //iconSize: 16.0,
        fixedColor: Colors.white,
        onTap: _tapChange,
      ),
    );
  }

  void _tapChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
