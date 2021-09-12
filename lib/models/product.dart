import 'package:flutter/material.dart';

class Product {
  @required late String title;
  @required late String imgUrl;
  @required late int harga;
  @required late String desc;

  Product(this.title, this.imgUrl, this.harga, this.desc);
}
