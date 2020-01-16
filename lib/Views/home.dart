import 'package:flutter/material.dart';
import 'text_section.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextSection(Colors.red),
            TextSection(Colors.green),
            TextSection(Colors.blue),
            Text(
              'Hello World',
              textAlign: TextAlign.center,
            )
          ],
        ));
  }
}