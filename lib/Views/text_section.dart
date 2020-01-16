import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final Color _color;

  TextSection(this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: _color,
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          borderRadius: BorderRadius.circular(25)),
      child: Text(
        'String',
        textAlign: TextAlign.center,
      ),
      padding: EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(
          left: 40.0, right: 40.0, top: 20.0, bottom: 20.0),
    );
  }
}
