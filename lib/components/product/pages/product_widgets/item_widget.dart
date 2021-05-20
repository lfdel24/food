import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class BuilderItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.network(
            faker.image.image(random: true),
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              faker.lorem.word(),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(faker.lorem.word()),
            Text(faker.currency.random.decimal(min: 3).toString()),
          ],
        ),
      ],
    );
  }
}
