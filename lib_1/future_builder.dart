import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FutureBuilder1 extends StatelessWidget {
  const FutureBuilder1({Key? key}) : super(key: key);

  Future<Map<String, dynamic>> getData() async {
    try {
      var url = Uri.parse("https://reqres.in/api/unknown/2");
      var result = await http.get(url);

      if (result.statusCode >= 200 && result.statusCode < 300) {
        var data = json.decode(result.body)["data"] as Map<String, dynamic>;
        return data;
      } else {
        throw (result.statusCode);
      }
    } catch (e) {
      throw (e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Builder"),
      ),
      body: FutureBuilder<Map>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.error != null) {
            print("error${snapshot.error}");
            return Center(
              child: Text(
                "${snapshot.error}",
                style: TextStyle(fontSize: 35),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            print("Waiting");
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            print(snapshot.data);
            return Column(
              children: [
                Text(
                  "${snapshot.data!["name"]}",
                  style: TextStyle(fontSize: 35),
                )
              ],
            );
          }
        },
      ),
    );
  }
}
