import 'package:flutter/material.dart';

class MappingListt extends StatefulWidget {
  const MappingListt({Key? key}) : super(key: key);

  @override
  _MappingListtState createState() => _MappingListtState();
}

class _MappingListtState extends State<MappingListt> {
  final List<Map<String, dynamic>> myList = [
    {
      "name": "Shandika",
      "age": 26,
      "favColor": ["black", "blue", "red"]
    },
    {
      "name": "Yusuf",
      "age": 36,
      "favColor": ["black", "blue", "red", "black", "blue", "red","black", "blue", "red", "black", "blue", "red"]
    },
    {
      "name": "Sarah",
      "age": 20,
      "favColor": ["black", "blue", "red", "pink", "black", "blue", "red", "black", "blue", "red"]
    },
    {
      "name": "Yusuf",
      "age": 36,
      "favColor": ["black", "blue", "red", "black", "blue", "red"]
    },
    {
      "name": "Shandika",
      "age": 26,
      "favColor": ["black", "blue", "red"]
    },
    {
      "name": "Yusuf",
      "age": 36,
      "favColor": ["black", "blue", "red", "black", "blue", "red","black", "blue", "red", "black", "blue", "red"]
    },
    {
      "name": "Sarah",
      "age": 20,
      "favColor": ["black", "blue", "red", "pink", "black", "blue", "red", "black", "blue", "red"]
    },
    {
      "name": "Yusuf",
      "age": 36,
      "favColor": ["black", "blue", "red", "black", "blue", "red"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mapping List")),
      body: ListView(
        children: myList.map((data) {
          List myFavColor = data["favColor"];
          return Card(
            margin: EdgeInsets.all(15),
            color: Colors.black26.withOpacity(0.1),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Row
                  Row(
                    children: [
                      CircleAvatar(),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${data["name"]}"),
                          Text("${data["age"]}"),
                        ],
                      )
                    ],
                  ),
                  //favColor
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: myFavColor.map((color) {
                        return Container(
                          color: Colors.amber,
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.all(8),
                          child: Text(color),
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
