import 'package:flutter/material.dart';
import 'package:food/components/product/product_widgets/category_widget.dart';
import 'package:food/components/product/product_widgets/item_widget.dart';
import 'package:food/components/product/product_widgets/search_widget.dart';
import 'package:food/components/product/product_text.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ProductText.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuilderSearch(),
            BuilderCategory(),
            ...List.generate(50, (index) => BuilderItem()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text(ProductText.newProduct),
      ),
    );
  }
}
