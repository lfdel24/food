import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:food/components/custom/custom.dart';
import 'package:get/get.dart';

class CreateProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom.appBar(context, "Crear producto"),
      body: _BuilderBody(),
    );
  }
}

class _BuilderBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Custom.container(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12),
          InkWell(
            onTap: () {},
            child: ClipOval(
              child: Image.network(
                faker.image.image(random: true),
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 16),
          _BuilderCategory(),
          SizedBox(height: 16),
          TextField(
              autofocus: true,
              decoration: InputDecoration(labelText: "Nombre")),
          SizedBox(height: 16),
          TextField(decoration: InputDecoration(labelText: "Detalle")),
          SizedBox(height: 16),
          TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Precio")),
          SizedBox(height: 48),
          Row(
            children: [
              Custom.primaryTextButton("Aceptar", () => {}),
              SizedBox(width: 12),
              Custom.primaryTextButton("Cancelar", () => Get.back()),
            ],
          ),
        ],
      ),
    );
  }
}

class _BuilderCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
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
    );
  }
}
