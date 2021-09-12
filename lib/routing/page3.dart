import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  static const nameRoute = "/page3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 3"),),
        body: Center(
          child: Text("Page 3", style: TextStyle(fontSize: 50),),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.arrow_right_alt),),
    );
  }
}
