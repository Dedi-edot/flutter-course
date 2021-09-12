import 'package:course/routing/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  static const nameRoute = "/page1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: Center(
        child: Text(
          "Page 1",
          style: TextStyle(fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(Page2.nameRoute);
        },
        child: Icon(Icons.arrow_right_alt),
      ),
    );
  }
}
