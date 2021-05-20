import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:food/components/custom_widgets/custom_widgets.dart';
import 'package:food/components/product/product_text.dart';
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
        _BuilderSearch(),
        _BuilderCategory(),
        SizedBox(height: 8),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...List.generate(100, (index) => _BuilderItem()),
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

class _BuilderSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
          icon: Icon(Icons.search), labelText: ProductText.search),
    );
  }
}

class _BuilderCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...List.generate(
              15,
              (index) => TextButton(
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
          ],
        ),
      ),
    );
  }
}

class _BuilderItem extends StatelessWidget {
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
