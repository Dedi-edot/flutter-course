import 'package:flutter/material.dart';

class ListViewSeparated extends StatelessWidget {
  final List<Color> myColor = [Colors.red, Colors.black, Colors.blue, Colors.yellow];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return Container(
              height: 50,
              color: Colors.green,
              child: Text(
                "No. ${index+1}",
                style: TextStyle(fontSize: 20),),
            );
          },
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
