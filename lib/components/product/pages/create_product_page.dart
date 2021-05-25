import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:food/components/custom_widgets/custom_widgets.dart';

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
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      child: Column(children: [
        Expanded(
          child: Scrollbar(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _BuilderImage(),
                  _BuilderCategory(),
                  CustomTextField(
                    labelText: "Código",
                    autofocus: true,
                    margin: EdgeInsets.only(top: 12, bottom: 12),
                  ),
                  CustomTextField(
                    labelText: "Nombre",
                    margin: EdgeInsets.only(top: 12, bottom: 12),
                  ),
                  CustomTextField(
                    labelText: "Detalle",
                    margin: EdgeInsets.only(top: 12, bottom: 24),
                  ),
                  _BuilderListPrice(),
                ],
              ),
            ),
          ),
        ),
        _BuilderButtons(),
      ]),
    );
  }
}

class _BuilderButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomTextButton(child: Text("Aceptar"), onPressed: () {})),
        // SizedBox(width: 16),
        // Expanded(
        //     child: CustomTextButton(
        //         child: Text("Cancelar"), onPressed: () => Get.back())),
      ],
    );
  }
}

class _BuilderListPrice extends StatelessWidget {
  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("LISTA DE PRECIOS"),
            content: Container(
              width: 200,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...List.generate(
                        10,
                        (index) => ListTile(
                            title: Text(faker.lorem.random.string(10)),
                            onTap: () => Navigator.pop(context))),
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Lista de precios"),
        SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                  19,
                  (index) => CustomTextButton(
                        margin: EdgeInsets.only(right: 20),
                        buttonStyle: CustomTextButton.buttonStyleSecondary,
                        onPressed: () => _showDialog(context),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, bottom: 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(faker.lorem.word()),
                              Text(faker.currency.random.numberOfLength(4)),
                            ],
                          ),
                        ),
                      )),
            ],
          ),
        ),
        SizedBox(height: 12),
      ],
    );
  }
}

class _BuilderImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}

class _BuilderCategory extends StatelessWidget {
  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("CATEGORIASS"),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  ...List.generate(
                      10,
                      (index) => ListTile(
                            title: Text(faker.lorem.random.string(10)),
                            onTap: () => Navigator.pop(context),
                          )),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      child: TextButton(
        onPressed: () => _showDialog(context),
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
