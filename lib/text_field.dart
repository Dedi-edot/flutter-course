import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  const TextInput({Key? key}) : super(key: key);

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  TextEditingController myController = TextEditingController();
  var input = "Input";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(input),
          TextField(
            controller: myController,
            onChanged: (event) {
              setState(() {
                input = event;
              });
            },
            onSubmitted: (event) {
              print("On Submit ${myController.text}");
            },
            onEditingComplete: () {
              print("Editting Complete");
            },
          )
        ],
      ),
    );
  }
}
