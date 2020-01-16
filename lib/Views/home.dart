import 'package:flutter/material.dart';

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
            Container(
              decoration: BoxDecoration(color: Colors.red),
              child: Text('Yes'),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('No'),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.green),
              child: Text('Maybe'),
            ),
          ],
        ));
  }
}
