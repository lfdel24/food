import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:food/components/custom_widgets/custom_widgets.dart';
import 'package:food/components/product/product_text.dart';

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
      body: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(8),
        child: Column(children: [
          _BuilderSearch(),
          _BuilderCategory(),
          _BuilderItem(),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => CreateProductPage())),
        child: Icon(Icons.add),
      ),
    );
  }
}

class _BuilderSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        autofocus: true,
        decoration: InputDecoration(
            icon: Icon(Icons.search), labelText: ProductText.search),
      ),
    );
  }
}

class _BuilderCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16, bottom: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...List.generate(
              15,
              (index) => CustomTextButton(
                  margin: EdgeInsets.only(right: 12),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, bottom: 1),
                    child: Text(faker.lorem.word()),
                  ),
                  onPressed: () {}),
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
    return Expanded(
      child: Scrollbar(
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (_, index) => Container(
            margin: EdgeInsets.only(top: 6),
            child: Row(
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text("${faker.lorem.words(1)}"),
                    Text(faker.currency.random.decimal(min: 4).toString()),
                    Divider()
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
