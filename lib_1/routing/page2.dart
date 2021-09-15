import 'package:course/routing/page3.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  static const nameRoute = "/page2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
        leading: Container(),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Page 2",
              style: TextStyle(fontSize: 50),
            ),
            Row(children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "<<<Back",
                    style: TextStyle(fontSize: 25),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(Page3.nameRoute);
                  },
                  child: Text(
                    "Next>>>",
                    style: TextStyle(fontSize: 25),
                  )),
            ])
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.arrow_right_alt),
      ),
    );
  }
}
