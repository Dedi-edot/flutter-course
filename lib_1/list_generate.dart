import 'package:flutter/material.dart';

class ListGenerate extends StatelessWidget {
  final List<Widget> myList =
      List.generate(100, (index) => Text(
        "No. ${index + 1}",
        style: TextStyle(fontSize: 20),));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView(
          children:  myList,
          ),
    );
  }
}
