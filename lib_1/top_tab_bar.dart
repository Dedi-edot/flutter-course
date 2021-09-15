import 'package:flutter/material.dart';

class TopTabBar extends StatelessWidget {
  final List<Tab> myTab = [
    Tab(
      text: "Tab 1",
      icon: Icon(Icons.add_a_photo),
    ),
    Tab(
      text: "Tab 2",
      icon: Icon(Icons.person),
    ),
    Tab(
      text: "Tab 3",
      icon: Icon(Icons.camera),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: myTab.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Top Tab Bar"),
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
            // indicatorColor: Colors.green,
            // indicatorWeight: 5,
            // indicatorPadding: EdgeInsets.all(10),
            indicator: BoxDecoration(
              color: Colors.amber,
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,width: 5,
                )
              )
            ),
            tabs: myTab,),
        ),
        body: TabBarView(children: [
          Center(child: Text("Tab 1", style: TextStyle(fontSize: 25),),),
          Center(child: Text("Tab 2", style: TextStyle(fontSize: 25),),),
          Center(child: Text("Tab 2", style: TextStyle(fontSize: 25),),),
        ],),
      ),
    );
  }
}
