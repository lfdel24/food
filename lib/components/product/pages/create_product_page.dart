import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:food/components/custom/custom.dart';
import 'package:get/get.dart';

class CreateProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Crear producto"),
      body: _BuilderBody(),
    );
  }
}

class _BuilderBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomBody(children: [
      _BuilderImage(),
      _BuilderCategory(),
      CustomTextField(
        labelText: "Código",
        autofocus: true,
        margin: EdgeInsets.only(top: 16, bottom: 16),
      ),
      CustomTextField(
        labelText: "Nombre",
        margin: EdgeInsets.only(top: 16, bottom: 16),
      ),
      CustomTextField(
        labelText: "Detalle",
        margin: EdgeInsets.only(top: 16, bottom: 16),
      ),
      _BuilderListPrice(),
      _BuilderButtons(),
    ]);
  }
}

class _BuilderButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: PrimaryTextButton(text: "Aceptar", onPressed: () {})),
        SizedBox(width: 16),
        Expanded(
            child: PrimaryTextButton(
                text: "Cancelar", onPressed: () => Get.back())),
      ],
    );
  }
}

class _BuilderListPrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Lista de precios"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                  19,
                  (index) => SecondaryTextButton(
                        text: faker.currency.random.numberOfLength(4),
                        onPressed: () {},
                      )),
            ],
          ),
        ),
        SizedBox(height: 48),
      ],
    );
  }
}

class _BuilderImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 8),
        child: InkWell(
          onTap: () {},
          child: Stack(
            children: [
              ClipOval(
                child: Image.network(
                  faker.image.image(random: true),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 52,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _BuilderCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: TextButton(
        onPressed: () => Get.defaultDialog(
            title: "CATEGORIAS",
            content: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...List.generate(
                        10,
                        (index) => ListTile(
                              title: Text(faker.lorem.random.string(10)),
                              onTap: () => Get.back(),
                            )),
                  ],
                ),
              ),
            )),
        child: Row(
          children: [
            Expanded(
              child: Text(
                "SELECCIONE UNA CATEGORIA",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Icon(Icons.keyboard_arrow_down),
          ],
        ),
      ),
    );
  }
}
