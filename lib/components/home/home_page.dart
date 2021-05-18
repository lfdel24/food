import 'package:flutter/material.dart';
import 'package:food/components/product/pages/product_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: _BuilderBody(),
    ));
  }
}

class _BuilderBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProductPage();
  }
}
