import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';

class ProductItem extends StatefulWidget {
  ProductItem(Key key, this.prodId, this.title, this.date) : super(key: key);

  final String prodId, title;

  final DateTime date;

  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  Color bgColor = Colors.blue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    List<Color> randomColor = [
      Colors.amber,
      Colors.black,
      Colors.green,
      Colors.yellow,
      Colors.grey,
      Colors.blue,
    ];

    bgColor = randomColor[Random().nextInt(randomColor.length)];
  }

  @override
  Widget build(BuildContext context) {
    var products = Provider.of<Products>(context, listen: false);
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: bgColor,
      ),
      title: Text("${widget.title}"),
      subtitle: Text(DateFormat.yMMMEd().format(widget.date)),
      trailing: IconButton(
        onPressed: () => products.deleteProduct(widget.prodId),
        icon: Icon(
          Icons.delete,
          color: Colors.red,
        ),
      ),
    );
  }
}
