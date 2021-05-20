import 'package:flutter/material.dart';
import 'package:food/components/product/product_text.dart';

class BuilderSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
          icon: Icon(Icons.search), labelText: ProductText.search),
    );
  }
}
