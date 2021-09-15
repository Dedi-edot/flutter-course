import 'package:flutter/material.dart';

class ListViews extends StatelessWidget {
  final List<Color> myColor = [Colors.red, Colors.black, Colors.blue, Colors.yellow];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView.builder(
          itemCount: myColor.length,
          itemBuilder: (context, index) {
            return Container(
              height: 300,
              width: 300,
              color: myColor[index],
            );
          }),
    );
  }
}
