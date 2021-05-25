import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

//TODO Crear categorias
//TODO Crear lista de precios
//TODO Funcionar el filtro de productos
//TODO Guardar la url de la imagen
