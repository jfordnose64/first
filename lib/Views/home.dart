import 'package:first/Views/second_page.dart';
import 'package:flutter/material.dart';
import 'text_section.dart';
import '../placeholder_widget.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
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
      appBar: AppBar(
        title: Text(this.CreateTitle()),
      ),
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.home), title: new Text('Home')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.mail), title: new Text('Mail')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person), title: new Text('Account'))
        ],
        // ),
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.stretch,
        //   children: <Widget>[
        //     TextSection(Colors.red),
        //     TextSection(Colors.green),
        //     TextSection(Colors.blue),
        //     Text(
        //       'Hello World',
        //       textAlign: TextAlign.center,
        //     ),
        //   ],
      ),
    );
  }
}
