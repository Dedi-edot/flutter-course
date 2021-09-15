import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class DismissibleList extends StatelessWidget {
  final Faker faker = Faker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible"),
      ),
      body: ListView.builder(
          itemCount: 100,
          padding: EdgeInsets.all(8),
          itemBuilder: (context, index) {
            return Dismissible(
                key: Key(index.toString()),
                direction: DismissDirection.endToStart,
                background: Container(
                  alignment: Alignment.centerRight,
                  color: Colors.red,
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.delete),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Center(
                      child: Text("${index + 1}"),
                    ),
                  ),
                  title: Text(faker.person.name()),
                  subtitle: Text(faker.lorem.sentence()),
                ),
                );
          }),
    );
  }
}
