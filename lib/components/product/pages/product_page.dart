import 'package:flutter/material.dart';
import 'package:food/components/custom/custom.dart';
import 'package:food/components/product/pages/product_widgets/item_widget.dart';
import 'package:food/components/product/pages/product_widgets/search_widget.dart';
import 'package:food/components/product/product_text.dart';
import 'package:food/components/product/pages/product_widgets/category_widget.dart';
import 'package:get/get.dart';

import 'create_product_page.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, ProductText.title, actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        )
      ]),
      body: CustomBody(children: [
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
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(CreateProductPage()),
        child: Icon(Icons.add),
      ),
    );
  }
}
