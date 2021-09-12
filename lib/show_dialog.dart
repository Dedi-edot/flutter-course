import 'package:flutter/material.dart';

class ShowDialogu extends StatefulWidget {
  @override
  _ShowDialoguState createState() => _ShowDialoguState();
}

class _ShowDialoguState extends State<ShowDialogu> {
  var input = "Belum ada Inputan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show Dialog"),
      ),
      body: Center(
        child: Text(
          input,
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Confirm"),
                  content: Text("Are you sure for this action?"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            input = "Inputan dibatalkan";
                          });
                          Navigator.of(context).pop("Cancel");
                        },
                        child: Text("No")),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            input = "Inputan dikonfirmasi";
                          });
                          Navigator.of(context).pop("Confirm");
                        },
                        child: Text("Yes")),
                  ],
                );
              }).then((value) => print("Print Then = $value"));
        },
        child: Icon(Icons.bubble_chart),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
