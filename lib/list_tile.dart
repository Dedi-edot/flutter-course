import 'package:flutter/material.dart';

class ListTiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Tile"),
      ),
      body: ListView(
        children : [
          ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Text("Shandika Galih"),
            subtitle: Text(
              "This is subtitle kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            leading: CircleAvatar(),
            trailing: Text("10:00 pm"),
          ),
          Divider(
            color: Colors.black,
          ),ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Text("Shandika Galih"),
            subtitle: Text(
              "This is subtitle kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            leading: CircleAvatar(),
            trailing: Text("10:00 pm"),
          ),
          Divider(
            color: Colors.black,
          ),ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Text("Shandika Galih"),
            subtitle: Text(
              "This is subtitle kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            leading: CircleAvatar(),
            trailing: Text("10:00 pm"),
          ),
          Divider(
            color: Colors.black,
          )
        ]
      )
    );
  }
}
