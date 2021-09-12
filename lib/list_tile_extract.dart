import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class ListTilesExtract extends StatelessWidget {
  final faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Tile"),
      ),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return ChatItem(
                image: "https://picsum.photos/id/$index/200/300",
                title: faker.person.name(),
                subtitle: faker.lorem.sentence());
          }),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const ChatItem(
      {required this.image, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      title: Text(title),
      subtitle: Text(
        subtitle,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(image),
      ),
      trailing: Text("10:00 pm"),
    );
  }
}
