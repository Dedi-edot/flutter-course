import 'package:course/routing/page1.dart';
import 'package:course/routing/page3.dart';
import 'package:flutter/material.dart';
import 'routing/page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page1(),
      initialRoute: Page1.nameRoute,
      routes: {
        Page1.nameRoute : (context) => Page1(),
        Page2.nameRoute : (context) => Page2(),
        Page3.nameRoute : (context) => Page3(),
      },
    );
  }
}