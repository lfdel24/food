import 'package:flutter/material.dart';
import 'package:food/components/product/product_text.dart';

class BuilderSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        autofocus: true,
        decoration: InputDecoration(labelText: ProductText.search),
      ),
    );
  }
}
