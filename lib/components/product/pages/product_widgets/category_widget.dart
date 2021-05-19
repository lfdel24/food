import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class BuilderCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...List.generate(
              15,
              (index) => Container(
                margin: EdgeInsets.only(right: 8),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      primary: index == 0 ? Colors.white : Colors.red,
                      backgroundColor: index == 0 ? Colors.red : Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(faker.lorem.word()),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
