import 'package:flutter/material.dart';
import 'themes/themes.dart';
import 'scaffold_body.dart';

void main() => runApp(MaterialApp(
      home: BasicApp(),
    ));

class BasicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldBody(),
    );
  }
}
