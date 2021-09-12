import 'package:course/routing/page2.dart';
import 'package:course/routing/page3.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  static const nameRoute = "/page1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      drawer: Drawer(
          child: Column(
        children: [
          Container(
            height: 150,
            padding: EdgeInsets.all(20),
            alignment: Alignment.bottomLeft,
            color: Colors.red,
            child: Text("Menu Pilihan",
                style: TextStyle(fontSize: 24, color: Colors.white)),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Page3()));
            },
            leading: Icon(
              Icons.photo_album,
              size: 30,
            ),
            title: Text(
              "Album",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.settings, size: 30),
            title: Text(
              "Setting",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      )),
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
