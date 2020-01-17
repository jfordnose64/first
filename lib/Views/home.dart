import 'package:first/Views/second_page.dart';
import 'package:first/main.dart';
import 'package:flutter/material.dart';
import '../placeholder_widget.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

//API KEY === 'AIzaSyCcaOCYZc1DOhhjNEoWxIWlIpq9sPHC1Ew'

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.green),
    PlaceholderWidget(Colors.red),
    SecondPage()
    // PlaceholderWidget(Colors.green)
  ];
  String name = 'Bond';

  String CreateTitle() {
    return "The name is " + this.name;
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(this.CreateTitle()),
      // ),
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.home), title: new Text('Home')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.map), title: new Text('Map')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person), title: new Text('Account'))
        ],
      ),
    );
  }
}
