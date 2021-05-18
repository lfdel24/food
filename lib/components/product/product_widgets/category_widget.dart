import 'package:flutter/material.dart';

class BuilderCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(left: 8, top: 8, bottom: 20),
        child: Row(
          children: [
            ...List.generate(
              10,
              (index) => Container(
                margin: EdgeInsets.only(right: 8),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      primary: index == 0 ? Colors.white : Colors.red,
                      backgroundColor: index == 0 ? Colors.red : Colors.white),
                  child: Text("Category $index"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
