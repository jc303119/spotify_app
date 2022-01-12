import 'package:flutter/material.dart';

class YourLibrary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Text(
      'YourLibrary',
      style: TextStyle(fontSize: 40, color: Colors.yellowAccent),
    ));
  }
}
