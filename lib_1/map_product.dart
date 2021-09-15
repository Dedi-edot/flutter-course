import 'dart:math';
import 'package:course/models/product.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class MapProduct extends StatelessWidget {
  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> dummyData = List.generate(100, (index) {
      return Product(
          faker.food.restaurant(),
          "https://picsum.photos/id/$index/200",
          10000 + Random().nextInt(100000),
          faker.lorem.sentence());
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Map Product"),
      ),
      body: GridView.builder(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: dummyData.length,
          itemBuilder: (context, index) {
            return GridTile(
              child: Image.network(dummyData[index].imgUrl),
              footer: Container(
                height: 80,
                color: Colors.green.withOpacity(0.8),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      dummyData[index].title,
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Rp. ${dummyData[index].harga}",
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      dummyData[index].desc,
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
