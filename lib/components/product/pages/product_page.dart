import 'package:flutter/material.dart';
import 'package:food/components/product/pages/product_widgets/item_widget.dart';
import 'package:food/components/product/pages/product_widgets/search_widget.dart';
import 'package:food/components/product/product_text.dart';
import 'package:food/components/product/pages/product_widgets/category_widget.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ProductText.title),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuilderSearch(),
          BuilderCategory(),
          SizedBox(height: 8),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...List.generate(50, (index) => BuilderItem()),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
