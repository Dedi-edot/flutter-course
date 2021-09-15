// import 'package:course/list_generate.dart';
// import 'package:course/list_tile_extract.dart';
// import 'package:course/mapping_list.dart';
// import 'package:course/gridview.dart';
// import 'package:course/dismissible_list.dart';
import 'package:course/future_builder.dart';
// import 'package:course/map_product.dart';
// import 'package:course/show_dialog.dart';
// import 'package:course/text_field.dart';
// import 'package:course/top_tab_bar.dart';
// import 'package:course/statefull.dart';
// import 'package:course/list_tile.dart';
// import 'package:course/list_view_separated.dart';
// import 'list_view.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder1(),
    );
  }
}